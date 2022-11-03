extends Area2D

func _ready():
	pass # Replace with function body.

func _on_Saida_body_entered(body):
	if(get_tree().get_current_scene().get_name() == "World"):
		get_tree().change_scene("res://World2.tscn")
	elif(get_tree().get_current_scene().get_name() == "World2"):
		get_tree().change_scene("res://World3.tscn")
	elif(get_tree().get_current_scene().get_name() == "World3"):
		get_tree().change_scene("res://World4.tscn")
	elif(get_tree().get_current_scene().get_name() == "World4"):
		get_tree().change_scene("res://World4.tscn")
	elif(get_tree().get_current_scene().get_name() == "World5"):
		get_tree().change_scene("res://World6.tscn")
	elif(get_tree().get_current_scene().get_name() == "World6"):
		get_tree().change_scene("res://World7.tscn")
	elif(get_tree().get_current_scene().get_name() == "World7"):
		get_tree().change_scene("res://World8.tscn")
	elif(get_tree().get_current_scene().get_name() == "World8"):
		get_tree().change_scene("res://World9.tscn")
