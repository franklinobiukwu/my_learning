-- This is a comment. Lua uses double dashes for single line comments.
--[[ For multiple line comments, you uses
--double dashes and double square brackets]]

-- Print Command to print things to screen
print("Hello, Franklin")
name = "Bisola"
print(name)

--[[Data Types in Lua:
--nil
--number  1 1.24  0.1 44
--string  'Hello' "Hello"
--boolean true  false
--table]]
--

-- How to create variable:
--  To create variable we use the keyword `local`
--  Naming convension: Your variable names must not start with a number, quote, or special characters. You can use a combination of numbers, letters, and underscore
local man = "Ugonna"

print(man)

-- Using variable in print: To use a variable in a string, you have to use double quote (not single), an two dots
local person = "Frank"
print("" .. person .. " is a boy. " .. person .. " loves to build stuff, that makes him a builder. --" .. person .. "")

print(man .. " " .. person)

-- To know the type of a value, use the `type` keyword
local str = "men"
print(type(str)) -- output: string

-- Convert String to number
local num = "37"
print(type(tonumber(num))) -- output: number

-- Maths on Lua
-- [[Lua uses same math operators as other programming languages:
--  + => Addition
--  - => Subtraction
--  / => Division
--  * => Multiplication
--  % => Modulus
-- ]]
local a = 5
local b = 10
local c = 20
print((a + b) - c) -- Output:-5

-- [[Math Library:
--  Lua has a `math` library
-- ]]
print(math.pi) -- Output: 3.1415926535898
print(math.random()) -- Output: random floating value between 0 and 1
-- To get a much more stable random number, use `math.randomseed()`
print(math.randomseed(1)) -- The argument for the `randomseed()` function is called the seed, and it helps the pseudo-random generator
print(math.random())

-- `os.time`
print(os.time())

--[[other math function:
--math.floor()
--math.ceil()
--math.min(1, 10, 20, 3)
--math.max(1, 30, 20,4 )]]
