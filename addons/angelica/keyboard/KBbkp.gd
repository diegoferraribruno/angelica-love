extends Node2D

var shift = false
onready var textedit = get_node("../TextEdit")

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
		"bold":
			var bold = textedit.get_selection_text()
			bold = "[b]"+bold+"[/b]"
			var cursorpos = textedit.cursor_get_column()-1
			var cursorline = textedit.cursor_get_line()
			textedit.cursor_set_column(cursorpos)
			textedit.select(cursorline,cursorpos,cursorline,cursorpos+1)
			textedit.insert_text_at_cursor("")
			textedit.insert_text_at_cursor(bold) 
		"backspace":
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
