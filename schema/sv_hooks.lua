-- no spray w/o spraycan
function SCHEMA:PlayerSpray(client)
	return (client:getChar():getInv():hasItem("spraycan")) or false
end

-- On character is created, Give him some money and items. 
function SCHEMA:OnCharCreated(client, id)
	local char = nut.char.loaded[id]

	if (char) then
		local inv = char:getInv()

		if (inv) then
			inv:add("healvial")
		end

		char:giveMoney(nut.config.get("startMoney", 100))
	end
end
 --footsteps
function SCHEMA:PlayerFootstep(client, position, foot, soundName, volume)
	if (client:isRunning()) then
		if (client:Team() == FACTION_POLICE) then
			client:EmitSound("npc/metropolice/gear"..math.random(1, 6)..".wav", volume * 100)

			return true
		elseif (client:Team() == FACTION_MILITARY) then
			client:EmitSound("npc/metropolice/gear"..math.random(1, 6)..".wav", volume * 100)

			return true
		end
	end
end

-- name prefixes
function SCHEMA:ClassPrefixSet(client, data, newData)
	if (client:Team == FACTION_POLICE) then
		function client:AdjustCreationData(client, data, newData)
			newData.name = "Pvt. "..data.name
		end
	end

	if (client:Team == FACTION_MILITARY) then
		function client:AdjustCreationData(client, data, newData)
			newData.name = "Pvt. "..data.name
		end
	end
end


-- This hook restricts oneself from using a weapon that configured by the sh_config.lua file.
function SCHEMA:CanPlayerInteractItem(client, action, item)
	if (action == "drop" or action == "take") then
		return
	end

	local itemTable
	if (type(item) == "Entity") then
		if (IsValid(item)) then
			itemTable = nut.item.instances[item.nutItemID]
		end
	else
		itemTable = nut.item.instances[item]
	end

	if (itemTable and itemTable.isWeapon) then
		local reqattribs = WEAPON_REQSKILLS[itemTable.uniqueID]
		
		if (reqattribs) then
			for k, v in pairs(reqattribs) do
				local attrib = client:getChar():getAttrib(k, 0)
				if (attrib < v) then
					client:notify(L("requireAttrib", client, L(nut.attribs.list[k].name, client), attrib, v))

					return false
				end
			end
		end
	end
end