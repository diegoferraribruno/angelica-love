extends Panel
onready var screensize = get_viewport().get_visible_rect().size
onready var bg_position = Vector2(screensize.x,screensize.y/3)
onready var chao = $"../Atmoground"
var colors = [Color(0.3,0.56,0.98),Color(0.0,02,0.31), Color(0, 0.17, 0.44)]
var r = 0.005
var g = 0.007
var b = 0.014
var rfactor = 0.005
var gfactor = 0.007
var bfactor = 0.014
var revert = 1.1

func _ready():
	rect_size.x = bg_position.x
	rect_position.y = bg_position.y
	chao.rect_size.x = bg_position.x
	chao.rect_position.y = screensize.y


func _process(delta):
	
	r += rfactor*delta*revert
	g += gfactor*delta*revert
	b += bfactor*delta*revert
	modulate = Color(r,g,b)
	chao.modulate = Color(g-0.1,b-0.1,r-0.1)
	var treecolor = Color(b*4,b*4,b*4)
	get_node("../../").modulate_trees(treecolor)
	

	if b >= 2:
		revert = -3
	if b < 0.014:
			revert = 1.1
			b = 0.06
			$"../Timer".start()
			$"../Timer2".start()
			$"../Sun".reset()
			$"../Stars".reset()
