class Birthday
  def initialize
    puts "What year were you born in?"
      @year = gets.chomp
    puts "What month (number not name please)?"
      @month = gets.chomp
    puts "What day (number not name please)?"
      @day = gets.chomp
    @age = puts Time.mktime(@year, @month, @day)
  end

  def age_now
    @age_now = Time.now - @age
  end

end

