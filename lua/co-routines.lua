--[[
--Co-routines are like asyn/await functions in JavaScript.
--It can suspend it's execution mid way, waiting for another function
--to complete execution before it continues
--]]
--
local routine_1 = coroutine.create(function()
	for i = 1, 10, 1 do
		print("Routine 1: " .. i)
		if i == 5 then
			coroutine.yield() -- This `yield` suspends the code execution
		end
	end
end)

local co_fxn = function()
	for i = 11, 20 do
		print("Routine 2: " .. i)
	end
end

local routine_2 = coroutine.create(co_fxn)

--[[Co-routines don't start or resume execution without expressly instructing it to, using 
--`coroutine.resume()` method]]
print(coroutine.status(routine_1))
coroutine.resume(routine_1)
print(coroutine.status(routine_1))
coroutine.resume(routine_2)
coroutine.resume(routine_1)
-- `coroutine.status()` returns the status of a coroutine => running | suspended | active | dead
print(coroutine.status(routine_1))

if coroutine.status(routine_1) == "suspended" then
	coroutine.resume(routine_1)
end
