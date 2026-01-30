class_name Player extends CharacterBody2D

var move_speed : float = 300.0
var move_direction : Vector2 = Vector2.ZERO
var dead : bool = false


func _physics_process(_delta: float) -> void:
	# move the square
	move_direction = Input.get_vector("keyLeft", "keyRight", "keyUp", "keyDown")
	velocity = move_direction * move_speed
	move_and_slide()
