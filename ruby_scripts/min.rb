def min(x,y)
	if sub(x,y) == 0
		return x
	else
		return y
	end
end

def coolmin(x,y)
	# y - (y - x)
	sub(y,sub(y,x))
end

def sub(x,y)
	y.times do |i|
		if x > 0
			x = x - 1
		else
			break
		end
	end
	return x
end
