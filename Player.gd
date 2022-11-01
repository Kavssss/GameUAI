extends KinematicBody2D

const UP = Vector2(0, -1)
var motion = Vector2()
var morteX
var morteY

func _physics_process(_delta):

	motion.y += 20

	if Input.is_action_pressed("ui_right") or Input.is_key_pressed(KEY_D):
		motion.x = 200
		$Sprite.play("walk")
		$Sprite.flip_h = false
	elif Input.is_action_pressed("ui_left") or Input.is_key_pressed(KEY_A):
		motion.x = -200
		$Sprite.play("walk")
		$Sprite.flip_h = true
	else:
		motion.x = 0
		$Sprite.play("idle")

	if is_on_floor():
		if Input.is_action_pressed("ui_up") or Input.is_key_pressed(KEY_SPACE) or Input.is_key_pressed(KEY_W):
			motion.y = -550
	
	if motion.y >= 1500:
		get_tree().quit()
		
	motion = move_and_slide(motion, UP)

func _on_Spike1_body_entered(body):
	# body.queue_free()
	morteX = position.x
	morteY = position.y
	get_node("Position2D")
	get_tree().change_scene("res://World.tscn")

func _on_Sada_body_entered(body):
	get_tree().change_scene("res://Cena2.tscn")
