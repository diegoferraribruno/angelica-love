extends Node2D
var icon = "1f4df"
var mini = true
var text = ""


func _on_LineEdit_text_entered(new_text):
	get_parent().synapse(new_text)
	pass # Replace with function body.
