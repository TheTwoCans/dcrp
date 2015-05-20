ITEM.name = "Steroid"
ITEM.model = "models/props_lab/jar01b.mdl"
ITEM.desc = "A steroid contained within a syringe that seems to have no side-effect.(CLASS 3)"
ITEM.duration = 100
ITEM.price = 200
ITEM.attribBoosts = {
	["stm"] = 5,
	["end"] = 5,
}
local effectText = {
	"You inject the syringe into the inside of your arm and push down on the top.",
}
ITEM:hook("_use", function(item)
	item.player:EmitSound("items/battery_pickup.wav")
	item.player:ScreenFade(1, Color(255, 255, 255, 255), 3, 0)
end)
