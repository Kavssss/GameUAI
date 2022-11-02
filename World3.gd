extends Node2D

var morreu

func _ready():
	get_node("Botão/Sprite").play("null")
	
func _physics_process(_delta):
	if(get_node("Botão").isPressed()):
		get_node("Door/Sprite").play("open")
		get_node("Botão/Sprite").play("down")
		get_node("Door").desativaColisao()
		
	if(morreu):
		get_tree().change_scene("res://World3.tscn")
