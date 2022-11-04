
-- variable for default loot priority string
-- change this if you want it to be something other than MS > OS
local defaultPrio = "MS>OS Roll"

-- create the database table
prioDB = {}


-- Register an item in the prio DB
function set_prio(item, prio, notes, hasitem)
	if not prioDB[item] then
		prioDB[item] = {}
	end
	prioDB[item]['prio'] = prio
	prioDB[item]['notes'] = notes
	prioDB[item]['hasitem'] = hasitem
	
	--print(colorString('Loot Prio:', 'green')..' Added item: '..item)
end

--[[
local realmName = GetRealmName()
local guildName, guildRankName, guildRankIndex, realm = GetGuildInfo("player")
if realmName == filthyRealm and guildName == filthyGuild then
	prioDBF = {}
end
function set_prio_filthy(item, prio, notes, hasitem)
	if not prioDBF[item] then
		prioDBF[item] = {}
	end
	prioDBF[item]['prio'] = prio
	prioDBF[item]['notes'] = notes
	prioDBF[item]['hasitem'] = hasitem
	
	--print(colorString('Loot Prio:', 'green')..' Added item: '..item)
end
]]--

-- Colours for the tooltip strings
-- TODO: add class colours to tooltip when i figure out an easy system to determine class
function colorString(str, color)
    local c = '';

    if color == 'deathknight' then c='|cFFC41F3B';
    elseif color == 'druid' then c='|cFFFF7D0A';
    elseif color == 'hunter' then c='|cFFABD473';
    elseif color == 'mage' then c='|cFF69CCF0';
    elseif color == 'paladin' then c='|cFFF58CBA';
    elseif color == 'priest' then c='|cFFFFFFFF';
    elseif color == 'rogue' then c='|cFFFFF569';
    elseif color == 'shaman' then c='|cFF0070DE';
    elseif color == 'warlock' then c='|cFF9482C9';
    elseif color == 'warrior' then c='|cFFC79C6E';
    elseif color == 'red' then c = '|cFFff0000';
    elseif color == 'gray' then c = '|cFFa6a6a6';
    elseif color == 'purple' then c = '|cFFB900FF';
    elseif color == 'blue' then c = '|cFF8080ff';
    elseif color == 'lightblue' then c = '|cB900FFFF';
    elseif color == 'reputationblue' then c = '|cFF8080ff';
    elseif color == 'yellow' then c = '|cFFffff00';
    elseif color == 'orange' then c = '|cFFFF6F22';
    elseif color == 'green' then c = '|cFF00ff00';
    elseif color == 'white' then c = '|cFFffffff';
    elseif color == 'gold' then c = "|cFFffd100" 			-- this is the default game font
    else c = '|cFFffffff'; 									-- default to white
    end

    return c .. str .. "|r"
end

-- Loot Prio on Item Mouseover
local function OnTooltipSetItem_Prio(tooltip)
	local _, item = tooltip:GetItem()
	if not item then return end -- if the current displayed tooltip is not an item, stop the script

	-- item tooltip detected - check if there is any loot prio set for this item name
	local itemName = GetItemInfo(item)
	local prioInfo = prioDB[itemName]

	if prioInfo then
		-- loot prio detected - display the tooltip
		local prio = prioInfo['prio']
		local notes = prioInfo['notes']
		local hasitem = prioInfo['hasitem']
		
		-- Display item prio on the tooltip if the item exists in the database
		if prio then
			tooltip:AddLine(' ') -- add line break before displaying prio tooltip
			
			if string.len(prio) == 0 then
				-- if prio is not set for the item, set it to the default
				prio = defaultPrio
			end
			tooltip:AddDoubleLine("Loot Prio:", colorString(prio, "white"))
			
			-- Display item notes and who has the item when the alt key is held down
			if IsAltKeyDown() then
				if string.len(notes) > 0 then
					-- if notes are not blank, display the 'Notes' field on the tooltip
					tooltip:AddDoubleLine("Notes:", colorString(notes, "white"))
				end
				if string.len(hasitem) > 0 then
					-- if someone has the item, display the 'Has Item' field on the tooltip
					tooltip:AddDoubleLine("Has Item:", colorString(hasitem, "white"))
				end
			end
			
			-- display a line break after the prio tooltips, before any other tooltip mods
			tooltip:AddLine(' ')
		end
	end
end

-- Register events to add to the item tooltip
GameTooltip:HookScript("OnTooltipSetItem", OnTooltipSetItem_Prio)
ItemRefTooltip:HookScript("OnTooltipSetItem", OnTooltipSetItem_Prio)

