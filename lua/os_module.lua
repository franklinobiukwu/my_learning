local timeSince1970 = os.time() -- Time (in seconds) from 1970 till date

print(timeSince1970)

-- Time in seconds from 1970 till 2020/10/01 13hr:20min:10sec
local timeSince1970TillConfig = os.time({
	year = 2000,
	month = 10,
	day = 1,
	hour = 13,
	min = 20,
	sec = 10,
})

print(timeSince1970TillConfig)

-- Get the difference between two time in seconds
local timeDiff = os.difftime(timeSince1970, timeSince1970TillConfig)
print(timeDiff)

-- Get Current date
local currentDate = os.date()
print(currentDate)

-- Get Systems Environment Variables
local user = os.getenv("USER")
print(user)
local path = os.getenv("PATH")
print(path)

-- Rename a file
os.rename("myFile.txt", "myFile.js")

-- Remove a file
os.remove("myFile.js")

-- Execute terminal commands.
-- The code has to be built-in terminal code for your Operating system.
os.execute("ls -l")
--os.execute("clear")

-- `os.clock()` measures the time the CPU spends actively executing
-- a program's instructions. It isn't the wall-clock time that has elapsed
-- This means it can be less than the actual time passed if the
-- programwas paused, waiting for I/O, or if other processes were using the CPU.
print(os.clock())

local start = os.clock()

for i = 1, 1000000000000 do
	local x = 10
end

print(os.time() - start)

-- Exit a program
os.exit()
