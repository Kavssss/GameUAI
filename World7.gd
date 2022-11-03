extends Node2D

var morreu

func _ready():
	pass
	
func _physics_process(_delta):
	print(get_node("Player").get("motion"))
	if Input.is_key_pressed(KEY_A):
		get_node("Player").set("motion", 340)
	
	if(get_node("Botão").isPressed()):
		get_node("Door/Sprite").play("open")
		get_node("Door").desativaColisao()

	if(morreu):
		get_tree().change_scene("res://World.tscn")
