-- Filthy guild only prio - only set to load if the player is an officer in the guild Filthy on Arugal
-- This is so I can maintain one version of the addon and others can use it :)

-- /script print(GetGuildInfo("player"))

local filthyRealm = "Arugal"
local filthyGuild = "Filthy"
local filthyOfficerRank = 2
local filthyOfficerAltNames = {
	["Mydadishung"] = true,
	["Icantwalk"] = true,
	["Icantrun"] = true,
	["Squirties"] = true,
}
local filthyNickNameClass = {
	["Aaron"] = "warlock",
	["Tobs"] = "deathknight",
	["Koro"] = "paladin",
	["Hawkey"] = "deathknight",
	["Fig"] = "paladin",
	["Chris"] = "druid",
	["Shazz"] = "warlock",
	["Greetings"] = "deathknight",
	["Trisp"] = "warrior",
	["Inkies"] = "rogue",
	["Name"] = "class",
}
local p = FilthyPrio.player

function FilthyPrio.IsFilthyOfficer()
	if p.realm == filthyRealm and p.guildName == filthyGuild and
		(p.guildRankIndex <= filthyOfficerRank or filthyOfficerAltNames[p.name]) then
		return true
	end
	return false
end

function FilthyPrio.buildOfficerPrio()
	FilthyPrio.Print('Hi ' .. p.name)
	FilthyPrio.Print('You\'re an Officer in Filthy. Sup?')

	-------------------------
	-- Put prio updates here
	-------------------------
	-- Last updated: 20/01/2023 04:22:43 PM
	FilthyPrio.SetPrio('Band of Lights', '', '', '')
	FilthyPrio.SetPrio('Breastplate of the Timeless', '', '', '')
	FilthyPrio.SetPrio('Dark Matter', '', '', '')
	FilthyPrio.SetPrio('Drape of the Messenger', '', '', '')
	FilthyPrio.SetPrio('Gloves of the Endless Dark', '', '', '')
	FilthyPrio.SetPrio('Meteorite Crystal', '', 'Separate Hpals, replaces EoG for both', '')
	FilthyPrio.SetPrio('Nebula Band', '', '', '')
	FilthyPrio.SetPrio('Observer\'s Mantle', '', '', '')
	FilthyPrio.SetPrio('Pendant of the Somber Witness', '', '', '')
	FilthyPrio.SetPrio('Pulsar Gloves', '', '', '')
	FilthyPrio.SetPrio('Reply-Code Alpha', '', '', '')
	FilthyPrio.SetPrio('Shoulderplates of the Celestial Watch', '', '', '')
	FilthyPrio.SetPrio('Starfall Girdle', '', '', '')
	FilthyPrio.SetPrio('Starlight Treads', '', '', '')
	FilthyPrio.SetPrio('Strength of the Heavens', '', '', '')
	FilthyPrio.SetPrio('Zodiac Leggings', '', '', '')
	FilthyPrio.SetPrio('Boundless Gaze', 'BP', '', '')
	FilthyPrio.SetPrio('Bulwark of Algalon', 'Sluzza', 'Block rating for ToGC', '')
	FilthyPrio.SetPrio('Comet\'s Trail', 'Inkies', '', '')
	FilthyPrio.SetPrio('Constellus', 'Cluelust/Ethos > Spriest/Boomy > Jess > Sterile',
		'Bis non-Valanyr healer 1h, 2nd bis boomy/spriest', 'Thor*')
	FilthyPrio.SetPrio('Cosmos', '', 'BiS: Aff, Mages, Spriest, Boomy', '')
	FilthyPrio.SetPrio('Legplates of the Endless Void', '', '', '')
	FilthyPrio.SetPrio('Pharos Gloves', '', 'BiS: Aff, Spriest, Mage, Boomy, Ele, HPal', '')
	FilthyPrio.SetPrio('Planewalker Treads', 'Cluelust > RFI/OS', 'Acceptable BiS RSham', '')
	FilthyPrio.SetPrio('Reply-Code Alpha', '', 'Phys Arp prio? Healer ring the lowest value of the 4', '')
	FilthyPrio.SetPrio('Sabatons of Lifeless Night', 'Greetings > msg', '', '')
	FilthyPrio.SetPrio('Solar Bindings', 'Dof', '', '')
	FilthyPrio.SetPrio('Star-beaded Clutch', 'Chris > Thor', '', '')
	FilthyPrio.SetPrio('Starwatcher\'s Binding', '', 'BiS: Demo, Aff, Spriest, Mage, Boomy(takes above), Disc', '')
	FilthyPrio.SetPrio('Fang of Oblivion', 'Dof', '', '')
	FilthyPrio.SetPrio('Dreambinder', 'Koonix', '', '')
	FilthyPrio.SetPrio('Starshard Edge', '', 'BiS: Aff, Spriest, Mage, Boomy. Aaron taking Staff', '')
	FilthyPrio.SetPrio('Skyforge Crossbow', 'Pili', '', '')
	FilthyPrio.SetPrio('Fragment of Val\'anyr', 'Sterile > Jess > Grats Died', 'Legendary Mace', '')
	FilthyPrio.SetPrio('Archaedas\' Lost Legplates', '', '', '')
	FilthyPrio.SetPrio('Chestplate of Titanic Fury', '', '', '')
	FilthyPrio.SetPrio('Cover of the Keepers', '', '', '')
	FilthyPrio.SetPrio('Elemental Focus Stone', '', '', '')
	FilthyPrio.SetPrio('Ironaya\'s Discarded Mantle', '', '', '')
	FilthyPrio.SetPrio('Mantle of the Preserver', '', '', '')
	FilthyPrio.SetPrio('Nimble Climber\'s Belt', '', '', '')
	FilthyPrio.SetPrio('Nurturing Touch', '', '', '')
	FilthyPrio.SetPrio('Raiments of the Corrupted', '', '', '')
	FilthyPrio.SetPrio('Shieldwall of the Breaker', '', '', '')
	FilthyPrio.SetPrio('Amice of the Stoic Watch', 'Cluelust > RFI/OS', 'Filler', '')
	FilthyPrio.SetPrio('Cloak of the Makers', '', '', '')
	FilthyPrio.SetPrio('Cowl of the Absolute', '', 'BoE, no meta', '')
	FilthyPrio.SetPrio('Gloves of the Stonereaper', 'Inkies', '', '')
	FilthyPrio.SetPrio('Greaves of the Rockmender', 'Hpals', 'Filler', '')
	FilthyPrio.SetPrio('Libram of the Resolute', 'Hpals > OS', '', '')
	FilthyPrio.SetPrio('Platinum Band of the Aesir', '', '', '')
	FilthyPrio.SetPrio('Ring of the Faithful Servant', 'Ethos > RFI/OS', 'Filler', '')
	FilthyPrio.SetPrio('Sandals of the Ancient Keeper', '', 'Those who missed Arcanic Tramplers?', '')
	FilthyPrio.SetPrio('Shoulderplates of the Eternal', 'msg>sandra', '', '')
	FilthyPrio.SetPrio('Unbreakable Chestguard', '', '', '')
	FilthyPrio.SetPrio('Unwavering Stare', 'Chris > RFI/OS', 'Filler', '')
	FilthyPrio.SetPrio('Runescribed Blade', '', 'Those who missed Turning Tide?', '')
	FilthyPrio.SetPrio('Siren\'s Cry', 'brick', '', '')
	FilthyPrio.SetPrio('Stonerender', 'Msg', '', '')
	FilthyPrio.SetPrio('Belt of the Iron Servant', '', '', '')
	FilthyPrio.SetPrio('Boots of the Petrified Forest', '', '', '')
	FilthyPrio.SetPrio('Circlet of True Sight', '', '', '')
	FilthyPrio.SetPrio('Cloak of the Iron Council', '', '', '')
	FilthyPrio.SetPrio('Greaves of Iron Intensity', '', '', '')
	FilthyPrio.SetPrio('Lady Maye\'s Sapphire Ring', '', '', '')
	FilthyPrio.SetPrio('Leggings of Swift Reflexes', '', '', '')
	FilthyPrio.SetPrio('Rune-Etched Nightblade', '', '', '')
	FilthyPrio.SetPrio('Runetouch Wristwraps', '', '', '')
	FilthyPrio.SetPrio('Stormtip', '', '', '')
	FilthyPrio.SetPrio('Belt of the Crystal Tree', '', '', '')
	FilthyPrio.SetPrio('Loop of the Agile', '', '', '')
	FilthyPrio.SetPrio('Watchful Eye of Fate', '', '', '')
	FilthyPrio.SetPrio('Perilous Bite', '', '', '')
	FilthyPrio.SetPrio('The Masticator', '', '', '')
	FilthyPrio.SetPrio('Ancient Iron Heaume', '', '', '')
	FilthyPrio.SetPrio('Drape of the Lithe', 'Inkies', '', '')
	FilthyPrio.SetPrio('Handguards of the Enclave', '', 'Block rating for ToGC', '')
	FilthyPrio.SetPrio('Insurmountable Fervor', 'sandra', '', '')
	FilthyPrio.SetPrio('Iron-studded Mantle', 'brick', '', '')
	FilthyPrio.SetPrio('Overload Legwraps', '', 'Who missed out on Malygos hit legs?', '')
	FilthyPrio.SetPrio('Phaelia\'s Vestments of the Sprouting Seed', 'Chris/DE', 'Filler, replaced by bought Tier 8 token',
		'')
	FilthyPrio.SetPrio('Radiant Seal', 'Sterile > Cluelust > Jess > RFI/OS', 'Filler', '')
	FilthyPrio.SetPrio('Raiments of the Iron Council', '', 'Filler', '')
	FilthyPrio.SetPrio('Runed Ironhide Boots', 'Trisp', '', '')
	FilthyPrio.SetPrio('Runeshaper\'s Gloves', '', '', '')
	FilthyPrio.SetPrio('Steelbreaker\'s Embrace', '', '', '')
	FilthyPrio.SetPrio('Unblinking Eye', '', '', '')
	FilthyPrio.SetPrio('Rapture', '', 'Filler, give to those who didnt get a Naxx weapon?', '')
	FilthyPrio.SetPrio('Stormrune Edge', 'Trisp', '', '')
	FilthyPrio.SetPrio('Belt of Colossal Rage', 'Tobs', '', '')
	FilthyPrio.SetPrio('Drape of Mortal Downfall', '', 'BiS: Ele, Boomy, Fire', '')
	FilthyPrio.SetPrio('Greaves of Swift Vengeance', 'elg', '', '')
	FilthyPrio.SetPrio('Sapphire Amulet of Renewal', '', 'BiS: Demo, Arcane, RDruid', '')
	FilthyPrio.SetPrio('Shoulderpads of the Intruder', 'Dof', '', '')
	FilthyPrio.SetPrio('Chestguard of the Lasher', '', '', '')
	FilthyPrio.SetPrio('Gloves of the Wayward Conqueror', '', '', '')
	FilthyPrio.SetPrio('Gloves of the Wayward Protector', '', '', '')
	FilthyPrio.SetPrio('Gloves of the Wayward Vanquisher', '', '', '')
	FilthyPrio.SetPrio('Ironbark Faceguard', '', '', '')
	FilthyPrio.SetPrio('Legplates of Flourishing Resolve', '', '', '')
	FilthyPrio.SetPrio('Tunic of the Limber Stalker', '', '', '')
	FilthyPrio.SetPrio('Unraveling Reach', '', '', '')
	FilthyPrio.SetPrio('Fire Orchid Signet', '', '', '')
	FilthyPrio.SetPrio('Gloves of Whispering Winds', '', '', '')
	FilthyPrio.SetPrio('Seed of Budding Carnage', '', '', '')
	FilthyPrio.SetPrio('Petrified Ivy Sprig', '', 'ethos and aaron in different runs THANKS', '')
	FilthyPrio.SetPrio('Serilas, Blood Blade of Invar One-Arm', '', '', '')
	FilthyPrio.SetPrio('Boots of the Servant', '', 'Filler', '')
	FilthyPrio.SetPrio('Gauntlets of Ruthless Reprisal', 'Msg', '', '')
	FilthyPrio.SetPrio('Leggings of the Lifetender', 'Chris > RFI/OS', '', '')
	FilthyPrio.SetPrio('Legplates of the Wayward Conqueror', '', 'Spriest > Disc > Ret > Demo > Aff > HPal', '')
	FilthyPrio.SetPrio('Legplates of the Wayward Protector', 'Thor  > Cluelust > Died > Hunters',
		'Ele > RSham > Enh > Hunter', '')
	FilthyPrio.SetPrio('Legplates of the Wayward Vanquisher', 'Mage > Mage > Chris > Chris Resto > RFI',
		'Mage > Boomy > RDruid', '')
	FilthyPrio.SetPrio('Nymph Heart Charm', 'rogues/sell', 'BoE', '')
	FilthyPrio.SetPrio('The Lifebinder', '', 'Filler', '')
	FilthyPrio.SetPrio('Bladetwister', 'Dof', '', '')
	FilthyPrio.SetPrio('Bronze Pendant of the Vanir', '', '', '')
	FilthyPrio.SetPrio('Drape of the Sullen Goddess', 'Ethos > Jess/Sterile/Cluelust > OS/RFI',
		'BiS by ilvl except for RDruid', '')
	FilthyPrio.SetPrio('Handguards of Revitalization', '', '', '')
	FilthyPrio.SetPrio('Leggings of the Enslaved Idol', '', 'BiS: Arcane, Boomy', '')
	FilthyPrio.SetPrio('Avalanche', '', '', '')
	FilthyPrio.SetPrio('Cowl of Icy Breaths', '', '', '')
	FilthyPrio.SetPrio('Leggings of the Wayward Conqueror', '', '', '')
	FilthyPrio.SetPrio('Leggings of the Wayward Protector', '', '', '')
	FilthyPrio.SetPrio('Leggings of the Wayward Vanquisher', '', '', '')
	FilthyPrio.SetPrio('Signet of Winter', '', '', '')
	FilthyPrio.SetPrio('Stormedge', '', '', '')
	FilthyPrio.SetPrio('Winter\'s Frigid Embrace', '', '', '')
	FilthyPrio.SetPrio('Bitter Cold Armguards', '', '', '')
	FilthyPrio.SetPrio('Icecore Staff', '', '', '')
	FilthyPrio.SetPrio('Ice Layered Barrier', '', '', '')
	FilthyPrio.SetPrio('Shiver', '', '', '')
	FilthyPrio.SetPrio('The Boreal Guard', '', '', '')
	FilthyPrio.SetPrio('Breastplate of the Wayward Conqueror', '', 'Shadow > Disc > Ret > Demo > Aff > HPal', '')
	FilthyPrio.SetPrio('Breastplate of the Wayward Protector', 'Thor > Cluelust > Died > Trisp > Hunters',
		'Ele > RSham > Enh > Warrior > Hunter', '')
	FilthyPrio.SetPrio('Breastplate of the Wayward Vanquisher', 'Hawkey',
		'Hawkey > Mage > Boomy > Feral?* > Frost > Unholy > Rogue > RDruid', '')
	FilthyPrio.SetPrio('Frost-bound Chain Bracers', 'hunter', '', '')
	FilthyPrio.SetPrio('Frostplate Greaves', 'Hpals', 'Filler', '')
	FilthyPrio.SetPrio('Frozen Loop', '', 'Filler', '')
	FilthyPrio.SetPrio('Northern Barrier', '', '', '')
	FilthyPrio.SetPrio('Winter\'s Icy Embrace', 'Inkies', '', '')
	FilthyPrio.SetPrio('Bindings of Winter Gale', 'Thor > Cluelust > HPals', 'BiS Ele, RSham, HPal, also good for Enh???',
		'')
	FilthyPrio.SetPrio('Constellus', '', 'See algalon loot', '')
	FilthyPrio.SetPrio('Drape of Icy Intent', 'Dof', '', '')
	FilthyPrio.SetPrio('Frigid Strength of Hodir', 'Greetings', '', '')
	FilthyPrio.SetPrio('Gloves of the Frozen Glade', 'Chris', '', '')
	FilthyPrio.SetPrio('Staff of Endless Winter', 'Aaron > Ethos/Mages', 'BiS 2h for some casters', '')
	FilthyPrio.SetPrio('Armbraces of the Vibrant Flame', '', '', '')
	FilthyPrio.SetPrio('Drape of Fuming Anger', '', '', '')
	FilthyPrio.SetPrio('Furnace Stone', '', '', '')
	FilthyPrio.SetPrio('Gauntlets of the Iron Furnace', '', '', '')
	FilthyPrio.SetPrio('Gloves of Smoldering Touch', '', '', '')
	FilthyPrio.SetPrio('Igniter Rod', '', '', '')
	FilthyPrio.SetPrio('Pauldrons of Tempered Will', '', '', '')
	FilthyPrio.SetPrio('Relentless Edge', '', '', '')
	FilthyPrio.SetPrio('Rifle of the Platinum Guard', '', '', '')
	FilthyPrio.SetPrio('Shawl of the Caretaker', '', '', '')
	FilthyPrio.SetPrio('Charred Saronite Greaves', '', '', '')
	FilthyPrio.SetPrio('Cindershard Ring', 'Koonix', '', '')
	FilthyPrio.SetPrio('Flamestalker Boots', 'inkies', '', '')
	FilthyPrio.SetPrio('Flamewrought Cinch', 'Chris', 'Filler', '')
	FilthyPrio.SetPrio('Girdle of Embers', 'Trisp', '', '')
	FilthyPrio.SetPrio('Heart of Iron', '', '', '')
	FilthyPrio.SetPrio('Helm of the Furnace Master', 'hunter', '', '')
	FilthyPrio.SetPrio('Lifeforge Breastplate', 'HPals > OS', 'Filler', '')
	FilthyPrio.SetPrio('Pyrelight Circle', '', 'Filler but ok, give to people who missed KT ring?', '')
	FilthyPrio.SetPrio('Soot-Covered Mantle', '', 'Filler', '')
	FilthyPrio.SetPrio('Totem of the Dancing Flame', '', '', '')
	FilthyPrio.SetPrio('Wristguards of the Firetender', 'Cluelust > HPal/OS', 'Filler', '')
	FilthyPrio.SetPrio('Intensity', '', 'Filler, Hit, probs still an UG for a few', '')
	FilthyPrio.SetPrio('Scepter of Creation', '', 'Filler', '')
	FilthyPrio.SetPrio('Worldcarver', 'Sandra', '', '')
	FilthyPrio.SetPrio('Emerald Signet Ring', '', '', '')
	FilthyPrio.SetPrio('Greaves of the Earthbinder', '', '', '')
	FilthyPrio.SetPrio('Mark of the Unyielding', '', '', '')
	FilthyPrio.SetPrio('Pendant of the Piercing Glare', '', '', '')
	FilthyPrio.SetPrio('Sabatons of the Iron Watcher', '', '', '')
	FilthyPrio.SetPrio('Shawl of the Shattered Giant', '', '', '')
	FilthyPrio.SetPrio('Shoulderguards of the Solemn Watch', '', '', '')
	FilthyPrio.SetPrio('Spark of Hope', '', '', '')
	FilthyPrio.SetPrio('Spire of Withering Dreams', '', '', '')
	FilthyPrio.SetPrio('Stoneguard', '', '', '')
	FilthyPrio.SetPrio('Bracers of Unleashed Magic', '', 'Filler, who missed out on Unsullied and needs hit?', '')
	FilthyPrio.SetPrio('Gloves of the Pythonic Guardian', 'HPals', 'Filler until T8', '')
	FilthyPrio.SetPrio('Handwraps of Plentiful Recovery', '', 'Filler', '')
	FilthyPrio.SetPrio('Idol of the Crying Wind', '', '', '')
	FilthyPrio.SetPrio('Ironmender', '', 'Good, most want Cosmos off Algalon', '')
	FilthyPrio.SetPrio('Leggings of the Stoneweaver', 'Cluelust > OS/RFI', 'Filler', '')
	FilthyPrio.SetPrio('Necklace of Unerring Mettle', '', 'Block rating for ToGC', '')
	FilthyPrio.SetPrio('Robes of the Umbral Brute', '', 'Filler, all casters use T8 chest as BiS', '')
	FilthyPrio.SetPrio('Saronite Plated Legguards', '', '', '')
	FilthyPrio.SetPrio('Shoulderpads of the Monolith', 'Inkies', '', '')
	FilthyPrio.SetPrio('Unfaltering Armguards', 'HPals', '', '')
	FilthyPrio.SetPrio('Wrathstone', 'Sandra', '', '')
	FilthyPrio.SetPrio('Giant\'s Bane', 'Elg', '', '')
	FilthyPrio.SetPrio('Malice', 'Tobs', '', '')
	FilthyPrio.SetPrio('Decimator\'s Armguards', 'frost/fury', '', '')
	FilthyPrio.SetPrio('Combustion Bracers', '', '', '')
	FilthyPrio.SetPrio('Energy Siphon', '', '', '')
	FilthyPrio.SetPrio('Firesoul', '', '', '')
	FilthyPrio.SetPrio('Firestrider Chestguard', '', '', '')
	FilthyPrio.SetPrio('Flamewatch Armguards', '', '', '')
	FilthyPrio.SetPrio('Ironsoul', '', '', '')
	FilthyPrio.SetPrio('Kinetic Ripper', '', '', '')
	FilthyPrio.SetPrio('Lifespark Visage', '', '', '')
	FilthyPrio.SetPrio('Might of the Leviathan', '', '', '')
	FilthyPrio.SetPrio('Pyrite Infuser', '', '', '')
	FilthyPrio.SetPrio('Gilded Steel Legplates', '', '', '')
	FilthyPrio.SetPrio('Handguards of Potent Cures', '', '', '')
	FilthyPrio.SetPrio('Mantle of Fiery Vengeance', '', '', '')
	FilthyPrio.SetPrio('Shimmering Seal', '', '', '')
	FilthyPrio.SetPrio('Twirling Blades', '', '', '')
	FilthyPrio.SetPrio('Constructor\'s Handwraps', '', 'Filler', '')
	FilthyPrio.SetPrio('Embrace of the Leviathan', '', 'Filler', '')
	FilthyPrio.SetPrio('Freya\'s Choker of Warding', 'Cluelust/Jess > Sterile > Ethos', 'Filler', '')
	FilthyPrio.SetPrio('Gloves of the Fiery Behemoth', 'Hunter? Trisp', '', '')
	FilthyPrio.SetPrio('Glowing Ring of Reclamation', 'Ethos > RFI', 'Filler', '')
	FilthyPrio.SetPrio('Iron Riveted War Helm', 'msg', '', '')
	FilthyPrio.SetPrio('Leviathan Fueling Manual', '', 'Hit OH', '')
	FilthyPrio.SetPrio('Mechanist\'s Bindings', 'Inkies', '', '')
	FilthyPrio.SetPrio('Mimiron\'s Inferno Couplings', '', '', '')
	FilthyPrio.SetPrio('Steamcaller\'s Totem', 'Cluelust > Offspec', 'BiS Resto Sham', '')
	FilthyPrio.SetPrio('Steamworker\'s Goggles', 'Cluelust > HPal/RFI', 'Filler', '')
	FilthyPrio.SetPrio('Strength of the Automaton', 'Trisp > frost', '', '')
	FilthyPrio.SetPrio('The Leviathan\'s Coil', '', '', '')
	FilthyPrio.SetPrio('Rising Sun', 'Dof', '', '')
	FilthyPrio.SetPrio('Titanguard', 'prot > uh/tank dk', '', '')
	FilthyPrio.SetPrio('Boots of Fiery Resolution', '', 'BiS Demo, Aff, Spriest, Arcane, Disc, RDruid', '')
	FilthyPrio.SetPrio('Golden Saronite Dragon', 'Inkies', '', '')
	FilthyPrio.SetPrio('Pendant of Fiery Havoc', '', '', '')
	FilthyPrio.SetPrio('Plated Leggings of Ruination', 'msg', '', '')
	FilthyPrio.SetPrio('Shoulderpads of Dormant Energies', 'Chris > RFI/DE', 'Filler', '')
	FilthyPrio.SetPrio('Cable of the Metrognome', '', '', '')
	FilthyPrio.SetPrio('Helm of the Wayward Conqueror', '', '', '')
	FilthyPrio.SetPrio('Helm of the Wayward Vanquisher', '', '', '')
	FilthyPrio.SetPrio('Pulse Baton', '', '', '')
	FilthyPrio.SetPrio('Static Charge Handwraps', '', '', '')
	FilthyPrio.SetPrio('Stylish Power Cape', '', '', '')
	FilthyPrio.SetPrio('Helm of the Wayward Protector', '', '', '')
	FilthyPrio.SetPrio('Shoulderguards of Assimilation', '', '', '')
	FilthyPrio.SetPrio('Fused Alloy Legplates', '', '', '')
	FilthyPrio.SetPrio('Greaves of the Iron Army', '', '', '')
	FilthyPrio.SetPrio('Mimiron\'s Flight Goggles', '', '', '')
	FilthyPrio.SetPrio('Tempered Mercury Greaves', '', '', '')
	FilthyPrio.SetPrio('Fusion Blade', '', '', '')
	FilthyPrio.SetPrio('Asimov\'s Drape', '', 'Filler', '')
	FilthyPrio.SetPrio('Gauntlets of the Wayward Conqueror',
		'Sandra > Aaron > Jess > Sterile > RFI - probs give people waiting for Pharos Gloves', 'Ret > Demo > HPals', '')
	FilthyPrio.SetPrio('Gauntlets of the Wayward Protector', 'Cluelust > Died > Trisp > Hunters',
		'RSham > Enh > Warr > Hunter', '')
	FilthyPrio.SetPrio('Gauntlets of the Wayward Vanquisher', 'Hawkey', 'Hawkey > Feral > Frost > Ass > RDruid', '')
	FilthyPrio.SetPrio('Pandora\'s Plea', 'Cluelust > HPals (generally worse than EoG) > RFI/OS',
		'Good not great, better on short fights', '')
	FilthyPrio.SetPrio('Waistguard of the Creator', 'Inkies', '', '')
	FilthyPrio.SetPrio('Malleable Steelweave Mantle', '', '', '')
	FilthyPrio.SetPrio('Insanity\'s Grip', 'Inkies', '', '')
	FilthyPrio.SetPrio('Delirium\'s Touch', 'Inkies', '', '')
	FilthyPrio.SetPrio('Armbands of Bedlam', 'Tobs', '', '')
	FilthyPrio.SetPrio('Conductive Seal', '', 'BiS: Demo, Aff, Mage, Boomy, Spriest, Ele, Disc', '')
	FilthyPrio.SetPrio('Crown of Luminescence', 'Aaron', 'BiS Demo, Aff, Arcane, Boomy', '')
	FilthyPrio.SetPrio('Titanskin Cloak', '', '', '')
	FilthyPrio.SetPrio('Band of Draconic Guile', '', '', '')
	FilthyPrio.SetPrio('Binding of the Dragon Matriarch', '', '', '')
	FilthyPrio.SetPrio('Bracers of the Smothering Inferno', '', '', '')
	FilthyPrio.SetPrio('Breastplate of the Afterlife', '', '', '')
	FilthyPrio.SetPrio('Dragonsteel Faceplate', '', '', '')
	FilthyPrio.SetPrio('Eye of the Broodmother', '', '', '')
	FilthyPrio.SetPrio('Ironscale Leggings', '', '', '')
	FilthyPrio.SetPrio('Razorscale Talon', '', '', '')
	FilthyPrio.SetPrio('Stormtempered Girdle', '', '', '')
	FilthyPrio.SetPrio('Treads of the Invader', '', '', '')
	FilthyPrio.SetPrio('Belt of the Fallen Wyrm', 'Thor  > Cluelust > RFI/OS', '', '')
	FilthyPrio.SetPrio('Bracers of the Broodmother', '', '', '')
	FilthyPrio.SetPrio('Collar of the Wyrmhunter', '', 'Filler, lots of hit', '')
	FilthyPrio.SetPrio('Dragonslayer\'s Brace', '', 'Block rating for ToGC', '')
	FilthyPrio.SetPrio('Drape of the Drakerider', 'Trisp', '', '')
	FilthyPrio.SetPrio('Libram of Discord', '', '', '')
	FilthyPrio.SetPrio('Living Flame', 'Aaron > Jules?', 'Aaron then those who didnt get Dying Curse?', '')
	FilthyPrio.SetPrio('Proto-hide Leggings', 'decide later', 'BoE', '')
	FilthyPrio.SetPrio('Razorscale Shoulderguards', '', '', '')
	FilthyPrio.SetPrio('Saronite Mesh Legguards', 'Hunter? trisp', '', '')
	FilthyPrio.SetPrio('Shackles of the Odalisque', '', '2nd BiS, give to those without Unsullied Cuffs?', '')
	FilthyPrio.SetPrio('Sigil of Deflection', '', '', '')
	FilthyPrio.SetPrio('Guiding Star', 'Healers>Casters?', 'Filler, People who missed out on KT Torch', '')
	FilthyPrio.SetPrio('Remorse', 'msg', '', '')
	FilthyPrio.SetPrio('Veranus\' Bane', '', '', '')
	FilthyPrio.SetPrio('Belt of the Blood Pit', '', '', '')
	FilthyPrio.SetPrio('Guise of the Midgard Serpent', '', '', '')
	FilthyPrio.SetPrio('Handwraps of Resonance', '', '', '')
	FilthyPrio.SetPrio('Legacy of Thunder', '', '', '')
	FilthyPrio.SetPrio('Leggings of Unstable Discharge', '', '', '')
	FilthyPrio.SetPrio('Spaulders of the Wayward Conqueror', '', '', '')
	FilthyPrio.SetPrio('Spaulders of the Wayward Protector', '', '', '')
	FilthyPrio.SetPrio('Spaulders of the Wayward Vanquisher', '', '', '')
	FilthyPrio.SetPrio('Gauntlets of the Thunder God', '', '', '')
	FilthyPrio.SetPrio('Mjolnir Runestone', '', '', '')
	FilthyPrio.SetPrio('Pendant of the Shallow Grave', '', '', '')
	FilthyPrio.SetPrio('Sif\'s Remembrance', '', '', '')
	FilthyPrio.SetPrio('Combatant\'s Bootblade', '', '', '')
	FilthyPrio.SetPrio('Belt of the Betrayed', 'hunter', '', '')
	FilthyPrio.SetPrio('Crown of the Wayward Conqueror', 'Hov', 'Prot > Shadow > Disc > Ret?* > HPal', '')
	FilthyPrio.SetPrio('Crown of the Wayward Protector', 'Thor > Cluelust > Trisp > Hunters',
		'Ele > RSham > Warrior > Hunter', '')
	FilthyPrio.SetPrio('Crown of the Wayward Vanquisher', 'Hawkey',
		'Hawkey > Mage?* > Boomy?* > Feral > Frost > Ass > RDruid', '')
	FilthyPrio.SetPrio('Leggings of Lost Love', '', 'Filler', '')
	FilthyPrio.SetPrio('Scale of Fates', '', 'BiS: Aff, Spriest, Mage, Boomy, RSham', '')
	FilthyPrio.SetPrio('Sif\'s Promise', 'Tobs', '', '')
	FilthyPrio.SetPrio('Vulmir, the Northern Tempest', 'Greetings', '', '')
	FilthyPrio.SetPrio('Embrace of the Gladiator', 'Inkies', '', '')
	FilthyPrio.SetPrio('Fate\'s Clutch', '', '', '')
	FilthyPrio.SetPrio('Pauldrons of the Combatant', 'Cluelust > OS/RFI', 'Filler', '')
	FilthyPrio.SetPrio('Warhelm of the Champion', 'sandra', '', '')
	FilthyPrio.SetPrio('Wisdom\'s Hold', 'Thor > Cluelust > Hpals', 'Only 25man Caster Shield, BiS Resto, HPal, Ele', '')
	FilthyPrio.SetPrio('Bindings of the Depths', '', '', '')
	FilthyPrio.SetPrio('Choker of the Abyss', '', '', '')
	FilthyPrio.SetPrio('Darkstone Ring', '', '', '')
	FilthyPrio.SetPrio('Gauntlets of the Wretched', '', '', '')
	FilthyPrio.SetPrio('Hoperender', '', '', '')
	FilthyPrio.SetPrio('Pendant of Endless Despair', '', '', '')
	FilthyPrio.SetPrio('Saronite Animus Cloak', '', '', '')
	FilthyPrio.SetPrio('Shadowbite', '', '', '')
	FilthyPrio.SetPrio('Underworld Mantle', '', '', '')
	FilthyPrio.SetPrio('Vestments of the Piercing Light', '', '', '')
	FilthyPrio.SetPrio('Drape of the Faceless General', '', '', '')
	FilthyPrio.SetPrio('Leggings of Profound Darkness', '', '', '')
	FilthyPrio.SetPrio('Aesuga, Hand of the Ardent Champion', '',
		'Probs thor? Ele sham gets really shafted with weapons this phase', '')
	FilthyPrio.SetPrio('Tortured Earth', '', '', '')
	FilthyPrio.SetPrio('Void Sabre', '', '', '')
	FilthyPrio.SetPrio('Belt of Clinging Hope', 'HPals', 'Filler', '')
	FilthyPrio.SetPrio('Belt of the Darkspeaker', '', 'Filler, crafted belts are better', '')
	FilthyPrio.SetPrio('Boots of the Forgotten Depths', 'Cluelust > OS/RFI', 'Filler', '')
	FilthyPrio.SetPrio('Boots of the Underdweller', 'UH', '', '')
	FilthyPrio.SetPrio('Darkcore Leggings', 'hunter', '', '')
	FilthyPrio.SetPrio('Grips of the Unbroken', 'Chris > OS/RFI', 'Filler', '')
	FilthyPrio.SetPrio('Helm of the Faceless', '', '', '')
	FilthyPrio.SetPrio('Idol of the Corruptor', '', '', '')
	FilthyPrio.SetPrio('Libram of the Sacred Shield', '', '', '')
	FilthyPrio.SetPrio('Mantle of the Unknowing', '', 'Filler', '')
	FilthyPrio.SetPrio('Metallic Loop of the Sufferer', 'sandra', '', '')
	FilthyPrio.SetPrio('Ring of the Vacant Eye', '', 'Who missed Naxx rings and needs hit?', '')
	FilthyPrio.SetPrio('The General\'s Heart', '', '', '')
	FilthyPrio.SetPrio('Scepter of Lost Souls', '', 'BiS caster non-hit wand?', '')
	FilthyPrio.SetPrio('Lotrafen, Spear of the Damned', 'Koonix', '', '')
	FilthyPrio.SetPrio('Flare of the Heavens', 'Aaron ', 'BiS: Demo, Aff, Mage, Spriest, Boomy', '')
	FilthyPrio.SetPrio('Handwraps of the Vigilant', '', 'BiS: Disc, filler until Pharos for Spriest/casters?', '')
	FilthyPrio.SetPrio('Pendulum of Infinity', 'elg', '', '')
	FilthyPrio.SetPrio('Vestments of the Blind Denizen', 'Chris > OS/RFI', 'BiS: RDruid', '')
	FilthyPrio.SetPrio('Voldrethar, Dark Blade of Oblivion', 'Trisp  > sandra', '', '')
	FilthyPrio.SetPrio('Armbands of the Construct', '', '', '')
	FilthyPrio.SetPrio('Chestplate of Vicious Potency', '', '', '')
	FilthyPrio.SetPrio('Conductive Cord', '', '', '')
	FilthyPrio.SetPrio('Gloves of Taut Grip', '', '', '')
	FilthyPrio.SetPrio('Helm of Veiled Energies', '', '', '')
	FilthyPrio.SetPrio('Plasma Foil', '', '', '')
	FilthyPrio.SetPrio('Power Enhancing Loop', '', '', '')
	FilthyPrio.SetPrio('Pulsing Spellshield', '', '', '')
	FilthyPrio.SetPrio('Treacherous Shoulderpads', '', '', '')
	FilthyPrio.SetPrio('Vest of the Glowing Crescent', '', '', '')
	FilthyPrio.SetPrio('Breastplate of the Stoneshaper', '', '', '')
	FilthyPrio.SetPrio('Fluxing Energy Coils', '', '', '')
	FilthyPrio.SetPrio('Seal of Ulduar', '', '', '')
	FilthyPrio.SetPrio('Aesir\'s Edge', '', '', '')
	FilthyPrio.SetPrio('Magnetized Projectile Emitter', '', '', '')
	FilthyPrio.SetPrio('Boots of Hasty Revival', 'Chris > RFI', '', '')
	FilthyPrio.SetPrio('Brass-lined Boots', 'hunter', '', '')
	FilthyPrio.SetPrio('Clockwork Legplates', 'Greetings', '', '')
	FilthyPrio.SetPrio('Crazed Construct Ring', 'Msg', '', '')
	FilthyPrio.SetPrio('Horologist\'s Wristguards', 'RFI', 'Bad', '')
	FilthyPrio.SetPrio('Mantle of Wavering Calm', '', 'Filler', '')
	FilthyPrio.SetPrio('Quartz-studded Harness', 'Cluelust > HPal/OS', 'Filler', '')
	FilthyPrio.SetPrio('Sandals of Rash Temperament', '', 'Decent filler, Hit', '')
	FilthyPrio.SetPrio('Shoulderplates of the Deconstructor', '', '', '')
	FilthyPrio.SetPrio('Sigil of the Vengeful Heart', '', '', '')
	FilthyPrio.SetPrio('Signet of the Earthshaker', '', '', '')
	FilthyPrio.SetPrio('Thunderfall Totem', 'Thor > Cluelust > Died', '', '')
	FilthyPrio.SetPrio('Golem-Shard Sticker', 'Dof', '', '')
	FilthyPrio.SetPrio('Quartz Crystal Wand', '', 'Filler, Who needs hit?', '')
	FilthyPrio.SetPrio('Twisted Visage', '?', '', '')
	FilthyPrio.SetPrio('Breastplate of the Devoted', '', '', '')
	FilthyPrio.SetPrio('Charm of Meticulous Timing', 'Jess', 'BiS all healers except Resto Druid, give pumpers', '')
	FilthyPrio.SetPrio('Gloves of the Steady Hand', 'BP', '', '')
	FilthyPrio.SetPrio('Grasps of Reason', '', 'BiS: Demo, Aff, Spriest, Mage, Boomy, Disc', '')
	FilthyPrio.SetPrio('Sorthalis, Hammer of the Watchers', 'UH/prot pally', '', '')
	FilthyPrio.SetPrio('Abaddon', '', '', '')
	FilthyPrio.SetPrio('Chestguard of the Wayward Conqueror', '', '', '')
	FilthyPrio.SetPrio('Chestguard of the Wayward Protector', '', '', '')
	FilthyPrio.SetPrio('Chestguard of the Wayward Vanquisher', '', '', '')
	FilthyPrio.SetPrio('Deliverance', '', '', '')
	FilthyPrio.SetPrio('Devotion', '', '', '')
	FilthyPrio.SetPrio('Faceguard of the Eyeless Horror', '', '', '')
	FilthyPrio.SetPrio('Kingsbane', '', '', '')
	FilthyPrio.SetPrio('Leggings of the Insatiable', '', '', '')
	FilthyPrio.SetPrio('Pendant of a Thousand Maws', '', '', '')
	FilthyPrio.SetPrio('Royal Seal of King Llane', '', '', '')
	FilthyPrio.SetPrio('Touch of Madness', '', '', '')
	FilthyPrio.SetPrio('Treads of the Dragon Council', '', '', '')
	FilthyPrio.SetPrio('Amice of Inconceivable Horror', '', '', '')
	FilthyPrio.SetPrio('Signet of Soft Lament', '', '', '')
	FilthyPrio.SetPrio('Soul-Devouring Cinch', '', '', '')
	FilthyPrio.SetPrio('Vanquished Clutches of Yogg-Saron', '', '', '')
	FilthyPrio.SetPrio('Caress of Insanity', '', '', '')
	FilthyPrio.SetPrio('Blood of the Old God', 'sandra/dof', '', '')
	FilthyPrio.SetPrio('Chestguard of Insidious Intent', 'hunter', '', '')
	FilthyPrio.SetPrio('Chestguard of the Fallen God', 'Thor > Cluelust > OS/RFI', '', '')
	FilthyPrio.SetPrio('Cowl of Dark Whispers', '', 'Filler', '')
	FilthyPrio.SetPrio('Garona\'s Guise', 'inkies', '', '')
	FilthyPrio.SetPrio('Godbane Signet', 'sandra', '', '')
	FilthyPrio.SetPrio('Mantle of the Wayward Conqueror', 'Hov', 'Prot > Shadow > Disc > Ret > Demo > HPal', '')
	FilthyPrio.SetPrio('Mantle of the Wayward Protector', 'Thor > Cluelust > Enh > Warrior > Hunters',
		'Ele > RSham > Enh > Warrior > Hunter', '')
	FilthyPrio.SetPrio('Mantle of the Wayward Vanquisher', 'Hawkey',
		'Hawkey > Mage > Boomy > Feral?* > Frost > Unholy > RDruid', '')
	FilthyPrio.SetPrio('Sanity\'s Bond', 'Sterile/Jess/Cluelust whoever needs rings > RFI/OS',
		'Filler, arguably worse than Auiraya ring', '')
	FilthyPrio.SetPrio('Shawl of Haunted Memories', '', 'Filler', '')
	FilthyPrio.SetPrio('Soulscribe', '', 'Filler, who needs 239 weapons still?', '')
	FilthyPrio.SetPrio('Earthshaper', 'sandra', '', '')
	FilthyPrio.SetPrio('Hammer of Crushing Whispers', '', '', '')
	FilthyPrio.SetPrio('Dark Edge of Depravity', 'sandra', '', '')
	FilthyPrio.SetPrio('Legguards of Cunning Deception', 'koonix', '', '')
	FilthyPrio.SetPrio('Seal of the Betrayed King', 'Tobs', '', '')
	FilthyPrio.SetPrio('Show of Faith', 'Ethos > Chris > Cluelust', 'BiS: Disc > RDruid > RSham', '')
	FilthyPrio.SetPrio('Treads of the False Oracle', '', 'BiS: Boomy, Ele, Fire', '')
	FilthyPrio.SetPrio('Mimiron\'s Head', 'Not tobs cause he was over 9 hours late to do loot with trisp', '', '')

end
