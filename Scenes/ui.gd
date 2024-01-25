extends Control


func _on_bounds_player_1_scored():
	$P1ScoreLabel.text = "%d" % GameState.get_player_1_score()


func _on_bounds_player_2_scored():
	$P2ScoreLabel.text = "%d" % GameState.get_player_2_score()
