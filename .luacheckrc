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
	"set_prio",
	"colorString",
	
	-- wow api
	"GetItemInfo",
	"GameTooltip",
	"ItemRefTooltip",
	"IsAltKeyDown",	
	"GetRealmName"
    "GetGuildInfo"
    "UnitName"
}
