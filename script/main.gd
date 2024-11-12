extends Control



var button_tween=null
func _ready() -> void:
	pass


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://menu.tscn")
	pass # Replace with function body.
