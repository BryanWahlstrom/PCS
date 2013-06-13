puts "Say something to Bob:"

while true
input = gets.chomp
  if input.include?("?")
    puts "Sure."
  elsif input == ""
    puts "Fine, be that way."
  elsif input == input.upcase
    puts "Woah, chill out."
  elsif input == "Bye" || input == "bye"
    break
  else puts "Whatever."
  end
end