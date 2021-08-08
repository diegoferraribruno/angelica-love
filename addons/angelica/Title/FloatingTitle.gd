extends Node2D
var mini = true
var close = true
var menu = "\n[url=edit title][img]res://img/32/2328.png[/img][/url]"

func _ready():
	get_tree().root.connect("size_changed", self, "_on_viewport_size_changed")
	_on_viewport_size_changed()
	
	$"Editor/TextEdit".text = $"RichTextLabel".bbcode_text

func _on_viewport_size_changed():
	var screensize = get_viewport_rect().size
	$"RichTextLabel".margin_right = screensize.x-64
	$"RichTextLabel".margin_left = 64

func _on_LineEdit_text_entered(new_text):
	$"Interface".bbcode_text = $"Editor/TextEdit".text

func menu(meta):
	match meta:
		"edit title":
			$"Editor".visible = !$"Editor".visible
			$"Editor/TextEdit".text = $"RichTextLabel".bbcode_text

func add_app(foo,bar):
	pass
