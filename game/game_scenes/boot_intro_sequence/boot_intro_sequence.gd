class_name BootIntroSequence
extends Control

@export var intro_anim_name: String = "intro"
@export var title_screen_scene: PackedScene

@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _ready() -> void:
	animation_player.play(intro_anim_name)
	await animation_player.animation_finished
	get_tree().change_scene_to_packed(title_screen_scene)
