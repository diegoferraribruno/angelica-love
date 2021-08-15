extends Node2D
var i = 0
onready var fireworks = load("res://src/cutscenes/fireworks/Fireworks.tscn")
func _on_Timer4_timeout():
	i += 1
	var instance = fireworks.instance()
	add_child(instance)
	$"Timer4".wait_time = rand_range(0.7,2)
	if i == 10:
		$"Timer4".stop()

func reset():
	i = 0
	$"Timer4".start()
