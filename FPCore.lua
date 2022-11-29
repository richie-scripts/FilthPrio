-- Currently only tested and working on Wrath
local _, _, _, tocVersion = GetBuildInfo();
if (tocVersion < 30000 and tocVersion > 40000) then
	print("|cFF00ff00FilthyPrio|r: This addon currently only functions on the Wrath Classic client.")
	return
end

local addonName, addon = ...
addon.new = LibStub("AceAddon-3.0"):NewAddon("FilthyPrio", "AceComm-3.0")
local FP = addon.new

FP.commPrefix = "FPrio"
FP.hasAddon = {}
FP.realm = GetRealmName();
FP.faction = UnitFactionGroup("player")
FP.serializer = LibStub:GetLibrary("AceSerializer-3.0")
FP.version = GetAddOnMetadata("FilthyPrio", "Version") or 9999
FP.latestVersion = FP.version
FP.loadTime = 0

function FP:OnInitialize()
	-- Initialise Addon
	self.db = LibStub("AceDB-3.0"):New("PrioDB", FP.prioDefaults, "Default");

	self:RegisterComm(self.commPrefix);
	self.loadTime = GetServerTime();
	self.db.profile.loadTime = GetServerTime();

end

FP.prioDefaults = {
	profile = {
		setting = true,
	}
}



-- GLOBALS: LibStub, PrioDB
-- Register an item in the prio DB
local type, pairs, tonumber = type, pairs, tonumber
local defaults = {
	profile = {
		modules = { ["*"] = true, ["EnemyCasts"] = false },
		hidesamwise = true,
		sparkcolor = { 1, 1, 1, 0.5 },
		spelltextcolor = { 1, 1, 1 },
		timetextcolor = { 1, 1, 1 },
		castingcolor = { 1.0, 0.49, 0 },
		channelingcolor = { 0.32, 0.3, 1 },
		completecolor = { 0.12, 0.86, 0.15 },
		failcolor = { 1.0, 0.09, 0 },
		backgroundcolor = { 0, 0, 0 },
		bordercolor = { 0, 0, 0 },
		backgroundalpha = 1,
		borderalpha = 1,
		casttimeprecision = 1,
	},
}
