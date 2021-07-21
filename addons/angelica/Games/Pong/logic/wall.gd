extends Area2D
var score = {
	"left":0,
	"right":0
}
func _on_wall_area_entered(area):
	if area.name == "Ball":
		#oops, ball went out of game place, reset
		
		area.reset()
