extends Node2D
var close = true
#var ivon = "abcd"
func alert(text):
	visible = true
	$Label.text = text
	$Alarm.play()
	


func _on_Label_meta_clicked(meta):
	get_parent().input_entered(meta)
