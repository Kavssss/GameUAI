extends Node2D

var morreu
var resultado = ""

func _ready():
	pass
	
func _input(event):
	if event is InputEventKey:
		if event.echo == false:
			if(!char(event.scancode) in "wasdWASD"):
				resultado += char(event.scancode)

func _physics_process(_delta):
	if("772200" in resultado):
		get_node("Door/Sprite").play("open")
		get_node("Door").desativaColisao()

	if(morreu):
		get_tree().change_scene("res://World6.tscn")
