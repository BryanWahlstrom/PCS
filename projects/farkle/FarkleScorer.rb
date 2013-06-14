
# POINTS.each do |key, value|
#   if keepers.each == 1
#     if keepers(key).length <= 2
#       sum += keepers.each(key).length * value
#     elsif keepers(key).length == 3
#       sum += 1000
#     end
#   elsif keepers.each(key) == 5
#     if keepers(key).length <= 2
#       sum += keepers.each(key).length * value
#     elsif keepers(key).length == 3
#       sum += keepers.each(key) * 10
#     end
#   elsif keepers.each(key) == (2 || 3 || 4 || 6) && keepers(key).length == 3
#     sum += keepers.each(key) * 100
#   else return sum
#   end
# end



class FarkleScorer

  keepers = [1, 2, 3, 4, 5, 6]


  def self.score(keepers)
    @array1 = keepers.select {|x| x == 1}
    @array2 = keepers.select {|x| x == 2}
    @array3 = keepers.select {|x| x == 3}
    @array4 = keepers.select {|x| x == 4}
    @array5 = keepers.select {|x| x == 5}
    @array6 = keepers.select {|x| x == 6}

    points = {
      1 => 100,
      5 => 50,
      2 => 2,
      3 => 3,
      4 => 4,
      6 => 6
      }


    sum = 0
    if @array1.length <= 2
      sum += (@array1.length * points[1])
    elsif @array1.length == 3
      sum += 1000
    end
    if @array5.length <= 2
      sum += (@array5.length * points[5])
    elsif @array5.length == 3
      sum += (points[5]*10)
    end
    if @array2.length

    end

  end


end
  p FarkleScorer.score([1,1,1,3,4,5])

# require 'minitest/autorun'

# class FarkleTest < MiniTest::Unit::TestCase

#   def test_array1s
# end
# end
