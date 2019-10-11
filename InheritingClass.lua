BaseClass = require(script.Parent.BaseClass)
local InheritingClass  = {}
InheritingClass.__index = InheritingClass
setmetatable(InheritingClass, BaseClass)

function InheritingClass.new()
	local newBase = BaseClass.new()
	local self = setmetatable(newBase, InheritingClass)	

	return self
end

--OVERRIDE:
----adds self instead of specified variable
--function InheritingClass:Add()
--	print("running")
--	self.myVariable = self.myVariable * 2
--	return self.myVariable
--end

return InheritingClass