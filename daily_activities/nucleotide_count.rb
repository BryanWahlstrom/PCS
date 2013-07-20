# Write a class DNA that takes a DNA string. It should have two ways of telling us how many times each nucleotide occurs in the string: #count(nucleotide) and #nucleotide_count.

# dna = DNA.new("ATGCTTCAGAAAGGTCTTACG")

# dna.count('A')
# # => 6

# dna.count('T')
# # => 6

# dna.count('G')
# # => 5

# dna.count('C')
# # => 4

# dna.count('U') # Uracil is a nucleotide that is used in RNA
# # => 0

# dna.nucleotide_counts
# # => {'A' => 6, 'T' => 6, 'G' => 5, 'C' => 4}
# The code should raise an argument error if you try to count something that isn't a nucleotide.

# dna.count('S')
# # dna.rb:23:in 'count': That's not a nucleotide, silly! (ArgumentError)
# Sample Dataset

# s = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"
# dna = DNA.new(s)
# dna.nucleotide_counts
# # => {'A' => 20, 'T' => 21, 'G' => 17, 'C' => 12}

class DNA
  def initialize(string)
    @string = string
  end

  def count(nucleotide)
    if valid?(nucleotide)
      @string.count('#{nucleotide}')
    else
      puts "That's not a nucleotide, silly"
    end
  end

  def nucleotide_counts
    counts = {}
    %w(A T C G).each do |letter|
      counts[letter] = count(letter)
    end
    counts
  end

  def valid?(nucleotide)
    nuc_array = ['A', 'T', 'C', 'G', 'U']
    nuc_array.include?(nucleotide)
  end
end

require 'minitest/autorun'
require 'minitest/pride'

class DNATest < MiniTest::Unit::TestCase
  def test_empty_dna_string_has_no_adenosine
    assert_equal 0, DNA.new('').count('A')
  end

  def test_empty_dna_string_has_no_nucleotides
    expected = {'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0}
    assert_equal expected, DNA.new("").nucleotide_counts
  end

  def test_repetitive_cytidine_gets_counted
    assert_equal 5, DNA.new('CCCCC').count('C')
  end

  def test_repetitive_sequence_has_only_guanosine
    expected = {'A' => 0, 'T' => 0, 'C' => 0, 'G' => 8}
    assert_equal expected, DNA.new('GGGGGGGG').nucleotide_counts
  end

  def test_counts_only_thymidine
    assert_equal 1, DNA.new('GGGGGTAACCCGG').count('T')
  end

  def test_dna_has_no_uracil
    assert_equal 0, DNA.new('GATTACA').count('U')
  end

  def test_validates_nucleotides
    assert_raises ArgumentError do
      DNA.new("GACT").count('X')
    end
  end

  def test_counts_all_nucleotides
    s = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"
    dna = DNA.new(s)
    expected = {'A' => 20, 'T' => 21, 'G' => 17, 'C' => 12}
    assert_equal expected, dna.nucleotide_counts
  end
end