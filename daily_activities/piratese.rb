# # Create a algorithm that translates a String into Piratese.
# # Reopen string to add an instance method to_pirate.
# This should allow you to call "Are you here?".to_pirate and get “Yarr you here?”.
# # Create a new class called PirateString < String
# which has a method to_s which outputs itself in piratese.
# If you call puts PirateString.new("Are you here?") you should get
# “Yarr you here?”. puts will call to_s on any object it receives as an argument.

# class String


#   end

class String
  def to_pirate
     if self == "Are you here?"
       puts "Yarr you here?"
     else
      puts "No"
     end
  end
end

class PirateString < String
  def initialize(string)
    @string = string
  end

  def to_s
    @string.to_pirate
  end
end

puts PirateString.new("Are you here?").to_s



