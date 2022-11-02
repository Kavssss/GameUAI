extends StaticBody2D

var morrer = false

func _ready():
	#morrer = get_node("../../").get("morreu")
	pass

func morte():
	morrer = true
	# get_node("../../").get("morreu")
	get_node("../../").set("morreu", true)
