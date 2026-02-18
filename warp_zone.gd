class_name WarpZone extends Area2D

@export var warp_to : WarpZone


func _on_body_entered(body: Node2D) -> void:
	if body is Player and warp_to:
		var player : Player = body
		player.global_position = warp_to.global_position
