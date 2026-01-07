extends Node

const scene_main_game = preload("res://scenes/main_game.tscn")
const scene_level1 = preload("res://scenes/level_1.tscn")

var spawn_door_tag

func go_to_level(level_tag, destination_tag):
	var scene_to_load
	
	match level_tag:
		"main_game":
			scene_to_load = scene_main_game
		"level_1":
			scene_to_load = scene_level1
			
	if scene_to_load != null:
		spawn_door_tag = destination_tag
		get_tree().change_scene_to_packed.bind(scene_to_load).call_deferred()
