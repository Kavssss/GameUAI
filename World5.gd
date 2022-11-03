extends Node2D

var morreu

func _ready():
	pass
	
func _physics_process(_delta):
	if Input.is_key_pressed(KEY_SPACE):
		get_node("Door/Sprite").play("open")
		get_node("Door").desativaColisao()
		
	if(morreu):
		get_tree().change_scene("res://World5.tscn")
