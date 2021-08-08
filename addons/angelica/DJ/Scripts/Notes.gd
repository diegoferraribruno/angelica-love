extends RichTextLabel

onready var notes = get_parent().notes

func _ready():
	visible = false

func _on_Notes_meta_clicked(meta):
	
	pass # Replace with function body.


func _on_Notes_meta_hover_started(meta):
	pass
#	get_parent()._on_LineEdit_text_entered(meta)
#	var stream = load(notes[meta])
#	$"AudioStreamPlayer".play(stream)
#
