class Calculator
  def ask(question)
    question.match(/What is (-?\d+) (plus|minus) (-?\d+)( (plus|minus) (-?\d+))?/) do |m|
      if m[5] == 'plus' || m[5] == 'minus'
        if m[2] == 'plus' && m[5] == 'plus'
          m[1].to_i + m[3].to_i + m[6].to_i
        elsif m[2] == 'plus' && m[5] == 'minus'
          m[1].to_i + m[3].to_i - m[6].to_i
        elsif m[2] == 'minus' && m[5] == 'minus'
          m[1].to_i - m[3].to_i - m[6].to_i
        elsif m[2] == 'minus' && m[5] == 'plus'
          m[1].to_i - m[3].to_i + m[6].to_i
        else
          puts "Not a valid question"
        end
      else
        if m[2] == 'plus'
          m[1].to_i + m[3].to_i
        elsif m[2] == 'minus'
          m[1].to_i - m[3].to_i
        else
          puts "Not a valid question"
        end
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

  def test_add_1_twice
    assert_equal 3, @calculator.ask('What is 1 plus 1 plus 1?')
  end

  def test_subtract_1
    assert_equal 0, @calculator.ask('What is 1 minus 1?')
  end

  def test_subtract_1_twice
    assert_equal (-1), @calculator.ask('What is 1 minus 1 minus 1?')
  end

  # def test_subtract_1
  #   assert_equal 2, @calculator.ask('What is 3 minus 1?')
  # end

  # def test_add_2
  #   assert_equal 3, @calculator.ask('What is 1 plus 2?')
  # end

  # def test_subtract_2
  #   assert_equal 1, @calculator.ask('What is 3 minus 2?')
  # end

  # def test_add_more_digits
  #   assert_equal 45801, @calculator.ask('What is 123 plus 45678?')
  # end

  # def test_subtract_more_digits
  #   assert_equal 45555, @calculator.ask('What is 45678 minus 123?')
  # end

  # def test_add_negative_numbers
  #   assert_equal (-11), @calculator.ask('What is -1 plus -10?')
  # end

  # def test_subtract_negative_numbers
  #   assert_equal (9), @calculator.ask('What is -1 minus -10?')
  # end

end
