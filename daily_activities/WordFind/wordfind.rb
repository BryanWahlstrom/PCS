def find_words( puzzle, words)
	results = Array.new()

  words.each do |word|
    puzzle.each do |row|
      if row.include?(word)
        results.push(word)
      end
    end
  end

  words.each do |word|
    puzzle.each do |row|
      if row.include?(word.reverse)
        results.push(word)
      end
    end
  end



# stage 2

# make each row into an array
# scan each row for first char of each word
# if found, search row above and below at same row[index] for second char
#   if found search for third char?




	# puzzle is an array of strings
	# words is an array of strings

	# find words in puzzle in eight directions

	# output in results array of strings:
	# WORD(row,column,direction) format

	# your code here!

	return results
end