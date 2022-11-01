extends AnimatedSprite

func _ready():
	pass # Replace with function body.

func _on_Pisar_body_entered(body):
	get_node("Botão/Botao").texture.set("Button down.png")
