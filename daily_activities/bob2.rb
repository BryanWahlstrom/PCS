require 'test/unit'
class Teen
  def respond(statement)
    if statement == statement.upcase && statement.include?("?")
      return "Woah, chill out."
    elsif statement.include?("?")
      return "Sure."
    elsif statement == ""
      return "Fine, be that way."
    elsif statement == statement.upcase
      return "Woah, chill out."
    else "Whatever."
    end
  end
end

class TeenTest < Test::Unit::TestCase
  def setup
    @bob = Teen.new
  end

  def test_bob_answers_yell
    response = @bob.respond("HI")
    assert_equal response,"Woah, chill out."
  end

  def test_bob_answers_question
    response = @bob.respond("Hi?")
    assert_equal "Sure.", response
  end

  def test_bob_answers_statement
    response = @bob.respond("Hi")
    assert_equal "Whatever.", response
  end

  def test_bob_answers_silence
    response = @bob.respond("")
    assert_equal "Fine, be that way.", response
  end

  def test_bob_answers_yell_question
    response = @bob.respond("HI?")
    assert_equal "Woah, chill out.", response
  end

end

