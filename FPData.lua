local addonName, addon = ...
local FP = addon.new

FP.prioDefaults = {
    profile = {
        items = {
            naxx = {},
            maly = {},
            sarth = {},
            ulduar = {
                [10] = {},
                [25] = {},
            },
        }
    }
}
