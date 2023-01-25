class_name MyHurtBox
extends Area2D

func _init() -> void:
	collision_layer = 1
	collision_mask = 1

func take_damage():
	if MyHitBox is.Touching("MyHurtBox"):
		pass
