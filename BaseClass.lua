local BaseClass = {}
BaseClass.__index = BaseClass

function BaseClass.new()
	local self = setmetatable({}, BaseClass)
	self.myVariable = 60
	return self
end

function BaseClass:Add(amount)
	self.myVariable = self.myVariable + amount
end

return BaseClass