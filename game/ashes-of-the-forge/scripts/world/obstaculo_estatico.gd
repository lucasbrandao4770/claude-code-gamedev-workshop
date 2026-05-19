@tool
class_name ObstaculoEstatico
extends StaticBody2D
## Obstáculo estático reutilizável (árvore, pedra, tronco).
## Configura o sprite por recorte de spritesheet (region_rect) e a colisão
## limitada à base do prop. O pivô fica na base, permitindo Y-sort correto.

@export_group("Visual")
@export var texture: Texture2D: set = _set_texture
@export var region_rect: Rect2 = Rect2(0, 0, 16, 16): set = _set_region_rect

@export_group("Collision")
@export var collision_size: Vector2 = Vector2(16, 8): set = _set_collision_size
@export var collision_offset: Vector2 = Vector2.ZERO: set = _set_collision_offset

@onready var _sprite: Sprite2D = $Sprite2D
@onready var _collision: CollisionShape2D = $CollisionShape2D


func _ready() -> void:
	_refresh_sprite()
	_refresh_collision()


func _set_texture(value: Texture2D) -> void:
	texture = value
	if is_node_ready():
		_refresh_sprite()


func _set_region_rect(value: Rect2) -> void:
	region_rect = value
	if is_node_ready():
		_refresh_sprite()


func _set_collision_size(value: Vector2) -> void:
	collision_size = value
	if is_node_ready():
		_refresh_collision()


func _set_collision_offset(value: Vector2) -> void:
	collision_offset = value
	if is_node_ready():
		_refresh_collision()


func _refresh_sprite() -> void:
	_sprite.texture = texture
	_sprite.region_enabled = true
	_sprite.region_rect = region_rect
	_sprite.offset.y = -region_rect.size.y / 2.0


func _refresh_collision() -> void:
	var shape := _collision.shape as RectangleShape2D
	if shape == null:
		shape = RectangleShape2D.new()
		_collision.shape = shape
	shape.size = collision_size
	_collision.position = collision_offset
