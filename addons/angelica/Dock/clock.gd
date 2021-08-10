extends RichTextLabel
func _ready():
	_on_Timer_timeout()
	
func _on_Timer_timeout():
	var time = OS.get_time()
	var time_return = String(time.hour).pad_zeros(2) +":"+String(time.minute).pad_zeros(2)+":"+String(time.second).pad_zeros(2)
	text = time_return
