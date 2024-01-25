extends CharacterBody2D


const SPEED = 100.0

func _ready():
	velocity.x = SPEED


func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())

	move_and_slide()
