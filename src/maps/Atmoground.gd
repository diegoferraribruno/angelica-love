extends ColorRect
onready var screensize = get_viewport().get_visible_rect().size
onready var bg_position = Vector2(screensize.x,screensize.y/3)

func _ready():
	margin_top = bg_position.y
	margin_bottom = screensize.y+2
	margin_right = screensize.x
	update()
