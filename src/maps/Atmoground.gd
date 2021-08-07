extends ColorRect
onready var screensize = get_viewport().get_visible_rect().size
onready var bg_position = Vector2(screensize.x,screensize.y/2)

func _ready():
	margin_top = bg_position.y-1
	margin_bottom = screensize.y
	margin_right = screensize.x
	update()
