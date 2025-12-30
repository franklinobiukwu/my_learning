local function sum_nums(a, b)
	a = a or 2
	b = b or 1
	local res = a + b
	return res
end

print(sum_nums())
print(sum_nums(5, 10))
print()

-- Recursion
local function count_up(start_num, end_num)
	if start_num < end_num then
		local new_num = start_num + 1
		print(new_num)
		count_up(new_num, end_num)
	end
end

count_up(1, 10)
print()

-- Anonymous function
local count_call = function()
	local times_called = 0

	return function()
		times_called = times_called + 1
		return times_called
	end
end

local func_count = count_call()

print(func_count())
print(func_count())
print(func_count())
print(func_count())

--[[Function with multiple arguments]]
local function sum_nums_infinity(...)
	local sums = 0
	for key, value in pairs({ ... }) do -- `pairs` gives the `key` and `value` set
		print(key, value)
		sums = sums + value
	end
	return sums
end

sum_nums_infinity(12, 21, 13, 40, 5)
