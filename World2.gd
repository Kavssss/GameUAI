extends Node2D

var morreu
var cont = 0

func _ready():
	print(get_tree().get_current_scene().get_name())
	print(get_tree().get_current_scene())
	
func _physics_process(_delta):
	if(get_node("Botão").isPressed()):
		cont += 1

		if(cont == 250):
			get_node("Door/Sprite").play("open")
			get_node("Botão/Sprite").play("down")
			get_node("Door").desativaColisao()
			# get_node("Door/CollisionShape2D").set_deferred("", true)
	else:
		cont = 0
		
	if(morreu):
		get_tree().change_scene("res://World2.tscn")
