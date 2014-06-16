def add (x, y)
	x + y
end

def subtract(x, y)
	x - y
end

def sum(array)
	array.inject(0) do |sum,x|
		sum + x.to_i
	end
end
