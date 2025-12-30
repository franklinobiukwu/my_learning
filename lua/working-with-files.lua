--[[ FILE OPERATIONS WITH LUA ]]
--

--Write to File (Create if file doesn't exist)
--Method 1: Using implicit file handling with `io.output`
io.output("myFile.txt")
io.write("From File 1: Hello World!")
io.close()

--Write to File (Create if file doesn't exist)
--Method 1: Using explicit file handling with `io.open`
local myFile = io.open("myFile2.txt", "w")
myFile:write("From File 2: Hello World")
myFile:close()

-- Read entire file content
io.input("myFile.txt")
local fileContent = io.read("*a")
--io.close()
print(fileContent)

-- explicit
local f2 = io.open("myFile2.txt", "r")
if f2 then
	local content = f2:read("*a")
	f2:close()
	print(content)
else
	print("File is blank or missing")
end
