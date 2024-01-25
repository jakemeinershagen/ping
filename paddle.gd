extends CharacterBody2D


const SPEED = 600.0

@export var paddle_side = ""


func _physics_process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction
	if paddle_side == "L":
		direction = Input.get_axis("left_paddle_up", "left_paddle_down")
	elif paddle_side == "R":
		direction = Input.get_axis("right_paddle_up", "right_paddle_down")
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
