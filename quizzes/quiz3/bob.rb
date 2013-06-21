#Despite satisfying the requirements of this exam, I still feel my knowledge of
#testing and Ruby in general is a bit juvenile and naive, and definitely nowhere
#near a "professional" level. I definitely need to work on all of this more.

class Bob
  def respond(statement)
    if statement.empty?
     "Fine, be that way."
    elsif statement == statement.upcase && statement =~ /[?]$/
     "Maybe if you toned it down a lil."
    elsif statement == statement.downcase && statement =~ /[?]$/
      "Maybe if I could hear you."
    elsif statement == statement.upcase
     "Woah, chill out."
    elsif statement == statement.downcase
     "Speak up bro."
    elsif statement =~ /[?]$/
     "Sure."
    else "Whatever."
    end
  end

end

require 'minitest/autorun'
require 'mocha/setup'  #installed mocha gem to try to run mocks/stubs in MiniTest

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

  def test_bob_answers_shouted_question
    response = @bob.respond("HI?")
    assert_equal "Maybe if you toned it down a lil.", response
  end

  def test_bob_answers_whispered_question
    response = @bob.respond("hi?")
    assert_equal "Maybe if I could hear you.", response
  end

  def test_traditional_mocking
    bob = mock('bob')
    bob.expects(:respond).with(:statement).returns(:result)
    assert_equal :result, bob.respond(:statement)
  end

  def test_stub
    bob = stub(:respond => :result)
    assert_equal :result, bob.respond
  end

end