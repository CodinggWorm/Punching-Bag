class_name MyHitBox
extends Area2D

export var damage := 10

func _int() -> void:
	collision_layer = 1
	collision_mask = 1

