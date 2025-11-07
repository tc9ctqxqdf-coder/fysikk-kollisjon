extends CharacterBody2D
var speed = 200

func _physics_process(delta: float) -> void:
	var move_direction = Vector2.ZERO

	if Input.is_action_pressed("ui_right"):
		move_direction.x = 1
	elif Input.is_action_pressed("ui_left"):
		move_direction.x = -1
	if Input.is_action_pressed("ui_down"):
		move_direction.y = 1
	elif Input.is_action_pressed("ui_up"):
		move_direction.y = -1

	velocity.x = move_toward(velocity.x, move_direction.x * speed, 2)
	velocity.y = move_toward(velocity.y, move_direction.y * speed, 3)
	
	if velocity != Vector2(0,0):
			rotation = velocity.angle()
	move_and_slide()
