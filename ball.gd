extends CharacterBody2D

var waiting_to_start = false
const SPEED = 500.0

func _ready():
	velocity = Vector2(SPEED, 0)
	_reset_ball()


func _physics_process(delta):
	var collision: KinematicCollision2D = null
	if !waiting_to_start:
		collision = move_and_collide(velocity * delta)
	if collision:
		if !(collision.get_collider() is Wall):
			# relative position on paddle from 0 to 1
			var rel_pos_norm = ((collision.get_position().y - collision.get_collider().position.y) / \
									collision.get_collider_shape().get_shape().get_rect().size.y) + 0.5
			var angle_in_rad = deg_to_rad((rel_pos_norm * 170) + 5)
			var direction = Vector2(collision.get_normal().x * sin(angle_in_rad),\
									-cos(angle_in_rad))
			$DebugVector.set_point_position(1, 20 * direction)
			velocity = direction * SPEED
		elif collision.get_collider() is Wall:
			velocity = velocity.bounce(collision.get_normal())


func _reset_ball():
	position.x = get_viewport().size.x / 2
	position.y = get_viewport().size.y / 2
	$Timer.start()
	waiting_to_start = true


func _p1_score_reset():
	velocity = Vector2(-SPEED, 0)
	_reset_ball()


func _p2_score_reset():
	velocity = Vector2(SPEED, 0)
	_reset_ball()


func _on_timer_timeout():
	waiting_to_start = false
