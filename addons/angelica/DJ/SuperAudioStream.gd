extends AudioStreamPlayer
onready var playingb = $"../".playing
func _ready():
	if playingb == false:
		queue_free()
	play()
	connect('finished', self, 'queue_free')
