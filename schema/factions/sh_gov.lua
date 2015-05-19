-- The 'nice' name of the faction.
FACTION.name = "Government Official"
-- A description used in tooltips in various menus.
FACTION.desc = "Become a high-ranking government official."
-- A color to distinguish factions from others, used for stuff such as
-- name color in OOC chat.
FACTION.color = Color(22, 22, 22)
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
	"models/army/female_06.mdl",
	"models/bloocobalt/l4d/riot_01.mdl",
	"models/bloocobalt/l4d/riot_02.mdl",
	"models/bloocobalt/l4d/riot_03.mdl",
	"models/bloocobalt/l4d/riot_04.mdl",
	"models/bloocobalt/l4d/riot_05.mdl",
	"models/bloocobalt/l4d/riot_06.mdl",
	"models/bloocobalt/l4d/riot_07.mdl",
	"models/bloocobalt/l4d/riot_08.mdl",
	"models/bloocobalt/l4d/riot_09.mdl"

}
-- Set it so the faction requires a whitelist.
FACTION.isDefault = false
FACTION.isPublic = false

FACTION.salary = 50

-- FACTION.index is defined when the faction is registered and is just a numeric ID.
-- Here, we create a global variable for easier reference to the ID.
FACTION_GOV = FACTION.index
