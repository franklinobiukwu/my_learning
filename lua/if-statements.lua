local age = 15
local name = "Frank"

-- Greater than
if age > 17 then
	print("You may enter, this " .. age .. " year old boy.")
end

-- Less than
if age < 10 then
	print("This is a todler.")
end

-- AND
if age > 17 and age < 60 then
	print("You are " .. age .. " years old. That's within range. You may enter")
end

-- AND
if (name == "Frank") and (age == 15) then
	print(name .. " is " .. age .. " years old, and can enter")
end

-- OR
if (name == "Frank") or (age == 18) then
	print("Just enter man.")
end

-- NOT Equal
if age ~= 60 then
	print("You aren't a sinior citizen.")
end

-- NOT
if not (age > 20) then
	print("Small pikin detected")
end

--[[IF ELSE]]
if age > 17 and age < 20 then
	print("You're above 17")
elseif age > 20 then
	print("You're above 20")
else
	print("Young man, go to bed.")
end

-- Ternery Operation
local old = age > 30 and true or false -- Is age greater than 30? If true, true (true and true is true) gets stored in variable (true or false is evaluated), if false, (false or false is evaluated)false get's stored

print(old)
