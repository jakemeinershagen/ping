extends Node

@onready var _player_1_score = 0
@onready var _player_2_score = 0


func add_player_1_score():
	_player_1_score += 1


func add_player_2_score():
	_player_2_score += 1


func get_player_1_score():
	return _player_1_score


func get_player_2_score():
	return _player_2_score
