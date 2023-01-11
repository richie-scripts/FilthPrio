std = "lua51"
max_line_length = false
codes = true
only = {
	"011", -- syntax
	"1", -- globals
}
globals = {
	-- addon
	"prioDB",
	"FilthyPrio",

	-- wow api
	"CreateFrame",
	"C_Timer",
	"DEFAULT_CHAT_FRAME",
	"GameTooltip",
	"GetTime",
	"GetItemInfo",
	"GetRealmName",
	"GetGuildInfo",
	"ItemRefTooltip",
	"IsAltKeyDown",
	"UnitName",
	"UnitFactionGroup",
	"UnitClass",

	-- libs
	"LibStub",
	"geterrorhandler",
}
include_files = {
	"**/FilthyPrio.lua",
	"**/PRIO_LIST_PHASE1.lua",
	"**/Filthy/FilthyPrio_Phase1.lua",
}
