# gigasec = Time.new(1982, 06, 29) + 1000000000
# puts gigasec.to_s

class Birthday
  def ask
    puts 'Hey, when were you born? (Please use YYYYMMDD format.)'
    input = gets.chomp
      b_year = input[0..3].to_i
      b_month = input[4..5].to_i
      b_day = input[6..7].to_i
      birthday = Time.new(b_year, b_month, b_day)
      puts "You will turn one billion seconds old on #{birthday + 10**9}"
  end
end






