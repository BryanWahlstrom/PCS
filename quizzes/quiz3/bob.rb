class Bob
  def respond(statement)
    if statement.empty?
     "Fine, be that way."
    elsif statement == statement.upcase
     "Woah, chill out."
    elsif statement == statement.downcase
      "Speak up bro."
    elsif statement =~ /[?]$/
     "Sure."
    else "Whatever."
    end
  end

  # def question

end

require 'minitest/autorun'

class BobTest < MiniTest::Unit::TestCase

  def setup
    @bob = Bob.new
  end

  def test_bob_answers_silence
    response = @bob.respond("")
    assert_equal "Fine, be that way.", response
  end

  def test_bob_answers_yell
    response = @bob.respond("HI")
    assert_equal "Woah, chill out.", response
  end

  def test_bob_answers_whisper
    response = @bob.respond("hi")
    assert_equal "Speak up bro.", response
  end

  def test_bob_answers_question
    response = @bob.respond("Hi?")
    assert_equal "Sure.", response
  end

  def test_bob_answers_statement
    response = @bob.respond("Hi")
    assert_equal "Whatever.", response
  end

end