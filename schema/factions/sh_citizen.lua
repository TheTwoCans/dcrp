-- The 'nice' name of the faction.
FACTION.name = "Civillian"
-- This faction is default by the server.
-- This faction does not requires a whitelist.
FACTION.isDefault = true
-- A description used in tooltips in various menus.
FACTION.desc = "Resident of the new police state."
-- A color to distinguish factions from others, used for stuff such as
-- name color in OOC chat.
FACTION.color = Color(20, 150, 15)
-- The list of models of the citizens.
-- Only default citizen can wear Advanced Citizen Wears and new facemaps.
local CITIZEN_MODELS = {
	"models/half-dead/civilians/male_01.mdl",
	"models/half-dead/civilians/male_02.mdl",
	"models/half-dead/civilians/male_03.mdl",
	"models/half-dead/civilians/male_04.mdl",
	"models/half-dead/civilians/male_05.mdl",
	"models/half-dead/civilians/male_06.mdl",
	"models/half-dead/civilians/male_07.mdl",
	"models/half-dead/civilians/male_08.mdl",
	"models/half-dead/civilians/female_01.mdl",
	"models/half-dead/civilians/female_02.mdl",
	"models/half-dead/civilians/female_03.mdl",
	"models/half-dead/civilians/female_04.mdl",
	"models/half-dead/civilians/female_07.mdl",
	"models/half-dead/civilians/female_06.mdl"
}
FACTION.models = CITIZEN_MODELS
-- The amount of money citizens get.
-- FACTION.index is defined when the faction is registered and is just a numeric ID.
-- Here, we create a global variable for easier reference to the ID.
FACTION_CITIZEN = FACTION.index
