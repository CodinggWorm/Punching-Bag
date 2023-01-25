extends KinematicBody2D

var speed = 400
var jump = -500
var gravity = 500
var velocity = Vector2();
var player_health = 100
onready var _sprite = $AnimationPlayer

func get_input():
	velocity.x = 0
	if Input.is_action_pressed("ui_right"):
		velocity.x += speed
	if Input.is_action_pressed("ui_left"):
		velocity.x -= speed
		
func _physics_process(delta):
	get_input()
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity,Vector2.UP)
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y += jump

func _process(_delta):
	if Input.is_action_pressed("ui_right"):
		_sprite.play("Walk")
	elif Input.is_action_pressed("ui_down"):
		_sprite.play("Punch")
		velocity.x += speed
	elif Input.is_action_pressed("ui_up"):
		_sprite.play("Kick")
		velocity.x += speed
	elif Input.is_action_pressed("ui_left"):
		_sprite.play("Walk")
	else:
		_sprite.play("Idle")

func _play_stats():
	if player_health == 0:
		queue_free()
