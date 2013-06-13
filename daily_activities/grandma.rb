class Grandma
  def respond(statement)
    if statement == statement.upcase && statement == "BYE"
      return
    elsif statement == statement.upcase
      return "NO, NOT SINCE #{1930+rand(20)}"
    else statement
      return "HUH? SPEAK UP, SONNY!"
    end
  end
end

require 'minitest/autorun'

class GrandmaTest < MiniTest::Unit::TestCase
  def setup
    @grandma = Grandma.new
    @year = 1930+rand(20)
  end

  def test_yell_other_than_bye
    response = @grandma.respond("HI")
    assert_match /NO, NOT SINCE/, response
  end

  def test_normal_tone
    response = @grandma.respond("How's it going Grams?")
    assert_equal "HUH? SPEAK UP, SONNY!", response
  end

  def test_yell_bye
    response = @grandma.respond("BYE")
    assert_equal nil, response
  end
end

