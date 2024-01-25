extends Node

signal player_1_scored
signal player_2_scored


func _on_left_bounds_body_entered(area):
	GameState.add_player_2_score()
	emit_signal("player_2_scored")


func _on_right_bounds_body_entered(area):
	GameState.add_player_1_score()
	emit_signal("player_1_scored")
