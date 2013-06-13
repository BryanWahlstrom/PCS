class Beer
  attr_reader :beers

def initialize beers
  @beers = beers
end

def song
(beers-1).times do
  puts "#{@beers} bottles of beer on the wall, #{@beers} bottles of beer."
  @beers = @beers-1
  puts "Take one down and pass it around, #{beers} bottles of beer on the wall."
  puts ""
end
 if beers == 1
    puts "One bottle of beer on the wall, one bottle of beer."
    puts "Take one down and pass it around, no more beers on the wall."
    puts ""
  beers == 0
    puts "No more bottles of beer on the wall, no more bottles of beer"
    puts "Go to the store and buy some more, 99 bottles of beer on the wall."
  end
end

end

my_beer = Beer.new(9)
my_beer.song