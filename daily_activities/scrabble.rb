class Scrabble
  def self.score(word)
    puts "Enter word:"
    word = gets.chomp
    char_array = word.upcase.split(//)
    sum = 0
    char_array.each do |i|
      if i.include?(points |k, v| v)
        sum + k
      elsif i.
  end
end

points = {1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
          2 => ["D", "G"],
          3 => ["B", "C", "M", "P"],
          4 => ["F", "H", "V", "W", "Y"],
          5 => ["K"],
          8 => ["J", "X"],
          10 => ["Q", "Z"]
        }