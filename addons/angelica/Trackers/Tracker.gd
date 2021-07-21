extends Node2D
# tracker Will track only one variable!
var target_node = "."
var target_property = "position"
var result = ""
var track_icon = "[img]./addons/angelica/images/16/1f6a8.png[/img]"
var close_icon = "[img]./addons/angelica/images/16/274e.png[/img]"
func _ready():
	$Icon.bbcode_text = track_icon+close_icon
func _process(delta):
	match target_property:
		"time_left":
#			result = target_node.get_time_left()
			result = get_node(target_node).get_time_left()
		_:
			result = get_node(target_node).get(target_property)
	print_result(result)
func track(target,property,where,icon):
	target_node = target
	target_property = property
	if where != "":
		position = Vector2(where)
	if icon != "":
		track_icon = icon
func print_result(result):
	$Object.text = str(result)
