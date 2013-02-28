# ruby-ified version from LetterGame
def getLetterScore(letter)
	case letter
	when 'E' 
		return 1
	when 'A' 
		return 1
	when 'I' 
		return 1
	when 'O' 
		return 1
	when 'N' 
		return 1
	when 'R' 
		return 1
	when 'T' 
		return 1
	when 'L' 
		return 1
	when 'S' 
		return 1
	when 'U' 	
		return 1
	when 'D' 
		return 2
	when 'G' 
		return 2

	when 'B' 
		return 3
	when 'C' 
		return 3
	when 'M' 
		return 3
	when 'P' 
		return 3

	when 'F' 
		return 4
	when 'H' 
		return 4
	when 'V' 
		return 4
	when 'W' 
		return 4
	when 'Y' 
		return 4

	when 'K' 
		return 5
	when 'J' 
		return 8
	when 'X' 
		return 8
	when 'Q' 
		return 10
	when 'Z' 
		return 10
	when '*' 
		return 0
	
	else 
		return 0
	end
 end