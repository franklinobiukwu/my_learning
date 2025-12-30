--[[
--Creating modules: A module is a lua file that returns
--a single table when called
--]]

_G.myMath = {}

function myMath.add(x, y)
	return (x + y)
end

-- Subtract
function myMath.sub(x, y)
	return (x - y)
end

-- Loop
function myMath.looper(x)
	j = 0
	for i = 1, tonumber(x) do
		j = j + i
	end
	return j
end

-- Power
function myMath.power(x, y)
	return (x ^ y)
end

return myMath
