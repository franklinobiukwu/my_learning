local user_name

-- We use `io.read` to get user input
while true do
	print("What is your name earthling?")
	user_name = io.read(...)

	-- Little game
	io.write("What year where you born? (e.g. 2004): ")
	local yob = io.read() --<-- read user input

	local month_year = os.date("%m, %Y")

	local delimiter = ", "
	local i = 0
	local month
	local year

	for token in string.gmatch(tostring(month_year), "([^" .. delimiter .. "]+)") do
		if i == 0 then
			month = tonumber(token)
		elseif i == 1 then
			year = tonumber(token)
		end

		i = i + 1
	end

	local age = year - tonumber(yob)
	print(user_name .. " you are " .. age .. " years old!\n\n")

	os.execute("sleep 1")
end
