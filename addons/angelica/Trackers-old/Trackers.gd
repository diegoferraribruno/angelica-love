extends Node2D
var fingers = 0
func track(command):
	if command[0] == "timer":
		$Timer.count_down(command)
	if command[0] == "track":
		$Tracker.track(command)
