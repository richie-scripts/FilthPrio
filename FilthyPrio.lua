----------------------------
-- OLD PROCESS
----------------------------

FilthyPrio = {}

-- Get character details
FilthyPrio.player = {
	name = UnitName("player"),
	realm = GetRealmName(),
	faction = UnitFactionGroup('player'),
}
FilthyPrio.player.class, FilthyPrio.player.classId = UnitClass("player")
FilthyPrio.player.guildName, FilthyPrio.player.guildRank, FilthyPrio.player.guildRankIndex = GetGuildInfo("player")

-- Load saved database or create a new one
prioDB = prioDB or {}

local _

function FilthyPrio.SetPrio(item, prio, notes, hasitem)
	if not prioDB[item] then
		prioDB[item] = {}
	end
	prioDB[item]['prio'] = prio
	prioDB[item]['notes'] = notes
	prioDB[item]['hasitem'] = hasitem

	--FilthyPrio.Print('Added item: '..item)
end

-- Colours for the tooltip strings
-- TODO: add class colours to tooltip when i figure out an easy system to determine class
function FilthyPrio.ColorString(str, color)
	local c = ''

	if color == 'deathknight' then c = '|cFFC41F3B'
	elseif color == 'druid' then c = '|cFFFF7D0A'
	elseif color == 'hunter' then c = '|cFFABD473'
	elseif color == 'mage' then c = '|cFF69CCF0'
	elseif color == 'paladin' then c = '|cFFF58CBA'
	elseif color == 'priest' then c = '|cFFFFFFFF'
	elseif color == 'rogue' then c = '|cFFFFF569'
	elseif color == 'shaman' then c = '|cFF0070DE'
	elseif color == 'warlock' then c = '|cFF9482C9'
	elseif color == 'warrior' then c = '|cFFC79C6E'
	elseif color == 'red' then c = '|cFFff0000'
	elseif color == 'gray' then c = '|cFFa6a6a6'
	elseif color == 'purple' then c = '|cFFB900FF'
	elseif color == 'blue' then c = '|cFF8080ff'
	elseif color == 'lightblue' then c = '|cB900FFFF'
	elseif color == 'reputationblue' then c = '|cFF8080ff'
	elseif color == 'yellow' then c = '|cFFffff00'
	elseif color == 'orange' then c = '|cFFFF6F22'
	elseif color == 'green' then c = '|cFF00ff00'
	elseif color == 'white' then c = '|cFFffffff'
	elseif color == 'gold' then c = "|cFFffd100" -- this is the default game font
	else c = '|cFFffffff' -- default to white
	end

	return c .. str .. "|r"
end

function FilthyPrio.Print(msg)
	if msg then
		DEFAULT_CHAT_FRAME:AddMessage(FilthyPrio.ColorString('Filthy Prio: ', 'green') .. msg)
	end
end

function FilthyPrio.DebugVar(...)
	local args = { ... }
	for i, v in ipairs(args) do
		if (i % 2 == 1) then -- number is odd
			local varValue = tostring(args[i + 1])
			if string.len(varValue) > 0 then
				DEFAULT_CHAT_FRAME:AddMessage(FilthyPrio.ColorString('FPDebugVar: ', 'blue') ..
					FilthyPrio.ColorString(tostring(v) .. '= ', 'orange') .. varValue)
			end
		end
	end
end

-- Loot Prio on Item Mouseover
function FilthyPrio.Tooltip(tooltip)
	local _, item = tooltip:GetItem()
	if not item then return end -- if the current displayed tooltip is not an item, stop the script

	-- item tooltip detected - check if there is any loot prio set for this item name
	local itemName = GetItemInfo(item)
	local prioInfo = prioDB[itemName]

	if prioInfo then
		local prio = prioInfo['prio']
		local notes = prioInfo['notes']
		local hasitem = prioInfo['hasitem']

		-- Display item prio on the tooltip if the item exists in the database
		if prio then
			tooltip:AddLine(' ') -- add line break before displaying prio tooltip

			if string.len(prio) == 0 then
				-- if prio is not set for the item, set it to the default
				prio = FilthyPrio.defaultPrio
			end
			tooltip:AddDoubleLine("Loot Prio:", FilthyPrio.ColorString(prio, "white"))

			if string.len(notes) > 0 then
				-- if notes are not blank, display the 'Notes' field on the tooltip
				tooltip:AddDoubleLine("Notes:", FilthyPrio.ColorString(notes, "white"))
			end

			-- Display item notes and who has the item when the alt key is held down
			-- Trialling without alt key needed
			--if IsAltKeyDown() then
			if string.len(hasitem) > 0 then
				-- if someone has the item, display the 'Has Item' field on the tooltip
				tooltip:AddDoubleLine("Has Item:", FilthyPrio.ColorString(hasitem, "white"))
			end
			--end

			-- display a line break after the prio tooltips, before any other tooltip mods
			tooltip:AddLine(' ')
		end
	end
end

function FilthyPrio.InitPrios()
	-- Build specific prios
	if FilthyPrio.IsFilthyOfficer() then
		FilthyPrio.buildOfficerPrio()
	else
		FilthyPrio.buildPrio()
	end
end

-- Register events to add to the item tooltip
GameTooltip:HookScript("OnTooltipSetItem", FilthyPrio.Tooltip)
ItemRefTooltip:HookScript("OnTooltipSetItem", FilthyPrio.Tooltip)

-- Create a new frame to register events
local loadFrame = CreateFrame("FRAME")
--loadFrame:RegisterEvent("PLAYER_LOGIN")
loadFrame:RegisterEvent("VARIABLES_LOADED")
loadFrame:SetScript("OnEvent", function(self, event, ...)
	if event == "VARIABLES_LOADED" then
		FilthyPrio.Print("Addon Loaded.")

		FilthyPrio.InitPrios()
		self:UnregisterEvent(event)
	end
end)
