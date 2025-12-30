--[[
-- For Loop
--]]
for i = 10, 1, -1 do
	print(i)
end

print("Second For Loop")

local start_val, end_val, step_val = 1, 10, 1

for i = start_val, end_val, step_val do
	print(i)
end

print("Array comming up ...")
-- Loop through an array
local arr = { 2, 8, 61, 92, 20, 40, 90, 101 }

for i = 1, #arr do
	print(arr[i])
end

--[[
--WHILE LOOP
--]]

print("\n\nWhile Loop World\n")
local peeps = 10

while peeps > 0 do
	print("We have " .. peeps .. " peeps now")
	peeps = peeps - 1
end

--[[
--Repeat Loop
--]]
local i = 0
repeat
	print("Hello Everybody!!")
	i = i + 1
until i == 10
-- The main differnce between the repeat/until and while/do loops is that repeat/until runs atleast once in any scenario
