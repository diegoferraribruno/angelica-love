extends Node2D
onready var scene = load("res://src/maps/Love.tscn")
onready var screensize := get_viewport_rect().size
onready var screencenter := screensize/2-Vector2(640,360)
var initialize = [
	"glow on",
	"hide on"
#	"title [center][rainbow]Share Your Love[/rainbow][/center]",
#	"future implementation Radio play (itś a dj clone)",
	]
func _ready():
	position = screencenter
	var anim = get_node("AnimationPlayer").get_animation("Espiral")
	anim.set_loop(true)
	get_node("AnimationPlayer").play("Espiral")

func _on_Timer_timeout():
	var instance = scene.instance()
	get_parent().add_child(instance)
	queue_free()
