local Potato = {type="rooster"}

function Potato:new (o)
      o = o or {}
      setmetatable( o, self )
      self.__index = self
      self.age = 1
      return o
end

function Potato:grow (days)
      self.age = self.age + days
      return self.age
end

function Potato:shrink (days)
      if days > self.age then error"too many days" end
      self.age = self.age - days
      return self.age
end

return Potato
