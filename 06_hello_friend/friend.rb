class Friend

	def greet(name=nil)
		if name == nil
			"Hello !"
		else
			"Hello #{name}!"
		end
	end
end