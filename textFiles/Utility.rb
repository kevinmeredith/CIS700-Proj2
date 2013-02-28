load 'GetLetterScore.rb'

# find average score for 6 and 7 letter words
def findAverageScoreFor6And7LetterWords() 
	map = Hash.new
	File.open('dictionary.txt').each_line{ |s|
		word = s.split(',').last.chomp
		# if word has 6 or 7 letters
		if (6..7).include?(word.length)
			sum = 0
			word.split("").each do |letter|
				sum += getLetterScore(letter)
			end
			map[word] = sum
		end
		
		if word.length == 7
			map[word] += 50
		end
	}
	total_sum = 0
	map.each { |key, value|
		total_sum += value
	}
	avg = total_sum / map.length
	
	puts map
	puts "average score for 6-7 letters: " + avg.to_s
	
	findLetterValues(map, avg)
end

# Given a map of [words, scores], produce a 
# map of [letter (a ... z), avg score for 6-7 letters MINUS 
# sum of scores of each word with letter / # of words with letter)
def findLetterValues(map, average_score)
	# for each letter
	mapLetters = Hash.new
	('A'..'Z').each do |letter|
		sum = 0
		arr = []
		map.each { |key, value|
			if key.include?(letter)
				sum += value
				arr.push(key)
			end
		}
		if arr.length > 0
			mapLetters[letter] = (sum / arr.length - average_score)
		end
	end
	puts mapLetters
end

findAverageScoreFor6And7LetterWords()
#findLetterValues()

