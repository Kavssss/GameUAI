extends StaticBody2D

var morrer = false

func _ready():
	pass # Replace with function body.

func morrer():
	morrer = true
	
func isDead():
	return morrer
