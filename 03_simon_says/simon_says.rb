def echo(x)
	x
end

def shout(x)
	x.upcase
end

def repeat(x, n=2)	
	n.times.collect {x}.join(' ')
end

def start_of_word(x, n=1)
	x[0..(n-1)]
end

def first_word(x)
	x.split[0]
end

def titleize(word)
	word.capitalize!
	words = word.split(" ")
	words.each do |x|
		x.capitalize! unless ["the", "and", "over"].include? x
	end
	words.join(" ")
end