extends CharacterBody2D


const SPEED = 500.0

func _ready():
	_reset_ball()


func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())


func _reset_ball():
	velocity.x = SPEED
	position.x = get_viewport().size.x / 2
	position.y = get_viewport().size.y / 2
