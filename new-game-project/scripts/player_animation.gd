extends CharacterBody2D

var max_speed = 200
var last_direction := Vector2(1,0)

func _physics_process(delta):
	var direction = Input.get_vector("right","left","up","down")
	velocity = direction * max_speed
	move_and_slide()
	
	if direction.length()>0 :
		last_direction = direction
		play_walk_animation(direction)
		
func play_walk_animation(delta):
	if direction.x > 0 :
		$player_animation.play("run_right")
	else:
		$player_animation.play("run_left")
