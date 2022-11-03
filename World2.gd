extends Node2D

var morreu
var cont = 0

func _ready():
	print(get_tree().get_current_scene().get_name())
	
func _physics_process(_delta):
	if(get_node("Botão").isPressed()):
		cont += 1
		if(cont > 220):
			get_node("Door/Sprite").play("open")
			get_node("Door").desativaColisao()
	else:
		cont = 0
		
	if(morreu):
		get_tree().change_scene("res://World2.tscn")
