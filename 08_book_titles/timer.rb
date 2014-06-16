class Timer
	attr_writer :seconds, :minutes, :hours

	def initialize
		@seconds = 0
		@minutes = 0
		@hours = 0
	end

	def time_string
		pad(hours) + ":" + pad(minutes) + ":" + pad(seconds)
	end

	def seconds
		@seconds % 60
	end

	def minutes
		@seconds / 60 % 60
	end

	def hours
		@seconds / 60 / 60 
	end

private

	def pad(number)
		"%02d" % number
	end

end



# class Timer
# 	attr_reader :seconds, :minutes, :hours

# 	def initialize
# 		@seconds, @minutes, @hours = 0, 0, 0
# 	end

# 	def time_string
# 		pad(hours) + ":" + pad(minutes) + ":" + pad(seconds)
# 	end

# 	def seconds=(seconds)
# 		@seconds = seconds % 60
# 		self.minutes = seconds
# 	end

# 	def minutes=(minutes)
# 		@minutes = minutes % 60
# 	end

# 	def hours=(hours)
# 		@hours = hours
# 	end

# private

# 	def pad(number)
# 		"%02d" % number
# 	end


# end
