local function addTableValues(x, y)
	return x.num + y.num
end

local metatable = {
	__add = addTableValues,
	__sub = function(x, y)
		return x.num - y.num
	end,
}

local tbl1 = { num = 50 }
local tbl2 = { num = 10 }

setmetatable(tbl1, metatable)

local ans = tbl1 + tbl2

print(ans)

local diff = tbl1 - tbl2

print(diff)

-- Other customizable led
--[[
  __add = +
  __sub = -
  __mul = *
  __div = /
  __mod = %
  __pow = ^
  __concat = ..
  __len = #
  __eq = ==
  __lt = <
  __le = <=
  __gt = >
  __ge = >=
--]]
