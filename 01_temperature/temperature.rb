
def ftoc(f)
	((f.to_f - 32.0) / (9.0/5)).ceil
end

def ctof(c)
	((c.to_f * (9/5.0)) + 32.0).ceil
end
