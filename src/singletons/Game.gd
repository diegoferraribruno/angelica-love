extends Node

var chaos := 0.0 setget set_chaos
signal chaos_changed

func _physics_process(delta):
	self.chaos += delta

func set_chaos(value: float):
	chaos = min(value, 60)
	emit_signal("chaos_changed")

func get_seconds(value: float):
	return 0.16 * 60 * value
