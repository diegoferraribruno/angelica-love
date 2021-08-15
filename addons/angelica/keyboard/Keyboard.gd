extends CanvasLayer

var shift = false
onready var textedit = get_node("TextEdit")
onready var screensize = get_viewport().get_visible_rect().size

func _ready():
	if get_parent().has_node("TextEdit"):
		textedit = get_node("../TextEdit")
		$"TextEdit".visible = false
#	position = Vector2(0,0)
	$"LeffKey".margin_left = 0
	$"LeffKey".margin_right = 330
	$"LeffKey".margin_bottom = screensize.y-20
	$"LeffKey".margin_top = screensize.y-240
	
	$"RightKey".margin_left = screensize.x - 370
	$"RightKey".margin_right = screensize.x-46
	$"RightKey".margin_bottom = screensize.y-40
	$"RightKey".margin_top = screensize.y-240
	
	$"SpaceBar".margin_bottom = screensize.y - 40
	$"SpaceBar".margin_top = screensize.y- 240
	$"SpaceBar".margin_left = screensize.x/2-118
	$"SpaceBar".margin_right = screensize.x/2+76
	
	$"TextEdit".margin_right = screensize.x-46
	$"TextEdit".margin_left = 40
	$"TextEdit".margin_top = screensize.y-320
	$"TextEdit".margin_top = screensize.y-250
	
func _on_LeffKey_meta_clicked(meta):
	match meta:
		"space":
			 _on_RightKey_meta_clicked(" ")
		"shift":
			shift = !shift
		_:
			 _on_RightKey_meta_clicked(meta)

func _on_RightKey_meta_clicked(meta):
	match meta:
		"up":
			var cursorline = textedit.cursor_get_line()
#			if cursorline > 0:
			cursorline -= 1
			textedit.cursor_set_line(cursorline)
		"down":
			var cursorline = textedit.cursor_get_line()
#			if cursorline  0:
			cursorline += 1
			textedit.cursor_set_line(cursorline)
		"left":
			textedit.cursor_set_column(textedit.cursor_get_column()-1) 
		"right":
			textedit.cursor_set_column(textedit.cursor_get_column()+1)
		"close":
			queue_free()
#			var cursorpos = textedit.cursor_get_column()
		"bold":
			var bold = textedit.get_selection_text()
			textedit.insert_text_at_cursor("[b]"+bold+"[/b]")
#			bold = "[b]"+bold+"[/b]"
#			textedit.cursor_set_column(cursorpos)
#			textedit.select(cursorline,cursorpos,cursorline,cursorpos+1)
#			textedit.insert_text_at_cursor("")
#			textedit.insert_text_at_cursor(bold) 
		"backspace":
			if textedit.is_selection_active():
				textedit.insert_text_at_cursor("")
			else:
				var cursorpos = textedit.cursor_get_column()-1
				var cursorline = textedit.cursor_get_line()
				textedit.cursor_set_column(cursorpos)
				textedit.select(cursorline,cursorpos,cursorline,cursorpos+1)
				textedit.insert_text_at_cursor("")
		"ok":
			if get_parent().has_method("_on_text_entered"):
				get_parent()._on_text_entered(textedit.text)
		_:
			if shift == true:
				meta = str(meta).to_upper()
			textedit.insert_text_at_cursor(meta)
			pass # Replace with function body.
