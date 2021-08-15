extends Node2D

var initialize = [
	"title [center][rainbow]Truck Town Demo Remix - W.I.P.[/rainbow][/center]",
	"hide on",
#	"dj clear",
#	"dj play playing",
#	"track fps",
	]
var quit = [
	"title",
#	"dj clear"
]
var close = true
var town = null

func _ready():
	for i in initialize:
		get_node("../../Body").input_entered(i)
		
func quit():
	for i in quit:
		get_node("../../Body").input_entered(i)

func _process(_delta):
	if Input.is_action_just_pressed("back"):
		_on_Back_pressed()

func _load_scene(car):
	var tt = load(car).instance()
	tt.set_name("car")
	town = load("res://addons/angelica/Games/trucktown/town_scene.tscn").instance()
	town.get_node("InstancePos").add_child(tt)
	town.get_node("Back").connect("pressed", self, "_on_Back_pressed")
	get_parent().add_child(town)
	hide()

func _on_Back_pressed():
	town.queue_free()
	get_tree().get_root().set_transparent_background(true)
	if OS.get_name() != "HTML5":
		OS.window_per_pixel_transparency_enabled = true
	show()

func _on_MiniVan_pressed():
	_load_scene("res://addons/angelica/Games/trucktown/car_base.tscn")
	
func _on_Monstertruck_pressed():
	_load_scene("res://addons/angelica/Games/trucktown/monster_truck.tscn")

func _on_TrailerTruck_pressed():
	_load_scene("res://addons/angelica/Games/trucktown/trailer_truck.tscn")

func _on_TowTruck_pressed():
	_load_scene("res://addons/angelica/Games/trucktown/tow_truck.tscn")
