class_name BootIntroSequence
extends Node2D

@export var intro_anim_name: String = "intro"

@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _ready() -> void:
	animation_player.play(intro_anim_name)
