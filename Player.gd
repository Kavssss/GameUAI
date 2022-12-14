extends KinematicBody2D

const UP = Vector2(0, -1)
var motion = Vector2()
var conf = false
var gravidade = true

func _physics_process(_delta):
	if gravidade:
		motion.y += 20

	if !conf:
		if Input.is_action_pressed("ui_right") or Input.is_key_pressed(KEY_D):
			motion.x = 170
			$Sprite.play("walk")
			$Sprite.flip_h = false
		elif Input.is_action_pressed("ui_left") or Input.is_key_pressed(KEY_A):
			motion.x = -170
			$Sprite.play("walk")
			$Sprite.flip_h = true
		else:
			motion.x = 0
			$Sprite.play("idle")

		if is_on_floor():
			if Input.is_action_pressed("ui_up") or Input.is_key_pressed(KEY_W):
				motion.y = -520
	
	# if motion.y >= 1500:
		# get_tree().quit()
		
	motion = move_and_slide(motion, UP)
	queda()

func _on_Pisar_body_entered(body):
	body.pressionado()

func _on_Pisar_body_exited(body):
	body.livre()

func _on_Limite_body_entered(body):
	body.morte()

func queda():
	return motion.y

func confusao():
	conf = true
	if Input.is_action_pressed("ui_left") or Input.is_key_pressed(KEY_A):
		motion.x = 170
		$Sprite.play("walk")
		$Sprite.flip_h = false
	elif Input.is_action_pressed("ui_up") or Input.is_key_pressed(KEY_W):
		motion.x = -170
		$Sprite.play("walk")
		$Sprite.flip_h = true
	else:
		motion.x = 0
		$Sprite.play("idle")
		
	if is_on_floor():
		if Input.is_action_pressed("ui_right") or Input.is_key_pressed(KEY_D):
			motion.y = -520

func lua():
	gravidade = false
	motion.y += 1
