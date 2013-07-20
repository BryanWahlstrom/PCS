class Robot
  def name
    @name ||= "#{letters}#{numbers}"
  end

  def reset
    @name = nil
  end

  def letters
    alphabet.shuffle[1..2].join('')
  end

  def numbers
    100 + rand(899)
  end

  def alphabet
    ('A'..'Z').to_a
  end

end

require 'minitest/autorun'




robot = Robot.new
robot2 = Robot.new
puts robot.name
robot.reset
puts robot.name

puts robot2.name
