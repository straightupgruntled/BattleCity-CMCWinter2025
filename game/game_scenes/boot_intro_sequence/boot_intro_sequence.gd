class_name BootIntroSequence
extends Control

@export var intro_anim_name: String = "intro"
@export_file("*.tscn") var title_screen_scenefile: String

@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _ready() -> void:
	animation_player.play(intro_anim_name)
	await animation_player.animation_finished
	if title_screen_scenefile:
		get_tree().change_scene_to_file(title_screen_scenefile)
