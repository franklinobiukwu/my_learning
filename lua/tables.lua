-- Tables are similar to arrays or lists
local tab = { 5, 20, 12, 3, 4, 90 }

-- Naturally, your can't print a table as is e.g print(tab) but you can print it's element
-- We can use for loop to print the items in a Tables
local function print_table(table_var)
	for i = 1, #table_var do
		print(table_var[i])
	end
	print("\n")
end

print_table(tab)

-- [[Inserting value to a table.
-- In doing this, you need to use a table.insert method, and also specify the
-- table, position/index you'd like to insert the value, and then the value]]
table.insert(tab, 1, 0)

print_table(tab)

--[[Concatinating values in tables]]
local tab2 = { "This", "is", "Franklin.\n" }

print(table.concat(tab2, " "))

-- Multidimentional table
local tab3 = {
	{ 0, 2, 10 },
	{ 5, 20, 7 },
	{ 98, 6, 8 },
}

for i = 1, #tab3 do
	for j = 1, #tab3[i] do
		print(tab3[i][j])
	end
	if i == #tab3 then
		print("\n")
	end
end

-- Sort a table
table.sort(tab)
print_table(tab)

-- Remove value from array
table.remove(tab, 4)
print_table(tab)
