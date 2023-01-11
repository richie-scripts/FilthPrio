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

function FilthyPrio.IsFilthyOfficer()
	if FilthyPrio.realm == filthyRealm and FilthyPrio.guildName == filthyGuild and
		(FilthyPrio.guildRankIndex <= filthyOfficerRank or filthyOfficerAltNames[FilthyPrio.playerName]) then
		return true
	end
	return false
end

function FilthyPrio.buildOfficerPrio()
	FilthyPrio.Print('Hi ' .. FilthyPrio.playerName)
	FilthyPrio.Print('You\'re an Officer in Filthy. Sup?')

	-------------------------
	-- Put prio updates here
	-------------------------

	-- Last updated: 08/12/2022 06:06:54 PM
	FilthyPrio.SetPrio('Cloak of Averted Crisis', 'DE', 'Filler', 'Thor, Chris, Fig OS, Jules')
	FilthyPrio.SetPrio('Shawl of the Old Maid', 'OS/DE', 'Filler', 'Aaron, Shazz')
	FilthyPrio.SetPrio('Shroud of Luminosity', 'RFI/DE', '', 'Thor, Jules, Samme')
	FilthyPrio.SetPrio('Cloak of the Shadowed Sun', 'OS/DE', 'badge cloak is bis> armour set', 'Coonixx OS')
	FilthyPrio.SetPrio('Thunderstorm Amulet', '', '', 'Shazz')
	FilthyPrio.SetPrio('Lost Jewel', 'RFI/DE', 'BIS: Boomy, Demo', 'Chris, Aaron, Samme, Jules')
	FilthyPrio.SetPrio('Seized Beauty', 'DE', '', 'Ethos, Cluelust')
	FilthyPrio.SetPrio('Dying Curse', 'Samme', 'BiS for every caster to save hit elsewhere',
		'Aaron, Cypack, Thor, Heasy, Chris')
	FilthyPrio.SetPrio('Forethought Talisman', 'Ask Jess? > OS/DE', 'BiS throughput after Illustration of the Dragon Soul',
		'Ethos, Cluelust, Sterile')
	FilthyPrio.SetPrio('Heritage', 'OS/DE', 'Slight upgrade over badge neck', 'Coonixx, Tobs, Hovden, Greetings')
	FilthyPrio.SetPrio('Fool\'s Trial', '', 'Filler until Quest neck - prio people last in line',
		'Sandra, Elguapo, Msg, Sterile OS, Tobs UH')
	FilthyPrio.SetPrio('Sand-Worn Band', '', 'Better than JC ring but not bis', 'Fig, Hawkey')
	FilthyPrio.SetPrio('Ruthlessness', 'Sandra > Coonixx? > OS/DE', 'BIS: Frost & Unholy',
		'Tobs, Greetings, Msg, Trisp, hawkey')
	FilthyPrio.SetPrio('Strong-Handed Ring', 'OS/DE', 'BiS: Hunter, Rogue',
		'Inkeyes, Verge, Beanpole, Pili, Died, Elguapo, Chris OS')
	FilthyPrio.SetPrio('Defender\'s Code', 'Hov/Coon?', 'bear OS maybe', 'Trisp OS')
	FilthyPrio.SetPrio('Grim Toll', 'Coonixx > Greetings > Tobs', 'BIS: Feral, Warrior, Frost DK', 'Trisp, Hovden')
	FilthyPrio.SetPrio('Shadow of the Ghoul', 'OS', 'Block set Fig > OS', 'Trisp')
	FilthyPrio.SetPrio('Boots of the Escaped Captive', 'DE', 'Minor upgrade over Wyrmrest exalted boots', 'Chris')
	FilthyPrio.SetPrio('Ousted Bead Necklace', 'DE', 'Badge neck is better.', '')
	FilthyPrio.SetPrio('Haunting Call', '', 'Whoever needs it at the time', '')
	FilthyPrio.SetPrio('Silent Crusader', 'Greetings > Tobs > Hawkey', 'Frost DK > Unholy > Rogue', 'Greetings, Tobs')
	FilthyPrio.SetPrio('Shoulderpads of the Undaunted', 'DE', 'Possibly Koro for the hit', '')
	FilthyPrio.SetPrio('Inevitable Defeat', 'OS/DE', 'Hawkey > the rest', 'Hawkey')
	FilthyPrio.SetPrio('Corpse Scarab Handguards', 'DE', 'Filler', 'Cluelust')
	FilthyPrio.SetPrio('Rescinding Grips', 'DE', 'Worse than tier gloves', '')
	FilthyPrio.SetPrio('Leggings of Atrophy', 'OS/DE', 'Filler', '')
	FilthyPrio.SetPrio('Chains of Adoration', 'Sterile', 'BiS non-quest neck RSham and HPal', 'Cluelust, Jess')
	FilthyPrio.SetPrio('Shield of Assimilation', 'Cluelust > Sterile', 'Second BiS RSham, HPal and Ele', 'Jess')
	FilthyPrio.SetPrio('Mantle of the Locusts', 'RFI/DE', 'BiS: RDruid', 'Shazz')
	FilthyPrio.SetPrio('Sash of the Parlor', 'OS/DE', 'Filler', 'Ethos')
	FilthyPrio.SetPrio('Gemmed Wand of the Nerubians', '', 'BiS:Arcane Mage/Spriest', 'Zlips, Zeforr, Samme, Jules')
	FilthyPrio.SetPrio('Swarm Bindings', '', 'Filler', '')
	FilthyPrio.SetPrio('Dawnwalkers', 'Inkies > Koro', 'BIS: Rogue', 'Verge')
	FilthyPrio.SetPrio('Inexorable Sabatons', 'OS/DE', 'Fig then OS', 'Fig, Trisp OS')
	FilthyPrio.SetPrio('Sabatons of Sudden Revival', 'Tobs > Msg', 'BIS: Unholy', '')
	FilthyPrio.SetPrio('Webbed Death', 'Hunters', 'BIS Rogues and Hunter DW', 'inkies, dof')
	FilthyPrio.SetPrio('Pauldrons of Unnatural Death', 'OS/DE', 'hawkey', 'Hawkey, Trisp OS')
	FilthyPrio.SetPrio('Arachnoid Gold Band', '', '', 'Pili')
	FilthyPrio.SetPrio('Cult\'s Chestguard', '', 'Filler', '')
	FilthyPrio.SetPrio('Tunic of Prejudice', '', '', '')
	FilthyPrio.SetPrio('Atonement Greaves', 'OS/DE', 'Filler', 'Thor')
	FilthyPrio.SetPrio('Gloves of Token Respect', '', 'Arcane Bis - But who first?', 'Heasy')
	FilthyPrio.SetPrio('Faerlina\'s Madness', 'DE', 'No meta.', '')
	FilthyPrio.SetPrio('Epaulets of the Grieving Servant', 'DE', 'Filler', '')
	FilthyPrio.SetPrio('Belt of False Dignity', '', 'Filler', '')
	FilthyPrio.SetPrio('DE', 'OS/DE', 'Also from Boj?', '')
	FilthyPrio.SetPrio('Punctilious Bindings', '', '', 'Samme, Shazz')
	FilthyPrio.SetPrio('Dislocating Handguards', 'Check with Ferals first', 'Filler for Feral, Rogues', 'Inkeyes')
	FilthyPrio.SetPrio('Callous-Hearted Gauntlets', 'OS', 'avoidance set maybe, not bis over tier', 'Hawkey')
	FilthyPrio.SetPrio('Fire-Scorched Greathelm', 'DE', 'No meta poop', '')
	FilthyPrio.SetPrio('Widow\'s Fury', 'Msg?', 'Unholy fillter?', 'Tobs')
	FilthyPrio.SetPrio('Idol of Worship', 'DE', 'Also from Boj?', 'Coonixx')
	FilthyPrio.SetPrio('Bracers of the Tyrant', '', 'BIS Frost - (Greetings needs for expertise cap)', 'Tobs, Greetings')
	FilthyPrio.SetPrio('Aged Winter Cloak', '', 'BIS War and maybe Feral', 'Trisp, Coonixx, Hov')
	FilthyPrio.SetPrio('Undiminished Battleplate', 'DE', 'Filler', '')
	FilthyPrio.SetPrio('Digested Silken Robes', 'DE', '', '')
	FilthyPrio.SetPrio('Quivering Tunic', 'OS/DE', 'Filler', 'Cluelust ')
	FilthyPrio.SetPrio('Cowl of the Perished', '', '', '')
	FilthyPrio.SetPrio('Helm of Diminished Pride', 'DE', 'Bad', '')
	FilthyPrio.SetPrio('Distorted Limbs', '', '', '')
	FilthyPrio.SetPrio('Wraith Strike', '', '', 'Died')
	FilthyPrio.SetPrio('Matriarch\'s Spawn', '', 'Demo/Aff', 'Aaron, Cypack, Azz')
	FilthyPrio.SetPrio('Mantle of Scattered Kinship', 'OS/DE', '', 'Chris')
	FilthyPrio.SetPrio('Infectious Skitterer Leggings', 'DE', '', 'Coonixx')
	FilthyPrio.SetPrio('The Jawbone', 'OS/DE', 'BIS Ret AoE or something... (because overall damage is bis)', 'Koro')
	FilthyPrio.SetPrio('Torn Web Wrapping', 'Beanpole > Elguapo', 'BIS Hunter?', 'Pili')
	FilthyPrio.SetPrio('Ablative Chitin Girdle', 'Hawkey > Trisp OS > OS/DE', 'BIS: Prot Pal > Blood DK > Prot War', 'Fig')
	FilthyPrio.SetPrio('Sinner\'s Bindings', 'Hovden > Rogues with Dawnwalkers', 'BiS: Feral, Rogue', 'Coonixx')
	FilthyPrio.SetPrio('Bindings of the Hapless Prey', 'Trisp OS > OS/DE', '', 'Fig')
	FilthyPrio.SetPrio('Gloves of Calculated Risk', 'DE', 'Hunter filler', 'Pili')
	FilthyPrio.SetPrio('Crude Discolored Battlegrips', 'Sterile? > OS/DE', 'Filler', 'Trisp, Koro')
	FilthyPrio.SetPrio('Boots of Septic Wounds', '', '', '')
	FilthyPrio.SetPrio('Boots of Persuasion', '', '', 'Samme')
	FilthyPrio.SetPrio('Surplus Limb', 'Samme > Jules', 'Arcane mage/Spriest', 'Heasy')
	FilthyPrio.SetPrio('Waistguard of Divine Grace', 'Sterile > Saicere > RFI', 'Super minor for both', '')
	FilthyPrio.SetPrio('Libram of Tolerance', 'DE', 'meh', '')
	FilthyPrio.SetPrio('Girdle of the Gambit', 'DE', 'bis RSham', 'Cluelust, Thor')
	FilthyPrio.SetPrio('Sash of Solitude', 'Ethos > RFI', '', '')
	FilthyPrio.SetPrio('Totem of Hex', '', '', 'Died, Cluelust')
	FilthyPrio.SetPrio('Hero\'s Surrender', 'DE', '', 'Jolie')
	FilthyPrio.SetPrio('Split Greathammer', 'dks? > trisp tank wep?', 'Unholy fillter?', 'msg')
	FilthyPrio.SetPrio('Arrowsong', '', 'Physical next? Pretty sure beanpole has it', 'Beanpole')
	FilthyPrio.SetPrio('Belt of the Tortured', 'Sandra > Coonixx if needs hit > trisp arms', 'ret/rogue bis - prio rogue',
		'Inkeyes, Verge, Hovden')
	FilthyPrio.SetPrio('Fleshless Girdle', '', 'block set but most likely wasted item', '')
	FilthyPrio.SetPrio('Tunic of Indulgence', '', 'Filler', 'Coonixx')
	FilthyPrio.SetPrio('Chestguard of the Exhausted', '', 'tier just better both tanks OS', '')
	FilthyPrio.SetPrio('Fallout Impervious Tunic', 'DE', '', 'Thor')
	FilthyPrio.SetPrio('Cowl of Vanity', 'RFI', '', 'Zlips, Samme, Heasy')
	FilthyPrio.SetPrio('Desecrated Past', 'OS/DE', '', '')
	FilthyPrio.SetPrio('Plague Igniter', '', '', '')
	FilthyPrio.SetPrio('Sympathetic Amice', 'RFI/DE', '', '')
	FilthyPrio.SetPrio('Mantle of the Fatigued Sage', '', '', '')
	FilthyPrio.SetPrio('Spaulders of Incoherence', 'RFI/DE', 'worse than tier', '')
	FilthyPrio.SetPrio('Bracers of Liberation', 'Jess if no Valor bracers', '', '')
	FilthyPrio.SetPrio('Twilight Mist', '', 'Rogue / Hunter filler?', '')
	FilthyPrio.SetPrio('Origin of Nightmares', '', 'fillter - prio kitties', '')
	FilthyPrio.SetPrio('Depraved Linked Belt', 'Beanpole', 'BIS: Hunter, Enhance - 2nd bis?', 'Pili, Died, Elguapo')
	FilthyPrio.SetPrio('Girdle of Chivalry', 'Tobs > Koro until leather belt?',
		'BIS Unholy > Frost DK - depending on setup, ret',
		'Msg, Greetings')
	FilthyPrio.SetPrio('Slime Stream Bands', 'Elguapo', 'BIS: Hunter, Enhance', 'Beanpole, Pili, Died')
	FilthyPrio.SetPrio('Sabatons of Endurance', 'Hawkey', 'both tanks bis   fig>hawkey', 'Fig')
	FilthyPrio.SetPrio('Cover of Silence', 'DE', 'No meta', '')
	FilthyPrio.SetPrio('Riveted Abomination Leggings', 'Tobs', 'BIS Unholy', 'Msg')
	FilthyPrio.SetPrio('Benefactor\'s Gauntlets', 'BoE Sell', 'BoE', 'Died')
	FilthyPrio.SetPrio('Wraps of the Persecuted', 'RFI/DE', '', 'Zeforr')
	FilthyPrio.SetPrio('Faceguard of the Succumbed', 'DE/OS', '', 'Jess, Sterile')
	FilthyPrio.SetPrio('Headpiece of Fungal Bloom', 'DE', '', 'Chris')
	FilthyPrio.SetPrio('Pauldrons of the Abandoned', 'DE', '', '')
	FilthyPrio.SetPrio('Spire of Sunset', 'RFI/DE', '', 'Cluelust')
	FilthyPrio.SetPrio('Cincture of Polarity', 'Thor', '', '')
	FilthyPrio.SetPrio('Legplates of the Lost Conqueror', '', 'Prot > Holy > RFI',
		'Fig, Jess, Sterile x 2, Koro, Shazz, Fig OS')
	FilthyPrio.SetPrio('Legplates of the Lost Protector', '', 'Enhance > Hunter > Resto > Fury',
		'Died, Beanpole, Pili, Cluelust, Trisp OS, Elguapo, Died OS')
	FilthyPrio.SetPrio('Legplates of the Lost Vanquisher', '', 'Frost DK > Rogue > Mage',
		'Greetings, Tobs, Inkies, Verge, Jules, Heasy, Samme, Coonixx, Hawkey, Msg OS, Chris OS')
	FilthyPrio.SetPrio('Tunic of Masked Suffering', 'RFI/DE', 'Filler', 'Beanpole, Elguapo')
	FilthyPrio.SetPrio('Crippled Treads', '', 'Filler hunter / enh', 'Aaron?, Died')
	FilthyPrio.SetPrio('Gauntlets of the Disobedient', '', 'block set', '')
	FilthyPrio.SetPrio('Robes of Mutation', 'DE', '', '')
	FilthyPrio.SetPrio('Poignant Sabatons', 'Sell', 'BoE', 'Sterile, Jess')
	FilthyPrio.SetPrio('Gloves of the Fallen Wizard', '', '', '')
	FilthyPrio.SetPrio('Legguards of the Undisturbed', 'RFI', '', '')
	FilthyPrio.SetPrio('Accursed Spine', 'RFI', '', 'Chris, Ethos')
	FilthyPrio.SetPrio('Belt of Potent Chanting', '', '', '')
	FilthyPrio.SetPrio('Bands of Impurity', '', '', 'Cypack, Zlips')
	FilthyPrio.SetPrio('Libram of Radiance', 'DE', '', '')
	FilthyPrio.SetPrio('Angry Dread', 'Greetings > Tobs > Greetings > Tobs', 'BIS Frost dks', '')
	FilthyPrio.SetPrio('Shoulderguards of Opportunity', '', 'People looking for the next opportunity', '')
	FilthyPrio.SetPrio('Spinning Fate', 'dof', 'good hit option for thrown, consult war/rogue', 'Trisp, Inkies')
	FilthyPrio.SetPrio('Thrusting Bands', 'Any rogues/feral need expertise/hit?', '', 'Koro')
	FilthyPrio.SetPrio('Breastplate of Tormented Rage', '', 'not better than tier', '')
	FilthyPrio.SetPrio('Iron-Spring Jumpers', '', 'BoE item - decent hit piece for warr/dk', '')
	FilthyPrio.SetPrio('Leggings of Colossal Strides', 'OS/DE', '', '')
	FilthyPrio.SetPrio('Eruption-Scarred Boots', 'OS/DE', 'Filler', '')
	FilthyPrio.SetPrio('Chestguard of Bitter Charms', 'OS/DE', 'bad', '')
	FilthyPrio.SetPrio('Heigan\'s Putrid Vestments', 'ask me', 'BIS: Spriest', '')
	FilthyPrio.SetPrio('Serene Echoes', 'OS/DE', '', 'Shazz')
	FilthyPrio.SetPrio('Gloves of the Dancing Bear', 'DE', '', '')
	FilthyPrio.SetPrio('Helm of Pilgrimage', 'DE', 'no meta', '')
	FilthyPrio.SetPrio('Legguards of the Apostle', 'OS/DE', '', 'Koro')
	FilthyPrio.SetPrio('Bindings of the Decrepit', 'OS/DE', '', 'Cluelust, Died OS')
	FilthyPrio.SetPrio('Sigil of Awareness', 'Hawkey > Msg', 'BIS Frost DK', 'Greetings, Tobs')
	FilthyPrio.SetPrio('Cryptfiend\'s Bite', 'Hunters/DE', 'fillter - prio kitties', 'Elguapo')
	FilthyPrio.SetPrio('The Undeath Carrier', 'OS/DE', 'fillter - prio kitties', 'Coonixx, Hov, Elguapo')
	FilthyPrio.SetPrio('Stalk-Skin Belt', 'Ferals > Trisp', 'BIS: Feral, Arms', '')
	FilthyPrio.SetPrio('Footwraps of Vile Deceit', 'Verge? > OS/DE', 'BiS: Feral', 'hov, coonixx, Inkies')
	FilthyPrio.SetPrio('Grotesque Handgrips', 'OS/DE', 'Filler', 'Beanpole')
	FilthyPrio.SetPrio('Greaves of Turbulence', '', 'block set', 'Trisp')
	FilthyPrio.SetPrio('The Hand of Nerub', '', 'Hunter filler?', '')
	FilthyPrio.SetPrio('Vest of Vitality', 'OS/DE', '', '')
	FilthyPrio.SetPrio('Boots of Impetuous Ideals', '', 'BoE', 'Jules')
	FilthyPrio.SetPrio('Cowl of Innocent Delight', 'DE', 'no meta', '')
	FilthyPrio.SetPrio('The Impossible Dream', '', '', '')
	FilthyPrio.SetPrio('Girdle of Unity', 'DE', '', '')
	FilthyPrio.SetPrio('Fading Glow', 'OS/DE', '', 'Zeforr')
	FilthyPrio.SetPrio('Mantle of the Lost Conqueror', 'OS', 'Prot > ?? (Holy, Ret, Disc, Shadow, Demo, Aff)',
		'Fig, Sandra, Aaron, Ethos, Sterile, Jess, Cypack, Shazz, Jess OS')
	FilthyPrio.SetPrio('Mantle of the Lost Protector', 'RFI or OS > OS', 'Enhance > ?? (Arms, Hunter, Resto)',
		'Died, Trisp, Cluelust, Pili, Beanpole, Died, Thor OS')
	FilthyPrio.SetPrio('Mantle of the Lost Vanquisher', '', 'Balance > Frost DK > Blood DK > Rogue > Mage',
		'Chris, Greetings, Tobs, Hovden, Samme, Verge, Hawkey?, Inkies, Jules, Heasy, Chris OS, Coonixx OS')
	FilthyPrio.SetPrio('Chestpiece of Suspicion', '', 'Filler for suspicious folk', 'Verge')
	FilthyPrio.SetPrio('Legplates of Double Strikes', '', 'BiS Arms/Fury', 'Trisp')
	FilthyPrio.SetPrio('Boots of Forlorn Wishes', 'ethos will take these if aaron doesnt give to casters', '', '')
	FilthyPrio.SetPrio('Faithful Steel Sabatons', 'OS/DE', '', '')
	FilthyPrio.SetPrio('Gauntlets of Guiding Touch', 'OS/DE', 'Good but Hpals run tier', '')
	FilthyPrio.SetPrio('Girdle of Recuperation', 'OS/DE', 'Ele Shaman', 'Cluelust, Died')
	FilthyPrio.SetPrio('Bands of Mutual Respect', '', 'Ele Shaman', 'Thor')
	FilthyPrio.SetPrio('Bindings of the Expansive Mind', '', 'Filler', 'Shazz')
	FilthyPrio.SetPrio('Esteemed Bindings', '', '', 'Chris')
	FilthyPrio.SetPrio('Idol of the Shooting Star', 'DE', '', '')
	FilthyPrio.SetPrio('Spaulders of Egotism', 'Sell', 'BoE', '')
	FilthyPrio.SetPrio('Shoulderpads of Secret Arts', 'OS/DE', '', '')
	FilthyPrio.SetPrio('Totem of Dueling', '', 'legitimate duelers only', 'Died?')
	FilthyPrio.SetPrio('Girdle of Razuvious', 'Tobs > Trisp', 'BiS Arms/Frost DK', '')
	FilthyPrio.SetPrio('Bracers of the Unholy Knight', '', 'BIS: dk > not in figs set', 'Hawkey')
	FilthyPrio.SetPrio('Hood of the Exodus', 'Rogue/War?', 'Filler', 'Coonixx, Hov')
	FilthyPrio.SetPrio('Helm of Vital Protection', '', 'pretty decent helm very similar to tier but 4pc', 'Trisp')
	FilthyPrio.SetPrio('Leggings of Fleeting Moments', 'DE', '', '')
	FilthyPrio.SetPrio('Leggings of Failed Escape', 'Pili', 'BiS: Hunter', 'Beanpole, Elguapo')
	FilthyPrio.SetPrio('Libram of Resurgence', 'DE', '', 'Fig')
	FilthyPrio.SetPrio('Gothik\'s Cowl', '', '', '')
	FilthyPrio.SetPrio('Helm of Unleashed Energy', 'OS/DE', 'Filler for Rsham until Tier', 'Cluelust, Thor')
	FilthyPrio.SetPrio('Life and Death', 'Azz', '', 'Samme, Cypack, Sterile')
	FilthyPrio.SetPrio('Shackled Cinch', 'DE', '', '')
	FilthyPrio.SetPrio('Idol of Awakening', 'OS/DE', '', 'Chris')
	FilthyPrio.SetPrio('Touch of Horror', 'OS/DE', '', '')
	FilthyPrio.SetPrio('Abetment Bracers', 'Sterile', '', 'Jess')
	FilthyPrio.SetPrio('Bindings of Yearning', 'Sell', 'Prot > Demo > Aff > Ret > Holy', '')
	FilthyPrio.SetPrio('Burdened Shoulderplates', 'Fig', 'block set', '')
	FilthyPrio.SetPrio('Bracers of Unrelenting Attack', 'Msg > Trisp?', 'BIS Unholy, Arms, Frost - depending on setup', '')
	FilthyPrio.SetPrio('Breastplate of the Lost Conqueror', 'Sterile OS', 'Tank > DPS > Healer',
		'Fig, Aaron, Cypack, Koro, Jess, Sterile')
	FilthyPrio.SetPrio('Breastplate of the Lost Protector', '', 'Enhance > Ele > Resto > Arms',
		'Died, Thor, Cluelust, Trisp?, bean, Elguapo, Pili')
	FilthyPrio.SetPrio('Breastplate of the Lost Vanquisher', '',
		'Balance > Blood DK > Frost/Unholy > Rogue > Mage (Give 10 man to Mage > Rogue)',
		'Chris, Hawkey, Msg, Greetings, Tobs, Inkies, Verge, Samme, Coonixx')
	FilthyPrio.SetPrio('Zeliek\'s Gauntlets', 'Tobs', 'BiS Unholy DK/decent for fury', 'Msg')
	FilthyPrio.SetPrio('Helm of the Grave', '', 'Filler', '')
	FilthyPrio.SetPrio('Broken Promise', 'Msg UH? > Tobs UH? > OS/DE', 'Tank stuff', 'Hawkey, Fig')
	FilthyPrio.SetPrio('Final Voyage', 'Inkies?', 'Hunters if they want, then melee', 'Verge')
	FilthyPrio.SetPrio('Gloves of Peaceful Death', 'OS/DE', '', '')
	FilthyPrio.SetPrio('Leggings of Voracious Shadows', 'OS/DE', '', 'Thor, Cluelust')
	FilthyPrio.SetPrio('Urn of Lost Memories', 'Ethos > OS/DE', '', '')
	FilthyPrio.SetPrio('Mantle of the Corrupted', 'DE', '', '')
	FilthyPrio.SetPrio('Damnation', 'OS/DE', '', 'Jules')
	FilthyPrio.SetPrio('Armageddon', '', 'fillter', 'Koro, Greetings')
	FilthyPrio.SetPrio('Breastplate of Frozen Pain', '', 'Filler', 'Sterile, Sandra')
	FilthyPrio.SetPrio('Boots of the Great Construct', 'OS/DE', 'BIS Enh?', 'Died')
	FilthyPrio.SetPrio('Gloves of Fast Reactions', 'Sell', 'BoE', 'Coonixx')
	FilthyPrio.SetPrio('Platehelm of the Great Wyrm', 'DE', 'No meta', '')
	FilthyPrio.SetPrio('Heroic Key to the Focusing Iris', '',
		'Prot Pally > Demo > Dps Warrior = Aff = Ele >= Hunter = Enhance = Ret = Shadow = Boomy = Fire = Arcane > Unholy DK > Frost DK > Hpal > Hpriest = Disc > Rsham > Prot Warrior > Rdruid = Bear = Blood DK'
		, 'Fig, Thor, Trisp, Pili, Chriski, Zlops, Sweet Azz, cy, Aaron')
	FilthyPrio.SetPrio('Icy Blast Amulet', 'Hunter', '2nd BIS for Rogues', 'Inkies, Verge')
	FilthyPrio.SetPrio('Key to the Focusing Iris', '', '10 man key to keep track',
		'Squirties, Beanpole, Coonixx, Heasy, Died, Cypack, Aaron, Zeforr, Inkies, Hellgrazer')
	FilthyPrio.SetPrio('Murder', 'OS/DE', 'Rogue / Hunter filler?', 'Verge')
	FilthyPrio.SetPrio('Gatekeeper', 'Hawkey > OS/DE', 'fig>hawkey bis', 'Fig, Trisp')
	FilthyPrio.SetPrio('Bandit\'s Insignia', 'OS/DE', 'dogshit', '')
	FilthyPrio.SetPrio('Rune of Repulsion', '', 'avoidance set maybe, weird item', 'Hawkeydk')
	FilthyPrio.SetPrio('Sympathy', '', 'Filler', '')
	FilthyPrio.SetPrio('Gloves of Grandeur', '', '', '')
	FilthyPrio.SetPrio('Bone-Inlaid Legguards', 'OS/DE', 'meh', '')
	FilthyPrio.SetPrio('Legguards of the Boneyard', '', '', '')
	FilthyPrio.SetPrio('Legwraps of the Defeated Dragon', 'RFI/DE', 'Filler', 'Shazz, Cypack')
	FilthyPrio.SetPrio('Ceaseless Pity', 'DE', '', '')
	FilthyPrio.SetPrio('Cosmic Lights', '', 'Filler', '')
	FilthyPrio.SetPrio('Ring of Decaying Beauty', 'RFI/DE', '', 'Cluelust, Jess')
	FilthyPrio.SetPrio('Noble Birthright Pauldrons', 'RFI', 'Hpals run tier instead', '')
	FilthyPrio.SetPrio('Extract of Necromantic Power', 'OS/DE', 'BiS: Spriest', 'Zeforr, Zlips')
	FilthyPrio.SetPrio('Soul of the Dead', 'Maybe Hpal? > OS/DE', 'Maybe BiS: RSham, HPal', 'Cluelust')
	FilthyPrio.SetPrio('Drape of the Deadly Foe', 'Bean', 'BiS: Rogue, Hunter, Frost, Unholy, Ret, Feral', 'Verge, Msg')
	FilthyPrio.SetPrio('Calamity\'s Grasp', 'Died > Rogues', 'BiS: Combat and Enh', '')
	FilthyPrio.SetPrio('Boundless Ambition', 'Fig > Trisp OS', 'BiS: Blood and Prot (Armor)', 'Hawkey, Hovden OS')
	FilthyPrio.SetPrio('Wall of Terror', 'OS/DE', 'BiS: Prot', 'Fig, Trisp, Jess, Sterile')
	FilthyPrio.SetPrio('Last Laugh', '', 'BiS: Prot > Unh > Blood', 'Fig, Msg')
	FilthyPrio.SetPrio('Sinister Revenge', 'Hunters', 'BIS Assassin Rogue & Hunter DW', 'Inkies, Verge, Elguapo')
	FilthyPrio.SetPrio('Envoy of Mortality', 'Bean > Elguapo > Trisp > Rogues',
		'BiS: Hunter and Rogue - consider pili for dwarf gun prio', 'Pili')
	FilthyPrio.SetPrio('Betrayer of Humanity', 'Trisp (fury) > Hunter?', 'BiS: Arms, Ret, Unholy, Blood?', 'Trisp, Pili')
	FilthyPrio.SetPrio('Journey\'s End', '', 'BiS: Feral/Hunter - Both have 25m Heigen', 'Coonixx')
	FilthyPrio.SetPrio('Cape of the Unworthy Wizard', '', 'BiS: Disc/Demo', 'Ethos')
	FilthyPrio.SetPrio('Leggings of Mortal Arrogance', 'RFI/DE', 'BiS: Disc/Demo', 'Ethos, Aaron, Zlips, Zeforr')
	FilthyPrio.SetPrio('The Turning Tide', 'Jules', 'BiS HPal weapon after a long line of casters', 'Aaron')
	FilthyPrio.SetPrio('Torch of Holy Fire', 'Thor', 'BiS: Disc, RDruid, RSham, Ele, Spriest', 'Jess')
	FilthyPrio.SetPrio('Voice of Reason', 'Thor > Sterile > Cluelust > Jess', 'BiS: Ele, RSham and HPal', '')
	FilthyPrio.SetPrio('Signet of Manifested Pain', 'Samme',
		'BiS: Literally every SP user, reward pumpers (possibly enh bis too)',
		'Heasy')
	FilthyPrio.SetPrio('Crown of the Lost Conqueror', 'RFI MS > OS', 'Prot > Demo > Aff > Ret',
		'Fig, Aaron, Cypack, Azz, Sandra, Sterile OS')
	FilthyPrio.SetPrio('Crown of the Lost Protector', 'Hunter filler?', 'Ele > Arms > Resto', 'Thor, Trisp, Cluelust')
	FilthyPrio.SetPrio('Crown of the Lost Vanquisher', 'Hov > Mages (ask Aaron)', '',
		'Chris, Hawkey, Inkies, Verge, Coonixx')
	FilthyPrio.SetPrio('Hyaline Helm of the Sniper', '', 'Filler', '')
	FilthyPrio.SetPrio('Dragon Brood Legguards', '', 'Filler', 'Trisp')
	FilthyPrio.SetPrio('Concealment Shoulderpads', 'RFI/DE', 'Filler', 'Coonixx, Verge')
	FilthyPrio.SetPrio('Fury of the Five Flights', 'Beanpole > Inkies/Verge/Msg BiS if no DMC',
		'BiS: Ret, Trap-weave Hunter',
		'Sandra, Pili, Elguapo')
	FilthyPrio.SetPrio('Chestplate of the Great Aspects', 'OS/DE', 'Filler', '')
	FilthyPrio.SetPrio('Wyrmrest Band', 'Saicere > RFI/OS', 'BiS: Disc, top 4 option for the other healers',
		'Sterile, Ethos, Cluelust')
	FilthyPrio.SetPrio('Council Chamber Epaulets', 'OS/DE', 'Filler', '')
	FilthyPrio.SetPrio('Mantle of the Eternal Sentinel', 'Sell',
		'BoE, good for Ele if they dont need hit, filler for HPal/RSham/Balance', '')
	FilthyPrio.SetPrio('Illustration of the Dragon Soul', 'Zef > Who Pumps?', 'yell at ethos if this buff ever drops',
		'Ethos')
	FilthyPrio.SetPrio('Staff of Restraint', 'OS/DE', 'Filler, Everyone wants 1h+oh over staves', '')
	FilthyPrio.SetPrio('Gauntlets of the Lost Conqueror', 'Hpals > Spriests',
		'fig > demo > hpal > spriest > ret = aff > disc',
		'Fig, Icantwalk, Shazz, Aaron, Cypack')
	FilthyPrio.SetPrio('Gauntlets of the Lost Protector', '', 'Enh > ??', 'Died, Trisp, Thor, Died, Elguapo, Died OS')
	FilthyPrio.SetPrio('Gauntlets of the Lost Vanquisher', 'Mages', 'Balance > Blood DK > Frost DK > Arcane',
		'Chris, Greetings, Tobs')
	FilthyPrio.SetPrio('Dragonstorm Breastplate', 'OS/DE', 'Blood?', 'Greetings, Trisp OS')
	FilthyPrio.SetPrio('Upstanding Spaulders', 'RFI', 'Filler', '')
	FilthyPrio.SetPrio('The Sanctum\'s Flowing Vestments', 'Samme', 'BiS: Spriest, Arcane', 'Zeforr, Jules, heasy')
	FilthyPrio.SetPrio('Bountiful Gauntlets', 'RFI', 'Filler', 'Cluelust, Thor')
	FilthyPrio.SetPrio('Obsidian Greathelm', 'Tobs > Trisp? > koro', 'BiS: Unholy and Frost/fury', 'Greetings, Msg')
	FilthyPrio.SetPrio('Leggings of the Honored', 'Rogues?', 'BiS: Feral, and an option for Rogue/Ret', 'Hov, Coon, dof')
	FilthyPrio.SetPrio('Pennant Cloak', '',
		'Highest ilvl cloak this phase + only one with a socket, bis for basically every SP user, reward pumpers', 'Zeforr')
	FilthyPrio.SetPrio('Headpiece of Reconciliation', '', 'BiS: RDruid', 'Chris')
	FilthyPrio.SetPrio('Unsullied Cuffs', '', 'BiS: Disc, Spriest, Arcane, Demo, Aff, Balance, RDruid', 'Jules, Samme')
	FilthyPrio.SetPrio('Reins of the Twilight Drake', '', '', '')
	FilthyPrio.SetPrio('Chestguard of the Recluse', 'Verge > Coonixx > Trisp', 'BiS: Cat, Rogue, Arms, Fury',
		'Inkies, Hovden')
	FilthyPrio.SetPrio('Boots of Renewed Flight', 'Beanpole', 'BIS: Hunter', 'Pili, Elguapo')
	FilthyPrio.SetPrio('Melancholy Sabatons', 'Tobs', 'BiS: Arms / Frost / Unholy / Ret', 'Trisp, Greetings, Msg, Koro')
	FilthyPrio.SetPrio('Frosted Adroit Handguards', 'Hovden', 'BiS: Rogue, Cat, Ret, Arms, Hunter',
		'Pili, Beanpole, Elguapo, Big Coon')
	FilthyPrio.SetPrio('Blue Aspect Helm', 'Beanpole > Elguapo',
		'BiS: Enh/Hunters - reward the biggest pumper! Who will win? Bean or Died? died imo', 'Died, Pili')
	FilthyPrio.SetPrio('Legplates of Sovereignty', 'OS/DE', 'BiS: Blood and Prot', 'Fig, Hawkey, Trisp OS')
	FilthyPrio.SetPrio('Mark of Norgannon', 'OS/DE', '', '')
	FilthyPrio.SetPrio('Blanketing Robes of Snow', 'OS/DE', 'BiS: Disc', 'Ethos, Zeforr')
	FilthyPrio.SetPrio('Tunic of the Artifact Guardian', 'OS/DE',
		'Check what mindblown is using, 4pc + off chest or 4pc + off gloves'
		, 'Cluelust')
	FilthyPrio.SetPrio('Arcanic Tramplers', '', 'BiS: Disc, Spriest, Arcane, Demo, Aff, Balance, RDruid',
		'Azz, Zeforr, Zlips')
	FilthyPrio.SetPrio('Boots of Healing Energies', 'RFI/DE', '', 'Saicere, Sterile')
	FilthyPrio.SetPrio('Winter Spectacle Gloves', 'RFI', 'BiS RSham non-tier gloves', 'Cluelust')
	FilthyPrio.SetPrio('Hood of Rationality', 'RFI', 'BiS Disc, Spriest (and Fire)', 'Zeforr, Ethos, Zlips')
	FilthyPrio.SetPrio('Leggings of the Wanton Spellcaster', '', 'BiS for every caster dps except maybe Arcane', '')
	FilthyPrio.SetPrio('Elevated Lair Pauldrons', 'RFI > OS', 'Filler', 'Fig')
	FilthyPrio.SetPrio('Mantle of Dissemination', 'Zeforr > RFI', 'Bis shadow', 'Zlips')
	FilthyPrio.SetPrio('Spaulders of Catatonia', 'Chris want? > OS', 'Filler', '')
	FilthyPrio.SetPrio('Living Ice Crystals', 'Sterile > PVP RFI', 'A bit shit', '')
	FilthyPrio.SetPrio('Leash of Heedless Magic', '', 'BiS Disc, Spriest, Arcane, Balance, RDruid', 'Jules')
	FilthyPrio.SetPrio('Unravelling Strands of Sanity', 'OS/DE', 'BiS: Resto Druid', 'Chris')
	FilthyPrio.SetPrio('Reins of the Azure Drake', 'Tobs for making this sick addon',
		'Frost DK BiS - because Azure is like Frost.',
		'')


end
