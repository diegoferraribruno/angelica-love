extends Area2D

func _on_wall_area_entered(area):
	if area.name == "Ball":
		$"../Score".right +=1
		$"../Score".update()
		#oops, ball went out of game place, reset
		area.reset()
