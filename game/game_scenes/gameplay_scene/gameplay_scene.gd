class_name GameplayScene
extends Node2D

@export_file("*.tscn") var title_screen_scenefile: String


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel") and title_screen_scenefile:
		get_tree().change_scene_to_file(title_screen_scenefile)
