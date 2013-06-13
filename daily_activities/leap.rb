#if %4 == 0 return true
#unless if %100 == 0 return false
#unless if %400 == 0 return true

class Year
  def initialize (year)
    @year = year
  end

  def leap?
    if @year%4 != 0
      return false
    elsif @year%100 == 0 && @year%400 !=0
      return false
    else
      return true
    end
  end
end

puts "1996 #{Year.new(1900).leap?}"
puts "1997 #{Year.new(2000).leap?}"