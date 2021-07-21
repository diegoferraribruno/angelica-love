extends Node

func _ready():
	var anim = get_node("AnimationPlayer").get_animation("Espiral")
	anim.set_loop(true)
	get_node("AnimationPlayer").play("Espiral")

func _on_Timer_timeout():
	queue_free()
