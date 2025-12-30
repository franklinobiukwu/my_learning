--[[
--Naturally, Lua doesn't support OOP, but we can have a walk around.
--Kinda like simulate OOP behaviour
--]]

local t = {
	name = "Jack",
	age = 18,
	friends = { "Fred" },
}

print(t.name)

-- PET Object
local function Pet(name)
	name = name or "Luis"
	return {
		name = name,
		status = "Hungry",

		feed = function(self)
			print(name .. " is fed.")
			self.status = "Full"
		end,
	}
end

local function Dog(name, breed)
	local dog = Pet(name)

	dog.breed = breed
	dog.loyalty = 0

	dog.isLoyal = function(self)
		return self.loyalty >= 10
	end

	dog.feed = function(self)
		print(name .. " is fed")
		self.status = "Full"
		self.loyalty = self.loyalty + 5
	end

	dog.bark = function(self)
		print("Woof Woof")
	end

	return dog
end

local cat = Pet("Kitty")
local dog = Pet()

print(cat.status)
cat:feed()
print(cat.status)
print(dog.status)

local lassy = Dog("Lassy", "Poodle")
lassy:feed()

if lassy:isLoyal() then
	print("Will protect against intruder")
else
	print("Will NOT protect against intruder")
end

lassy:feed()

if lassy:isLoyal() then
	print("Will protect against intruder")
else
	print("Will NOT protect against intruder")
end
