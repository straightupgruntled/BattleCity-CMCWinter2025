class_name Tank
extends CharacterBody2D

@export var move_speed: float = 230.0
@export var rotation_lerp_factor: float = 0.5

var _move_dir := Vector2.ZERO


@onready var visuals: Node2D = $Visuals


func update_move_direction(x_dir: int, y_dir: int) -> void:
	_move_dir = Vector2i(x_dir, y_dir)
	if _move_dir.x != 0: _move_dir.y = 0


func _process(_delta: float) -> void:
	var x_input = Input.get_axis("game_move_left", "game_move_right")
	var y_input = Input.get_axis("game_move_up", "game_move_down")
	update_move_direction(x_input, y_input)


func _physics_process(_delta: float) -> void:
	velocity = _move_dir * move_speed
	move_and_slide()

	if _move_dir.length_squared() > 0:
		visuals.rotation = lerp_angle(visuals.rotation, _move_dir.angle(), rotation_lerp_factor)
