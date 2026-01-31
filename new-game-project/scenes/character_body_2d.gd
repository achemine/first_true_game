extends CharacterBody2D

@onready var animation_player = $player_animation
@export var speed = 100


func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	var last_direction = Vector2.ZERO
	
	#movement and flipping the caracter
	if input_direction != Vector2.ZERO:
		velocity = input_direction * speed
		last_direction = input_direction 
		if last_direction.x < 0:
			animation_player.flip_h = true
		elif last_direction.x == 0 && animation_player.flip_h :
			animation_player.flip_h = true
		else:
			animation_player.flip_h = false
	
	else:
		velocity = Vector2.ZERO
	velocity = input_direction * speed
func _physics_process(_delta):
	get_input()
	move_and_slide()

	#animation
	if  velocity != Vector2.ZERO :
		if Input.is_action_just_pressed("attack"):
			animation_player.play("attack_right")
		else:
			animation_player.play("run_right")
	else:
		if Input.is_action_just_pressed("attack"):
			animation_player.play("attack_right")
		else:
			animation_player.play("idle_right")
	
	
