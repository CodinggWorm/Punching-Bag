extends Node2D

onready var _animation_player := $AnimationPlayer
onready var _dummy_position = position

func _ready() -> void:
	_animation_player.play("Still")

func take_damage():
	_animation_player.play("Hit")

func _on_MyHurtBox_area_entered(_MyHitBox: Area2D) -> void:
	take_damage()
