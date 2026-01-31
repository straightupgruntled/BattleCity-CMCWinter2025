class_name TitleScreen
extends Control

@export_file("*.tscn") var gameplay_scenefile: String

# Menu Button Signal Connections #

func _on_play_button_pressed() -> void:
	if gameplay_scenefile:
		get_tree().change_scene_to_file(gameplay_scenefile)


func _on_settings_button_pressed() -> void:
	pass # Replace with settings menu opening.


func _on_quit_button_pressed() -> void:
	get_tree().quit()
