#prints 1-100
#if multiple of 3, print fizz
#if multiple of 5, print buzz
#if both, print fizz buzz

class FizzBuzz
  def self.countdown
    # puts "What is your number?"
    # top_num = Integer(gets)
    1.upto(top_num) do |num|
      if num % 15 == 0
        puts "FizzBuzz"
      elsif num % 3 == 0
        puts "Fizz"
      elsif num % 5 == 0
        puts "Buzz"
      else
        puts num
      end
    # end
      return "Booyah sucka!"
  end
end
end
