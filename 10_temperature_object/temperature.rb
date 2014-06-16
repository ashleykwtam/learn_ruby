class Temperature
	attr_reader :c, :f
	alias_method :to_fahrenheit, :f
	alias_method :to_celsius, :c

	def initialize(attributes = {})
		if attributes[:f]
			@f = attributes[:f]
			@c = Temperature.ftoc(@f)
		elsif attributes[:c]
			@c = attributes[:c]
			@f = Temperature.ctof(@c)
		end
	end

	def self.in_celsius(c)
		self.new({ :c => c })
	end

	def self.in_fahrenheit(f)
		self.new({ :f => f })
	end

private

	def self.ftoc(f)
		((f - 32.0) / (9.0/5)).ceil
	end

	def self.ctof(c)
		((c * (9/5.0)) + 32.0).ceil
	end

end


class Celsius < Temperature
	def initialize(c)
		super({ :c => c }) 
	end
end


class Fahrenheit < Temperature
	def initialize(f)
		super({ :f => f })
	end
end





