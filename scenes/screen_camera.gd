class_name ScreenCamera extends Camera2D

const SCREEN_WIDTH : float = 640
const SCREEN_HEIGHT : float = 384

var current_zone : CameraZone

func _on_focus_area_entered(area: Area2D) -> void:
	if area is CameraZone:
		current_zone = area as CameraZone
		limit_left = int(current_zone.global_position.x)
		limit_right = int(current_zone.global_position.x + SCREEN_WIDTH)
		limit_top = int(current_zone.global_position.y)
		limit_bottom = int(current_zone.global_position.y + SCREEN_HEIGHT)
