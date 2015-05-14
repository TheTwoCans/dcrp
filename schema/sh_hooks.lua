-- Restrict Business.
function SCHEMA:CanPlayerUseBusiness(client, id)
	local item = nut.item.list[id]
	local char = client:getChar()

	if (char) then
		local class = nut.class.list[char:getClass()]

		if (class and class.business and class.business[id]) then
			return true
		end
	end

	return (false)
end
