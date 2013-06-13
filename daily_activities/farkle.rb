class DiceSet
  def roll(n)
    @values = (1..n).map { rand(6) + 1 }
  end

  def keep(input)
    user prompt for keep dice?
    @input = gets.chomp
    @values.include?(@input)
    somehow push @input to @keepers array
    @keepers = ()
  end

  def score

  end
end