class Calculator
  def ask(question)
    if question.match(/What is (-?\d+) plus (-?\d+) plus (-?\d+)?/) do |m|
      m[1].to_i + m[2].to_i + m[3].to_i
      end
    elsif question.match(/What is (-?\d+) plus (-?\d+)?/) do |m|
        m[1].to_i + m[2].to_i
      end
    end
  end
end

require 'minitest/autorun'

class CalculatorTest < MiniTest::Unit::TestCase

  def setup
    @calculator = Calculator.new
  end

  def test_add_1
    assert_equal 3, @calculator.ask('What is 1 plus 1 plus 1?')
  end

  def test_add_2
    skip
    assert_equal 3, @calculator.ask('What is 1 plus 2?')
  end

  def test_add_more_digits
    skip
    assert_equal 45801, @calculator.ask('What is 123 plus 45678?')
  end

  def test_add_negative_numbers
    skip
    assert_equal (-11), @calculator.ask('What is -1 plus -10?')
  end

end
