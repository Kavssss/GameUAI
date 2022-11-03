extends Node2D

var morreu
var cont = 0
var altura = 0

func _ready():
	pass
	
func _physics_process(_delta):
	cont += 1

	if cont % 2 == 0:
		altura = get_node("Player").queda()
		
	if get_node("Botão").isPressed():
		if altura > 599:
			get_node("Door/Sprite").play("open")
			get_node("Door").desativaColisao()

	if morreu:
		get_tree().change_scene("res://World8.tscn")
