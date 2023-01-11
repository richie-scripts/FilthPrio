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

	-- Last updated: 11/01/2023 03:14:25 PM
	FilthyPrio.SetPrio('Cloak of Averted Crisis', 'DE', 'Filler', 'Thor, Chris, Fig OS, Jules, Died OS')
	FilthyPrio.SetPrio('Shawl of the Old Maid', 'OS/DE', 'Filler', 'Aaron, Shazz')
	FilthyPrio.SetPrio('Shroud of Luminosity', 'RFI/DE', '', 'Thor, Jules, Samme, Died')
	FilthyPrio.SetPrio('Cloak of the Shadowed Sun', 'OS/DE', 'badge cloak is bis> armour set', 'Coonixx OS')
	FilthyPrio.SetPrio('Thunderstorm Amulet', '', '', 'Shazz')
	FilthyPrio.SetPrio('Lost Jewel', 'RFI/DE', 'BIS: Boomy, Demo', 'Chris, Aaron, Samme, Jules, Cypack')
	FilthyPrio.SetPrio('Seized Beauty', 'DE', '', 'Ethos, Cluelust')
	FilthyPrio.SetPrio('Dying Curse', '', 'BiS for every caster to save hit elsewhere',
		'Aaron, Cypack, Thor, Heasy, Zeforr, Chris, Zlips')
	FilthyPrio.SetPrio('Forethought Talisman', 'Ask Jess? > OS/DE', 'BiS throughput after Illustration of the Dragon Soul',
		'Ethos, Cluelust, Sterile')
	FilthyPrio.SetPrio('Heritage', 'OS/DE', 'Slight upgrade over badge neck',
		'Coonixx OS, Tobs OS, Hovden OS, Greetings OS, Trisp OS')
	FilthyPrio.SetPrio('Fool\'s Trial', '', 'Filler until Quest neck - prio people last in line',
		'Sandra, Elguapo, Msg, Sterile OS, Tobs UH, Verge')
	FilthyPrio.SetPrio('Sand-Worn Band', '', 'Better than JC ring but not bis', 'Fig, Hawkey')
	FilthyPrio.SetPrio('Ruthlessness', '', 'BIS: Frost & Unholy', 'Tobs, Greetings, Msg, Sandra, Trisp')
	FilthyPrio.SetPrio('Strong-Handed Ring', 'OS/DE > Hovden?', 'BiS: Hunter, Rogue',
		'Inkeyes, Verge, Beanpole, Pili, Died, Elguapo, Chris OS, Coonixx')
	FilthyPrio.SetPrio('Defender\'s Code', 'Hov/Coon? > OS/DE', 'bear OS maybe', 'Trisp OS, Fig')
	FilthyPrio.SetPrio('Grim Toll', 'Tobs OS?', 'BIS: Feral, Warrior, Frost DK', 'Trisp, Hovden, Coonixx, Greetings, Hawkey')
	FilthyPrio.SetPrio('Shadow of the Ghoul', 'OS', 'Block set Fig > OS', 'Trisp')
	FilthyPrio.SetPrio('Boots of the Escaped Captive', 'DE', 'Minor upgrade over Wyrmrest exalted boots', 'Chris')
	FilthyPrio.SetPrio('Ousted Bead Necklace', 'DE', 'Badge neck is better.', '')
	FilthyPrio.SetPrio('Haunting Call', 'RFI/DE', 'Whoever needs it at the time', 'Shazz')
	FilthyPrio.SetPrio('Silent Crusader', 'Hawkey > Tobs', 'Frost DK > Unholy > Rogue', 'Greetings, Tobs, Hawkey')
	FilthyPrio.SetPrio('Shoulderpads of the Undaunted', 'DE', 'Possibly Koro for the hit', '')
	FilthyPrio.SetPrio('Inevitable Defeat', 'OS/DE', 'Hawkey > the rest', 'Hawkey')
	FilthyPrio.SetPrio('Corpse Scarab Handguards', 'DE', 'Filler', 'Cluelust')
	FilthyPrio.SetPrio('Rescinding Grips', 'DE', 'Worse than tier gloves', '')
	FilthyPrio.SetPrio('Leggings of Atrophy', 'OS/DE', 'Filler', '')
	FilthyPrio.SetPrio('Chains of Adoration', 'Sterile', 'BiS non-quest neck RSham and HPal', 'Cluelust, Jess')
	FilthyPrio.SetPrio('Shield of Assimilation', 'Cluelust > Sterile', 'Second BiS RSham, HPal and Ele', 'Jess')
	FilthyPrio.SetPrio('Mantle of the Locusts', 'RFI/DE', 'BiS: RDruid', 'Shazz')
	FilthyPrio.SetPrio('Sash of the Parlor', 'OS/DE', 'Filler', 'Ethos')
	FilthyPrio.SetPrio('Gemmed Wand of the Nerubians', '', 'BiS:Arcane Mage/Spriest', 'Zlips, Zeforr, Samme, Jules, Ethxs')
	FilthyPrio.SetPrio('Swarm Bindings', '', 'Filler', '')
	FilthyPrio.SetPrio('Dawnwalkers', 'Koro', 'BIS: Rogue', 'Verge, Inkies')
	FilthyPrio.SetPrio('Inexorable Sabatons', 'OS/DE', 'Fig then OS', 'Fig, Trisp OS')
	FilthyPrio.SetPrio('Sabatons of Sudden Revival', 'Msg', 'BIS: Unholy', 'Tobs')
	FilthyPrio.SetPrio('Webbed Death', 'Hunters', 'BIS Rogues and Hunter DW', 'inkies, dof')
	FilthyPrio.SetPrio('Pauldrons of Unnatural Death', 'OS/DE', 'hawkey', 'Hawkey, Trisp OS, Fig')
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
	FilthyPrio.SetPrio('Widow\'s Fury', '', 'Unholy fillter?', '')
	FilthyPrio.SetPrio('Idol of Worship', 'DE', 'Also from Boj?', 'Coonixx')
	FilthyPrio.SetPrio('Bracers of the Tyrant', '', 'BIS Frost - (Greetings needs for expertise cap)', 'Tobs, Greetings')
	FilthyPrio.SetPrio('Aged Winter Cloak', 'Beanpole', 'BIS War and maybe Feral', 'Trisp, Coonixx, Hov, Elguapo, Pili')
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
	FilthyPrio.SetPrio('Torn Web Wrapping', 'Elguapo', 'BIS Hunter?', 'Pili, Beanpole')
	FilthyPrio.SetPrio('Ablative Chitin Girdle', 'Trisp OS > OS/DE', 'BIS: Prot Pal > Blood DK > Prot War', 'Fig, Hawkey')
	FilthyPrio.SetPrio('Sinner\'s Bindings', 'Inkies > Verge > Hovden', 'BiS: Feral, Rogue', 'Coonixx')
	FilthyPrio.SetPrio('Bindings of the Hapless Prey', 'OS/DE', '', 'Fig, Trisp OS')
	FilthyPrio.SetPrio('Gloves of Calculated Risk', 'DE', 'Hunter filler', 'Pili')
	FilthyPrio.SetPrio('Crude Discolored Battlegrips', 'Sterile? > OS/DE', 'Filler', 'Trisp, Koro')
	FilthyPrio.SetPrio('Boots of Septic Wounds', '', '', '')
	FilthyPrio.SetPrio('Boots of Persuasion', '', '', 'Samme')
	FilthyPrio.SetPrio('Surplus Limb', 'Samme > Jules', 'Arcane mage/Spriest', 'Heasy, Zlips')
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
	FilthyPrio.SetPrio('Tunic of Indulgence', '', 'Filler', 'Coonixx, Hovden')
	FilthyPrio.SetPrio('Chestguard of the Exhausted', '', 'tier just better both tanks OS', '')
	FilthyPrio.SetPrio('Fallout Impervious Tunic', 'DE', '', 'Thor, Died')
	FilthyPrio.SetPrio('Cowl of Vanity', 'RFI', '', 'Zlips, Samme, Heasy')
	FilthyPrio.SetPrio('Desecrated Past', 'OS/DE', '', '')
	FilthyPrio.SetPrio('Plague Igniter', '', '', '')
	FilthyPrio.SetPrio('Sympathetic Amice', 'RFI/DE', '', '')
	FilthyPrio.SetPrio('Mantle of the Fatigued Sage', '', '', '')
	FilthyPrio.SetPrio('Spaulders of Incoherence', 'RFI/DE', 'worse than tier', '')
	FilthyPrio.SetPrio('Bracers of Liberation', 'Jess if no Valor bracers', '', '')
	FilthyPrio.SetPrio('Twilight Mist', '', 'Rogue / Hunter filler?', '')
	FilthyPrio.SetPrio('Origin of Nightmares', '', 'fillter - prio kitties', '')
	FilthyPrio.SetPrio('Depraved Linked Belt', '', 'BIS: Hunter, Enhance - 2nd bis?', 'Pili')
	FilthyPrio.SetPrio('Girdle of Chivalry', '', 'BIS Unholy > Frost DK - depending on setup, ret', 'Msg, Greetings, Tobs')
	FilthyPrio.SetPrio('Slime Stream Bands', 'Elguapo', 'BIS: Hunter, Enhance', 'Beanpole, Pili, Died')
	FilthyPrio.SetPrio('Sabatons of Endurance', 'Hawkey', 'both tanks bis   fig>hawkey', 'Fig')
	FilthyPrio.SetPrio('Cover of Silence', 'DE', 'No meta', '')
	FilthyPrio.SetPrio('Riveted Abomination Leggings', '', 'BIS Unholy', 'Msg, Tobs')
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
		'Died, Beanpole, Pili, Cluelust, Trisp OS, Elguapo, Died OS x 2')
	FilthyPrio.SetPrio('Legplates of the Lost Vanquisher', '', 'Frost DK > Rogue > Mage',
		'Greetings, Tobs, Inkies, Verge, Jules, Heasy, Samme, Coonixx, Hawkey, Msg OS, Chris OS')
	FilthyPrio.SetPrio('Tunic of Masked Suffering', 'RFI/DE', 'Filler', 'Beanpole, Elguapo')
	FilthyPrio.SetPrio('Crippled Treads', '', 'Filler hunter / enh', 'Aaron?, Died')
	FilthyPrio.SetPrio('Gauntlets of the Disobedient', '', 'block set', 'Fig')
	FilthyPrio.SetPrio('Robes of Mutation', 'DE', '', '')
	FilthyPrio.SetPrio('Poignant Sabatons', 'BoE Sell', 'BoE', 'Sterile, Jess')
	FilthyPrio.SetPrio('Gloves of the Fallen Wizard', '', '', '')
	FilthyPrio.SetPrio('Legguards of the Undisturbed', 'RFI', '', '')
	FilthyPrio.SetPrio('Accursed Spine', 'RFI', '', 'Chris, Ethos')
	FilthyPrio.SetPrio('Belt of Potent Chanting', '', '', '')
	FilthyPrio.SetPrio('Bands of Impurity', '', '', 'Cypack, Zlips')
	FilthyPrio.SetPrio('Libram of Radiance', 'DE', '', '')
	FilthyPrio.SetPrio('Angry Dread', 'Greetings > Hawkey > Tobs', 'BIS Frost dks', 'Greetings')
	FilthyPrio.SetPrio('Shoulderguards of Opportunity', '', 'People looking for the next opportunity', '')
	FilthyPrio.SetPrio('Spinning Fate', '', 'good hit option for thrown, consult war/rogue', 'Trisp, Inkies, dof')
	FilthyPrio.SetPrio('Thrusting Bands', '', '', 'Koro')
	FilthyPrio.SetPrio('Breastplate of Tormented Rage', '', 'not better than tier', '')
	FilthyPrio.SetPrio('Iron-Spring Jumpers', '', 'BoE item - decent hit piece for warr/dk', '')
	FilthyPrio.SetPrio('Leggings of Colossal Strides', 'OS/DE', '', '')
	FilthyPrio.SetPrio('Eruption-Scarred Boots', 'OS/DE', 'Filler', '')
	FilthyPrio.SetPrio('Chestguard of Bitter Charms', 'OS/DE', 'bad', '')
	FilthyPrio.SetPrio('Heigan\'s Putrid Vestments', '', 'BIS: Spriest', 'Zlips')
	FilthyPrio.SetPrio('Serene Echoes', 'OS/DE', '', 'Shazz, Ethos')
	FilthyPrio.SetPrio('Gloves of the Dancing Bear', 'DE', '', '')
	FilthyPrio.SetPrio('Helm of Pilgrimage', 'DE', 'no meta', '')
	FilthyPrio.SetPrio('Legguards of the Apostle', 'OS/DE', '', 'Koro')
	FilthyPrio.SetPrio('Bindings of the Decrepit', 'OS/DE', '', 'Cluelust, Died OS')
	FilthyPrio.SetPrio('Sigil of Awareness', 'Hawkey > Msg', 'BIS Frost DK', 'Greetings, Tobs')
	FilthyPrio.SetPrio('Cryptfiend\'s Bite', 'Hunters/DE', 'fillter - prio kitties', 'Elguapo')
	FilthyPrio.SetPrio('The Undeath Carrier', 'OS/DE', 'fillter - prio kitties', 'Coonixx, Hov, Elguapo')
	FilthyPrio.SetPrio('Stalk-Skin Belt', 'Coonixx > Hov? > Trisp', 'BIS: Feral, Arms', '')
	FilthyPrio.SetPrio('Footwraps of Vile Deceit', 'Verge? > OS/DE', 'BiS: Feral', 'hov, coonixx, Inkies')
	FilthyPrio.SetPrio('Grotesque Handgrips', 'OS/DE', 'Filler', 'Beanpole')
	FilthyPrio.SetPrio('Greaves of Turbulence', '', 'block set', 'Trisp')
	FilthyPrio.SetPrio('The Hand of Nerub', '', 'Hunter filler?', '')
	FilthyPrio.SetPrio('Vest of Vitality', 'OS/DE', '', '')
	FilthyPrio.SetPrio('Boots of Impetuous Ideals', 'BoE Sell', 'BoE', 'Jules, Heasy')
	FilthyPrio.SetPrio('Cowl of Innocent Delight', 'DE', 'no meta', '')
	FilthyPrio.SetPrio('The Impossible Dream', '', '', '')
	FilthyPrio.SetPrio('Girdle of Unity', 'DE', '', '')
	FilthyPrio.SetPrio('Fading Glow', 'OS/DE', '', 'Zeforr')
	FilthyPrio.SetPrio('Mantle of the Lost Conqueror', 'OS', 'Prot > ?? (Holy, Ret, Disc, Shadow, Demo, Aff)',
		'Fig, Sandra, Aaron, Ethos, Sterile, Jess, Cypack, Shazz, Jess OS')
	FilthyPrio.SetPrio('Mantle of the Lost Protector', 'RFI or OS', 'Enhance > ?? (Arms, Hunter, Resto)',
		'Died, Trisp, Cluelust, Pili, Beanpole, Died OS, Thor OS, Cluelust OS, Died OS')
	FilthyPrio.SetPrio('Mantle of the Lost Vanquisher', '', 'Balance > Frost DK > Blood DK > Rogue > Mage',
		'Chris, Greetings, Tobs, Hovden, Samme, Verge, Hawkey?, Inkies, Jules, Heasy, Chris OS, Coonixx OS')
	FilthyPrio.SetPrio('Chestpiece of Suspicion', '', 'Filler for suspicious folk', 'Verge')
	FilthyPrio.SetPrio('Legplates of Double Strikes', '', 'BiS Arms/Fury', 'Trisp')
	FilthyPrio.SetPrio('Boots of Forlorn Wishes', 'ethos will take these if aaron doesnt give to casters', '', '')
	FilthyPrio.SetPrio('Faithful Steel Sabatons', 'OS/DE', '', '')
	FilthyPrio.SetPrio('Gauntlets of Guiding Touch', 'OS/DE', 'Good but Hpals run tier', '')
	FilthyPrio.SetPrio('Girdle of Recuperation', 'OS/DE', 'Ele Shaman', 'Cluelust, Died')
	FilthyPrio.SetPrio('Bands of Mutual Respect', '', 'Ele Shaman', 'Thor, Cluelust OS')
	FilthyPrio.SetPrio('Bindings of the Expansive Mind', '', 'Filler', 'Shazz')
	FilthyPrio.SetPrio('Esteemed Bindings', '', '', 'Chris')
	FilthyPrio.SetPrio('Idol of the Shooting Star', 'DE', '', '')
	FilthyPrio.SetPrio('Spaulders of Egotism', 'Sell', 'BoE', '')
	FilthyPrio.SetPrio('Shoulderpads of Secret Arts', 'OS/DE', '', '')
	FilthyPrio.SetPrio('Totem of Dueling', '', 'legitimate duelers only', 'Died?')
	FilthyPrio.SetPrio('Girdle of Razuvious', 'RFI/DE > Hawkey?', 'BiS Arms/Frost DK', 'Trisp, Koro')
	FilthyPrio.SetPrio('Bracers of the Unholy Knight', '', 'BIS: dk > not in figs set', 'Hawkey')
	FilthyPrio.SetPrio('Hood of the Exodus', 'Rogue/War? > Coonixx tank set?', 'Filler', 'Coonixx, Hov x2')
	FilthyPrio.SetPrio('Helm of Vital Protection', '', 'pretty decent helm very similar to tier but 4pc', 'Trisp')
	FilthyPrio.SetPrio('Leggings of Fleeting Moments', 'DE', '', '')
	FilthyPrio.SetPrio('Leggings of Failed Escape', 'RFI/DE', 'BiS: Hunter', 'Beanpole, Elguapo, Pili')
	FilthyPrio.SetPrio('Libram of Resurgence', 'DE', '', 'Fig')
	FilthyPrio.SetPrio('Gothik\'s Cowl', '', '', '')
	FilthyPrio.SetPrio('Helm of Unleashed Energy', 'OS/DE', 'Filler for Rsham until Tier', 'Cluelust, Thor')
	FilthyPrio.SetPrio('Life and Death', '', '', 'Samme, Cypack, Sterile, Azz')
	FilthyPrio.SetPrio('Shackled Cinch', 'DE', '', '')
	FilthyPrio.SetPrio('Idol of Awakening', 'OS/DE', '', 'Chris')
	FilthyPrio.SetPrio('Touch of Horror', 'OS/DE', '', '')
	FilthyPrio.SetPrio('Abetment Bracers', 'Sterile', '', 'Jess')
	FilthyPrio.SetPrio('Bindings of Yearning', 'Sell', 'Prot > Demo > Aff > Ret > Holy', '')
	FilthyPrio.SetPrio('Burdened Shoulderplates', 'Fig', 'block set', '')
	FilthyPrio.SetPrio('Bracers of Unrelenting Attack', 'Trisp > Koro', 'BIS Unholy, Arms, Frost - depending on setup',
		'Msg, Tobs')
	FilthyPrio.SetPrio('Breastplate of the Lost Conqueror', 'OS/DE', 'Tank > DPS > Healer',
		'Fig, Aaron, Cypack, Koro, Jess, Sterile, Sterile OS, Shazz')
	FilthyPrio.SetPrio('Breastplate of the Lost Protector', 'OS/DE', 'Enhance > Ele > Resto > Arms',
		'Died, Thor, Cluelust, Trisp?, bean, Elguapo, Pili')
	FilthyPrio.SetPrio('Breastplate of the Lost Vanquisher', 'OS/DE',
		'Balance > Blood DK > Frost/Unholy > Rogue > Mage (Give 10 man to Mage > Rogue)',
		'Chris, Hawkey, Msg, Greetings, Tobs, Inkies, Verge, Samme, Coonixx, Greetings OS')
	FilthyPrio.SetPrio('Zeliek\'s Gauntlets', '', 'BiS Unholy DK/decent for fury', 'Msg, Tobs')
	FilthyPrio.SetPrio('Helm of the Grave', '', 'Filler', '')
	FilthyPrio.SetPrio('Broken Promise', '', 'Tank stuff', 'Hawkey x2, Fig')
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
		, 'Fig, Thor, Trisp, Pili, Chriski, Zlops, Sweet Azz, cy, Aaron, Beanpole, Zeforr, Heasy')
	FilthyPrio.SetPrio('Icy Blast Amulet', 'Hunter', '2nd BIS for Rogues', 'Inkies, Verge')
	FilthyPrio.SetPrio('Key to the Focusing Iris', '', '10 man key to keep track',
		'Squirties, Beanpole, Coonixx, Heasy, Died, Cypack, Aaron, Zeforr, Inkies, Hellgrazer')
	FilthyPrio.SetPrio('Murder', 'OS/DE', 'Rogue / Hunter filler?', 'Verge')
	FilthyPrio.SetPrio('Gatekeeper', 'Hawkey > OS/DE', 'fig>hawkey bis', 'Fig, Trisp')
	FilthyPrio.SetPrio('Bandit\'s Insignia', 'OS/DE', 'dogshit', 'Verge')
	FilthyPrio.SetPrio('Rune of Repulsion', '', 'avoidance set maybe, weird item', 'Hawkeydk')
	FilthyPrio.SetPrio('Sympathy', '', 'Filler', '')
	FilthyPrio.SetPrio('Gloves of Grandeur', '', '', '')
	FilthyPrio.SetPrio('Bone-Inlaid Legguards', 'OS/DE', 'meh', '')
	FilthyPrio.SetPrio('Legguards of the Boneyard', '', '', '')
	FilthyPrio.SetPrio('Legwraps of the Defeated Dragon', 'RFI/DE', 'Filler', 'Shazz, Cypack')
	FilthyPrio.SetPrio('Ceaseless Pity', 'DE', '', '')
	FilthyPrio.SetPrio('Cosmic Lights', '', 'Filler', '')
	FilthyPrio.SetPrio('Ring of Decaying Beauty', 'RFI/DE', '', 'Cluelust, Jess, Died')
	FilthyPrio.SetPrio('Noble Birthright Pauldrons', 'RFI', 'Hpals run tier instead', '')
	FilthyPrio.SetPrio('Extract of Necromantic Power', 'OS/DE', 'BiS: Spriest', 'Zeforr, Zlips')
	FilthyPrio.SetPrio('Soul of the Dead', 'OS/DE', 'Maybe BiS: RSham, HPal', 'Cluelust, Died OS')
	FilthyPrio.SetPrio('Drape of the Deadly Foe', '', 'BiS: Rogue, Hunter, Frost, Unholy, Ret, Feral',
		'Verge, Msg, Tobs, Greetings')
	FilthyPrio.SetPrio('Calamity\'s Grasp', 'Died > Rogues', 'BiS: Combat and Enh', '')
	FilthyPrio.SetPrio('Boundless Ambition', 'Fig > Trisp OS', 'BiS: Blood and Prot (Armor)',
		'Hawkey, Hovden OS, Greetings OS')
	FilthyPrio.SetPrio('Wall of Terror', 'OS/DE', 'BiS: Prot', 'Fig, Trisp, Jess, Sterile')
	FilthyPrio.SetPrio('Last Laugh', '', 'BiS: Prot > Unh > Blood', 'Fig, Msg x 2, Tobs, Hawkey, Trisp OS')
	FilthyPrio.SetPrio('Sinister Revenge', 'Hunters DW?', 'BIS Assassin Rogue & Hunter DW', 'Inkies, Verge, Elguapo')
	FilthyPrio.SetPrio('Envoy of Mortality', 'Trisp > Rogues', 'BiS: Hunter and Rogue - consider pili for dwarf gun prio',
		'Pili, Bean, Elguapo')
	FilthyPrio.SetPrio('Betrayer of Humanity', 'Koro > Trisp (for fury)', 'BiS: Arms, Ret, Unholy, Blood?',
		'Trisp, Pili, Beanpole')
	FilthyPrio.SetPrio('Journey\'s End', 'Beanpole > Pili', 'BiS: Feral/Hunter - Both have 25m Heigen',
		'Coonixx, Hovden, Elguapo')
	FilthyPrio.SetPrio('Cape of the Unworthy Wizard', '', 'BiS: Disc/Demo', 'Ethos')
	FilthyPrio.SetPrio('Leggings of Mortal Arrogance', 'RFI/DE', 'BiS: Disc/Demo', 'Ethos, Aaron, Zlips, Zeforr')
	FilthyPrio.SetPrio('The Turning Tide', 'Jules', 'BiS HPal weapon after a long line of casters', 'Aaron')
	FilthyPrio.SetPrio('Torch of Holy Fire', '', 'BiS: Disc, RDruid, RSham, Ele, Spriest', 'Jess, Thor')
	FilthyPrio.SetPrio('Voice of Reason', 'Thor > Sterile > Cluelust > Jess', 'BiS: Ele, RSham and HPal', '')
	FilthyPrio.SetPrio('Signet of Manifested Pain', 'Samme',
		'BiS: Literally every SP user, reward pumpers (possibly enh bis too)', 'Heasy')
	FilthyPrio.SetPrio('Crown of the Lost Conqueror', 'RFI MS > OS', 'Prot > Demo > Aff > Ret',
		'Fig, Aaron, Cypack, Azz, Sandra, Sterile OS')
	FilthyPrio.SetPrio('Crown of the Lost Protector', 'OS', 'Ele > Arms > Resto',
		'Thor, Trisp, Cluelust, Beanpole, Elguapo, Cluelust OS, Died OS')
	FilthyPrio.SetPrio('Crown of the Lost Vanquisher', 'Hov > Mages (ask Aaron)', '',
		'Chris, Hawkey, Inkies, Verge, Coonixx')
	FilthyPrio.SetPrio('Hyaline Helm of the Sniper', '', 'Filler', '')
	FilthyPrio.SetPrio('Dragon Brood Legguards', '', 'Filler', 'Trisp')
	FilthyPrio.SetPrio('Concealment Shoulderpads', 'RFI/DE', 'Filler', 'Coonixx, Verge')
	FilthyPrio.SetPrio('Fury of the Five Flights', 'OS/DE', 'BiS: Ret, Trap-weave Hunter',
		'Sandra, Pili, Beanpole, Elguapo, Figjam, Sterile OS')
	FilthyPrio.SetPrio('Chestplate of the Great Aspects', 'OS/DE', 'Filler', '')
	FilthyPrio.SetPrio('Wyrmrest Band', 'RFI/OS', 'BiS: Disc, top 4 option for the other healers',
		'Sterile, Ethos, Saicere, Cluelust, Died OS')
	FilthyPrio.SetPrio('Council Chamber Epaulets', 'OS/DE', 'Filler', '')
	FilthyPrio.SetPrio('Mantle of the Eternal Sentinel', 'BoE Sell',
		'BoE, good for Ele if they dont need hit, filler for HPal/RSham/Balance', '')
	FilthyPrio.SetPrio('Illustration of the Dragon Soul', 'Zef > Who Pumps?', 'yell at ethos if this buff ever drops',
		'Ethos')
	FilthyPrio.SetPrio('Staff of Restraint', 'OS/DE', 'Filler, Everyone wants 1h+oh over staves', '')
	FilthyPrio.SetPrio('Gauntlets of the Lost Conqueror', 'Zlips > Hpals/Ethos',
		'fig > demo > hpal > spriest > ret = aff > disc', 'Fig, Icantwalk, Shazz, Aaron, Cypack, Zeforr')
	FilthyPrio.SetPrio('Gauntlets of the Lost Protector', '', 'Enh > ??', 'Died, Trisp, Thor, Died, Elguapo, Died OS')
	FilthyPrio.SetPrio('Gauntlets of the Lost Vanquisher', 'Hawkey > OS', 'Balance > Blood DK > Frost DK > Arcane',
		'Chris, Greetings, Tobs, Heasy, Jules, Verge, Inkies')
	FilthyPrio.SetPrio('Dragonstorm Breastplate', 'OS/DE', 'Blood?', 'Greetings, Trisp OS')
	FilthyPrio.SetPrio('Upstanding Spaulders', 'RFI', 'Filler', '')
	FilthyPrio.SetPrio('The Sanctum\'s Flowing Vestments', 'Samme', 'BiS: Spriest, Arcane', 'Zeforr, Jules, heasy, Zlips')
	FilthyPrio.SetPrio('Bountiful Gauntlets', 'RFI', 'Filler', 'Cluelust, Thor')
	FilthyPrio.SetPrio('Obsidian Greathelm', 'Trisp? > Koro?', 'BiS: Unholy and Frost/fury', 'Greetings, Msg, Tobs')
	FilthyPrio.SetPrio('Leggings of the Honored', '', 'BiS: Feral, and an option for Rogue/Ret', 'Hov, Coon')
	FilthyPrio.SetPrio('Pennant Cloak', '',
		'Highest ilvl cloak this phase + only one with a socket, bis for basically every SP user, reward pumpers', 'Zeforr')
	FilthyPrio.SetPrio('Headpiece of Reconciliation', '', 'BiS: RDruid', 'Chris')
	FilthyPrio.SetPrio('Unsullied Cuffs', '', 'BiS: Disc, Spriest, Arcane, Demo, Aff, Balance, RDruid',
		'Jules, Samme, Heasy, Zlips')
	FilthyPrio.SetPrio('Reins of the Twilight Drake', '', '', '')
	FilthyPrio.SetPrio('Chestguard of the Recluse', 'Coonixx > Trisp', 'BiS: Cat, Rogue, Arms, Fury',
		'Inkies, Verge, Hovden')
	FilthyPrio.SetPrio('Boots of Renewed Flight', 'Beanpole', 'BIS: Hunter', 'Pili, Elguapo')
	FilthyPrio.SetPrio('Melancholy Sabatons', 'Tobs', 'BiS: Arms / Frost / Unholy / Ret', 'Trisp, Greetings, Msg, Koro')
	FilthyPrio.SetPrio('Frosted Adroit Handguards', 'Koro > Trisp', 'BiS: Rogue, Cat, Ret, Arms, Hunter',
		'Pili, Beanpole, Elguapo, Big Coon, Hovden')
	FilthyPrio.SetPrio('Blue Aspect Helm', 'Beanpole > Elguapo',
		'BiS: Enh/Hunters - reward the biggest pumper! Who will win? Bean or Died? died imo', 'Died, Pili')
	FilthyPrio.SetPrio('Legplates of Sovereignty', 'OS/DE', 'BiS: Blood and Prot', 'Fig, Hawkey, Trisp OS')
	FilthyPrio.SetPrio('Mark of Norgannon', 'Msg?', '', 'Tobs')
	FilthyPrio.SetPrio('Blanketing Robes of Snow', 'OS/DE', 'BiS: Disc', 'Ethos, Zeforr')
	FilthyPrio.SetPrio('Tunic of the Artifact Guardian', 'OS/DE',
		'Check what mindblown is using, 4pc + off chest or 4pc + off gloves', 'Cluelust')
	FilthyPrio.SetPrio('Arcanic Tramplers', '', 'BiS: Disc, Spriest, Arcane, Demo, Aff, Balance, RDruid',
		'Azz, Zeforr, Zlips')
	FilthyPrio.SetPrio('Boots of Healing Energies', 'RFI/DE', '', 'Saicere, Sterile')
	FilthyPrio.SetPrio('Winter Spectacle Gloves', 'RFI', 'BiS RSham non-tier gloves', 'Cluelust, Died OS')
	FilthyPrio.SetPrio('Hood of Rationality', 'RFI', 'BiS Disc, Spriest (and Fire)', 'Zeforr, Ethos, Zlips')
	FilthyPrio.SetPrio('Leggings of the Wanton Spellcaster', '', 'BiS for every caster dps except maybe Arcane', '')
	FilthyPrio.SetPrio('Elevated Lair Pauldrons', 'RFI > OS', 'Filler', 'Fig')
	FilthyPrio.SetPrio('Mantle of Dissemination', 'RFI', 'Bis shadow', 'Zlips, Zeforr')
	FilthyPrio.SetPrio('Spaulders of Catatonia', 'OS', 'Filler', 'Hov OS')
	FilthyPrio.SetPrio('Living Ice Crystals', 'Sterile > PVP RFI', 'A bit shit', '')
	FilthyPrio.SetPrio('Leash of Heedless Magic', '', 'BiS Disc, Spriest, Arcane, Balance, RDruid', 'Jules, Cypack')
	FilthyPrio.SetPrio('Unravelling Strands of Sanity', 'OS/DE', 'BiS: Resto Druid', 'Chris')
	FilthyPrio.SetPrio('Reins of the Azure Drake', 'Tobs for making this sick addon',
		'Frost DK BiS - because Azure is like Frost.', '')

end
