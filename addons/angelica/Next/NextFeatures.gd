extends Node2D
var close = true
var icon = "26a0"

func _ready():
	$"LineEdit".text = $"Interface".bbcode_text

#
#func ai_say(text):
##	text = "[img]res://img/16/"+new_face+".png[/img] [color="+ ai_prefs["ai_color"]+"][b]"+ai_prefs["ai_name"]+":[/b][/color] "+str(text)+"\n"
#	yield(get_tree().create_timer(0.4), "timeout")
#	$"Interface".append_bbcode(text)


func _on_LineEdit_text_entered(new_text):
	$"Interface".bbcode_text = $"LineEdit".text


func _on_Interface2_meta_clicked(meta):
	match meta:
		"to_note":
			$"Interface".bbcode_text = $"LineEdit".text
		"to_editor":
			$"LineEdit".text = $"Interface".bbcode_text
	pass # Replace with function body.
