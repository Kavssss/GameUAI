extends StaticBody2D

var btn = false

func _ready():
	pass

func pressionado():
	$Sprite.play("down")
	btn = true

func livre():
	$Sprite.play("up")
	btn = false

func isPressed():
	return btn
