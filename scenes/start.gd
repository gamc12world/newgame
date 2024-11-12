extends Button


@onready var tween:Tween
@onready var tween_destroy=null
func _ready() -> void:

	connect("mouse_entered",  _on_button_hovered)
	connect("mouse_exited",  _on_button_unhovered)
	connect("pressed", _on_button_pressed)

	pass
func _process(delta: float) -> void:
	add_theme_color_override("font_color", Color(1, 1, 1))
	pass
func _on_button_hovered():
	var x1=create_tween()
	x1.tween_property(self,"scale",Vector2(1.1,1.1),0.2).set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_OUT)
	print("hover")
	pass
func _on_button_unhovered():
	var x1=create_tween()
	x1.tween_property(self,"scale",Vector2(1,1),0.6)
	print("unhover")
	pass
func _on_button_pressed():
	var x2=create_tween()
	x2.tween_property(self,"modulate",Color(39, 20, 29),0.2).set_trans(Tween.TRANS_QUAD).set_ease(Tween.EASE_OUT)
	#var x3=create_tween()
	#x3.tween_property(self,"modulate",Color(39, 20, 0),0.2)
	pass
