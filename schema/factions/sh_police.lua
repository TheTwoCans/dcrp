-- The 'nice' name of the faction.
FACTION.name = "Federal Emergency Police"
-- A description used in tooltips in various menus.
FACTION.desc = "Become an officer of the Nation's federal police force"
-- A color to distinguish factions from others, used for stuff such as
-- name color in OOC chat.
FACTION.color = Color(22, 22, 240)
-- Set the male model choices for character creation.
FACTION.models = {
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

FACTION.salary = 20

-- FACTION.index is defined when the faction is registered and is just a numeric ID.
-- Here, we create a global variable for easier reference to the ID.
FACTION_POLICE = FACTION.index
