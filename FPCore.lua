-- Currently only tested and working on Wrath
local _, _, _, tocVersion = GetBuildInfo();
if (tocVersion < 30000 and tocVersion > 40000) then
	print('|cFF00ff00FilthyPrio|r: This addon currently only functions on the Wrath Classic client.')
	return
end

local addonName, addon = ...
addon.new = LibStub('AceAddon-3.0'):NewAddon('FilthyPrio', 'AceComm-3.0')
local FP = addon.new

FP.commPrefix = 'FPrio'
FP.hasAddon = {}
FP.realm = GetRealmName();
FP.faction = UnitFactionGroup('player')
FP.serializer = LibStub:GetLibrary('AceSerializer-3.0')
FP.version = GetAddOnMetadata('FilthyPrio', 'Version') or 9999
FP.latestVersion = FP.version
FP.loadTime = 0

function FP:OnInitialize()
	-- Initialise Addon
	self.db = LibStub('AceDB-3.0'):New('PrioDB', FP.prioDefaults, 'Default');

	self:RegisterComm(self.commPrefix);
	self.loadTime = GetServerTime();
    self.db.profile.loadTime = GetServerTime();

	-- Create FP.items shortcut
	self.items = self.db.profile.items
end



-- GLOBALS: LibStub, PrioDB
-- Register an item in the prio DB
local type, pairs, tonumber = type, pairs, tonumber
