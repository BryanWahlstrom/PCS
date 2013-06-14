# I had to troubleshoot quite a few errors and problems in order to get this to work.
# I totally understand boolean evals? and the diff between []s and {}s.
# I am working hard to better understand iteration and things like .each

class PigLatinPronouncer   #creating a class
  def initialize word    #instance method
    @word = word         #instance variable
  end

  def pig
    ending = 'ay'         #local variable
    if @word =~ /^[aeiou]/i   #using 'if' and regex
      return "#{@word} in Pig Latin is pronounced #{@word}#{ending}."   # string interpolation
    else
      @head = @word.slice(0).downcase
      @tail = @word.slice(1..-1)
      return "#{@word} in Pig Latin is pronounced #{@tail}#{@head}#{ending}."  #using return
    end
  end

  B = PigLatinPronouncer.new 'Bryan'  #class method
  puts B.pig

end


require 'minitest/autorun'   #took all sorts of troubleshooting to get this working!

class PigLatinPronouncerTest < MiniTest::Unit::TestCase

  def setup
    @word1 = PigLatinPronouncer.new 'Happy'
    @word2 = PigLatinPronouncer.new 'egg'
  end

  def test_consonant_at_start
    assert_equal 'Happy in Pig Latin is pronounced appyhay.', @word1.pig
  end


  def test_vowel_at_start
    assert_equal 'egg in Pig Latin is pronounced eggay.', @word2.pig
  end

end