=begin
  get number of bottles
  countdown from highest num
  when num = 1, change line
  when num 0 change again
=end

class Beer
  def self.song
    puts "How many bottles you got bro?"
    bottles = Integer(gets)
    bottles.downto(0) do |bottle|
      if bottle == 1
        puts "#{bottle} of beer on the wall"
      elsif bottle == 0
        puts "Dude you're wasted. Go home."
      else
        puts "#{bottle} bottles"
      end
    end
    return "What a party dude... Woah."
  end
end