-- The 'nice' name of the faction.
FACTION.name = "92nd Regiment National Sentinel"
-- A description used in tooltips in various menus.
FACTION.desc = "Become a member of the Nation's Sentinel force."
-- A color to distinguish factions from others, used for stuff such as
-- name color in OOC chat.
FACTION.color = Color(240, 22, 22)
-- Set the male model choices for character creation.
FACTION.models = {
	"models/rusty/natguard/male_01.mdl",
	"models/rusty/natguard/male_02.mdl",
	"models/rusty/natguard/male_03.mdl",
	"models/rusty/natguard/male_04.mdl",
	"models/rusty/natguard/male_05.mdl",
	"models/rusty/natguard/male_06.mdl",
	"models/rusty/natguard/male_07.mdl",
	"models/rusty/natguard/male_08_.mdl",
	"models/rusty/natguard/male_09.mdl",
	"models/army/female_01.mdl",
	"models/army/female_02.mdl",
	"models/army/female_03.mdl",
	"models/army/female_04.mdl",
	"models/army/female_06.mdl"

}
-- Set it so the faction requires a whitelist.
FACTION.isDefault = false
FACTION.isPublic = false

FACTION.salary = 25

-- FACTION.index is defined when the faction is registered and is just a numeric ID.
-- Here, we create a global variable for easier reference to the ID.
FACTION_MILITARY = FACTION.index
