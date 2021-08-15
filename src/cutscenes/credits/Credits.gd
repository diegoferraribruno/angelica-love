extends Node2D

onready var screensize := get_viewport_rect().size
#onready var screencenter := screensize/2-Vector2(640,360)
func _ready():
	$"RichTextLabel2".margin_left = 50
	$"RichTextLabel2".margin_right = screensize.x - 56 
#	position = screencenter
#	var anim = get_node("AnimationPlayer").get_animation("Espiral")
#	anim.set_loop(true)
#	get_node("AnimationPlayer").play("Espiral")

#func _on_Timer_timeout():
#	queue_free()


func _on_Timer_timeout():
	queue_free()
	pass # Replace with function body.
