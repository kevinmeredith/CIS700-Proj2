def test()
	puts (6..7).include?(5)
	puts (6..7).include?(6)
	puts (6..7).include?(7)
	puts (6..7).include?(8)
end

def test2(str)
	puts str
	puts str.chomp
end

def test3()
	map = Hash.new
	map[1] = 2
	puts map
	map[1] += 2
	puts map
end

#test()
#test2("abcd/n")
test3()
