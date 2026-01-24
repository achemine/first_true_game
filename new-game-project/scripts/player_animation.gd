extends CharacterBody2D

@onready var _animated_sprite = $player_animation

func _process(_delta):
	if Input.is_action_pressed("ui_right"):
		_animated_sprite.play("running")
	else:
		_animated_sprite.play("idle")
