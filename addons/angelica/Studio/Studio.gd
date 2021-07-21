extends Node2D

onready var screenSize = get_viewport().get_visible_rect().size
var following = false
var dragging_start_position = Vector2()
var lastmouseposition = Vector2()
var close = true
var icon = "[img]res://addons/angelica/images/16/1f3ac.png[/img]"
var mini = true
