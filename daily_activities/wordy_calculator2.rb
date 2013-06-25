class Calculator
  def ask(question)
    question.match(/What is (-?\d+) (plus|minus|multiplied by|divided by) (-?\d+)?/) do |m|
      if m[2] == 'plus'
        m[1].to_i + m[3].to_i
      elsif m[2] == 'minus'
        m[1].to_i - m[3].to_i
      elsif m[2] == 'multiplied by'
        m[1].to_i * m[3].to_i
      elsif m[2] == 'divided by'
        m[1].to_i / m[3].to_i
      else false
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
    assert_equal 2, @calculator.ask('What is 1 plus 1?')
  end

  def test_subtract_1
    assert_equal 2, @calculator.ask('What is 3 minus 1?')
  end

  def test_multiply_1
    assert_equal 2, @calculator.ask('What is 2 multiplied by 1?')
  end

  def test_divide_1
    assert_equal 3, @calculator.ask('What is 3 divided by 1?')
  end

  def test_add_2
    assert_equal 3, @calculator.ask('What is 1 plus 2?')
  end

  def test_subtract_2
    assert_equal 1, @calculator.ask('What is 3 minus 2?')
  end

  def test_multiply_2
    assert_equal 4, @calculator.ask('What is 2 multiplied by 2?')
  end

  def test_divide_2
    assert_equal 2, @calculator.ask('What is 4 divided by 2?')
  end

  def test_add_more_digits
    assert_equal 45801, @calculator.ask('What is 123 plus 45678?')
  end

  def test_subtract_more_digits
    assert_equal 45555, @calculator.ask('What is 45678 minus 123?')
  end

  def test_multiply_more_digits
    assert_equal 56088, @calculator.ask('What is 123 multiplied by 456?')
  end

  def test_divide_more_digits
    assert_equal 123, @calculator.ask('What is 56088 divided by 456?')
  end

  def test_add_negative_numbers
    assert_equal (-11), @calculator.ask('What is -1 plus -10?')
  end

  def test_subtract_negative_numbers
    assert_equal (9), @calculator.ask('What is -1 minus -10?')
  end

  def test_multiply_negative_numbers
    assert_equal (10), @calculator.ask('What is -1 multiplied by -10?')
  end

  def test_divide_negative_numbers
    assert_equal (-5), @calculator.ask('What is -10 divided by 2?')
  end
end
