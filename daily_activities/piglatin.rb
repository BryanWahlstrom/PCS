def pig(word)
  if word =~ /^[aeiou]/i
    return word+"ay"
  else
    head = word.slice(0)
    tail = word.slice(1..-1)
    return tail+head+"ay"
  end
end


require 'minitest/autorun'

class PigLatinTest < MiniTest::Unit::TestCase

  def test_consonant_at_start
    assert_equal 'appyhay', pig('happy')
  end


  def test_vowel_at_start
    assert_equal 'eggay', pig('egg')
  end

end