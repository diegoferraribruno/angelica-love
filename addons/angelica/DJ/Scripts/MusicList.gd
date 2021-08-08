extends RichTextLabel
onready var allmusic = $"../../".allmusic
func _ready():
	var bbcode = ""
	
	for i in allmusic:
		bbcode += "[url="+i+"][img]res://img/16/1f3b5.png[/img]"+i+"[/url]\n" 
	bbcode_text = bbcode
	pass # Replace with function body.

func _on_Music_List_mouse_exited():
	get_parent().queue_free()
	pass # Replace with function body.


func _on_MusicPop_mouse_exited():
	pass # Replace with function body.


func _on_MusicList_meta_clicked(meta):
	get_node("../../MusicName").text = meta
	pass # Replace with function body.
