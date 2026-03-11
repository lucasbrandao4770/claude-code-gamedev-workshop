class_name Room
extends Node2D
## Base class for all game rooms.

@export var room_name: String = "Unknown"
@export var room_size: Vector2 = Vector2(320, 180)
@export var player_spawn: Vector2 = Vector2(160, 90)
@export var music_track: String = ""


func _ready() -> void:
	GameManager.set_room_name(room_name)
