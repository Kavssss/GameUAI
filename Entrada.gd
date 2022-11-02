extends Area2D

func _ready():
	pass # Replace with function body.

func _on_Entrada_body_entered(body):
	if(get_tree().get_current_scene().get_name() == "World4"):
		get_tree().change_scene("res://World5.tscn")
