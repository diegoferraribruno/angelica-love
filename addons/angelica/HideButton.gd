extends Node2D

func _ready():
	get_tree().root.connect("size_changed", self, "_on_viewport_size_changed")
	_on_viewport_size_changed()
	
func _on_viewport_size_changed():
	var screensize = get_viewport_rect().size
	position = Vector2(screensize.x-48,16)


func _on_AngelicaButton_mouse_entered():
	
	$"RichTextLabel".bbcode_text = "[url=hide][img]res://img/64/1f4f1.png[/img][/url]"
	$"RichTextLabel".margin_right = 48
	$"RichTextLabel".margin_left = -16
	$"RichTextLabel".margin_top = -8
	$"RichTextLabel".margin_bottom = 64
func _on_AngelicaButton_mouse_exited():
	$"RichTextLabel".bbcode_text = "[url=hide][img]res://img/32/1f4f1.png[/img][/url]"
	$"RichTextLabel".margin_right = 32
	$"RichTextLabel".margin_left = 0
	$"RichTextLabel".margin_top = 16
	$"RichTextLabel".margin_bottom = 48

	pass # Replace with function body.
