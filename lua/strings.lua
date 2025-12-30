--[[String Operations]]
--To get the length of a string we place the `#` symbol in front of it.
local str = "my name"
print(#str)

-- String Concatenation: We use the double dots `..` for Concatenation, just like we use `+` in JavaScript.
local fname = "Franklin"
local lname = "Obiukwu"
print(fname .. " " .. lname)

-- To convert values to string, use the `tostring()` function
local age = 30
print(type(age))
print(type(tostring(age)))

-- Escape Characters
print('Hello\nWorld!!!\tI am "Steve\\Netsu"')

-- The String library
print(string.lower(fname)) -- Makes all characters lowercase
print(string.upper(fname)) -- Makes all characters uppercase

print(string.len(fname)) -- Output: length of string
print(string.sub(fname, 2, 5)) -- Output: rank

-- ASCII code and Characters conversion
print(string.char(65)) -- Output: A
print(string.byte("a")) -- Output: 97
print(string.byte(fname, 2, 5)) -- Output: 114     97      110     107

-- Repeat a String
print(string.rep(fname, 5, "=>")) -- Output: Franklin=>Franklin=>Franklin=>Franklin=>Franklin

-- String Formatting
print(string.format("pi: %.3f\nMy age: %i", math.pi, "25")) -- Output:pi: 3.142
-- My age: 25

-- string.find() returns the position of a stream of characters in a string
print(string.find(fname, "rank")) --Output:2       5

-- string.match() returns a stream of character if it finds it in provided string or nil
print(string.match(fname, "rank")) -- Output: rank

local begin, ending = string.find(fname, "rank")

print("Begin: " .. begin .. "\nEnd: " .. ending)

-- Sbstitute characters in string
print(string.gsub(fname, "rank", "ood"))
