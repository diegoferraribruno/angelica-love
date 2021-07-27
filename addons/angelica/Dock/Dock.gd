extends Node2D

onready var screenSize = get_viewport().get_visible_rect().size
onready var user = $"../../User"
#onready var icons = {
#	"command":"1f4f1",
#	"mini":"1f64b",
#	"studio":"1f3ac",
#	"pause":"23ef",
#	"chat mini":"1f64b",
#	"ss":"1f4f7",
#	"selfie":"1f4f9",
#	"folder":"1f4c1",
#	"hide":"1f4bb",
#	"editor":"1f4df",
#	"list notes":"1f4d4",
#	"list links":"1f30e",
#	"pong":"1f3d3",
#	"volume":"1f4e2",
#	"edit menu":"1f6a7",
#	"help":"2753",
#	"save":"1f4be",
#	"#":"0023-20e3",
#	"demo":"1f608",
#	"bye":"274c",
#	"paint":"1f3a8",
#	"glow":"1f4a1",
#	"truck":"1f69a",
#	"dj":"1f3a7",
#	"love":"2665",
#	"xperma":"1f4ab",
#	}

var regular_icon = "32"
var expanded_icon = "48"
var commands = [""]
var menu_bottom = [
#	"[url=command][img]res://img/32/1f4f1.png[/img][/url] ",
]
var menu_side = [""]
onready var user_dock = $"../../User".ai_prefs
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
#	$Body/Dock.window_changed
	screenSize = get_viewport().get_visible_rect().size
	$"State_machine/Bottom".position.y = screenSize.y - 360
	$"State_machine/Bottom".position.x = screenSize.x/2-320
#	$"State_machine/Right".position.y = screenSize.y - 360
	$"State_machine/Right".position.x = screenSize.x 
	# Do whatever you need to do when the window changes!
	print ("Viewport size changed")

func input_entered(argument):
	get_parent().input_entered(argument)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
