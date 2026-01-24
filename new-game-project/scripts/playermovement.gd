extends CharacterBody2D

@export var speed = 400


func _physics_process(delta):
	var is_moving_? = Input.get_vector("left", "right", "up", "down")
	
