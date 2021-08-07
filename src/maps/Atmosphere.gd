extends Panel
onready var screensize = get_viewport().get_visible_rect().size
onready var bg_position = Vector2(screensize.x,screensize.y/2)
var colors = [Color(0.3,0.56,0.98),Color(0.0,02,0.31), Color(0, 0.17, 0.44)]
var r = 0.05
var g = 0.1
var b = 0.2
var rfactor = 0.005
var gfactor = 0.007
var bfactor = 0.013
var revert = 1

func _ready():
	rect_size.x = bg_position.x
	rect_position.y = bg_position.y
#	modulate = colors[0]

func _process(delta):
	
	r += rfactor*delta*revert
	g += gfactor*delta*revert
	b += bfactor*delta*revert
	modulate = Color(r,g,b)

	if b >= 2:
		revert = -1
	if b < 0.05:
			revert = 1
