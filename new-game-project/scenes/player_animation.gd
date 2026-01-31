
@onready var _animated_sprite = $AnimatedSprite2D

func _process(_delta):
	if Input.is_action_pressed("right"):
		_animated_sprite.play("run_right")
	else:
		_animated_sprite.stop()
