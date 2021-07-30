extends Node2D

onready var screenSize = get_viewport().get_visible_rect().size
onready var user = $"../User"
var expanded_icon = "48"
var regular_icon = "32"

var commands = [""]
var menu_bottom = [
#	"[url=hide][img]res://img/32/1f4f1.png[/img][/url] ",
]
var menu_side = [""]
onready var user_dock = $"../User".user
func _ready():
	var menu = []
	for i in user_dock["dock"]:
		menu.push_back(i.to_lower()) 
	commands = menu
	for i in commands:
		var icon = user_dock["dock"][i]
		var menu_item = "[url="+i+"][img]res://img/"+regular_icon+"/"+icon+".png[/img][/url] "
		menu_bottom.push_back(menu_item)
	var menub = []
	for i in user_dock["side_dock"]:
		menub.push_back(i.to_lower())
	commands = menub
	for i in commands:
		var icon = user_dock["side_dock"][i]
		var menu_item = "[url="+i+"][img]res://img/"+regular_icon+"/"+icon+".png[/img][/url] "
		menu_side.push_back(menu_item)
	
	$"State_machine/Bottom/Menu".menu_bottom = menu_bottom
	$"State_machine/Bottom/Menu".clonemenu = menu_bottom
#	$"State_machine/Float/Menu".menu_bottom = menu_bottom
	$"State_machine/Right/Menu".menu_bottom = menu_side
	$"State_machine/Right/Menu".clonemenu = menu_side
#	$"State_machine/left/Menu".menu_bottom = menu_bottom 
	get_tree().root.connect("size_changed", self, "_on_viewport_size_changed")
	screenSize = get_viewport().get_visible_rect().size
	_on_viewport_size_changed()
	
func _on_viewport_size_changed():
	screenSize = get_viewport().get_visible_rect().size
	$"State_machine/Bottom".position.y = screenSize.y - 360
	$"State_machine/Bottom".position.x = screenSize.x/2-320
#	$"State_machine/Right".position.y = screenSize.y - 360
	$"State_machine/Right".position.x = screenSize.x 

func input_entered(argument):
	get_node("../Body").input_entered(argument)
