@tool
extends Control

@export_enum("up", "right", "down", "left")
var direction: String = "up" :
	set(value):
		direction = value
		_update_texture_rotation()

@export var active: bool = false

func _ready():
	_update_texture_pivot()
	_update_texture_rotation()

func _notification(what):
	if what == NOTIFICATION_RESIZED:
		_update_texture_pivot()

func _process(_delta):
	# Make TextureRect half transparent when inactive
	var tex_rect = $TextureRect
	if active:
		tex_rect.modulate = Color(1, 1, 1, 1)
	else:
		tex_rect.modulate = Color(1, 1, 1, 0.5)

func _update_texture_rotation():
	var angle_degrees = {
		"up": 0,
		"right": 90,
		"down": 180,
		"left": 270
	}.get(direction, 0)
	
	var tex_rect = $TextureRect
	if tex_rect:
		tex_rect.rotation_degrees = angle_degrees

func _update_texture_pivot():
	var tex_rect = $TextureRect
	if tex_rect:
		tex_rect.pivot_offset = tex_rect.size / 2
