extends YSort

onready var user = get_node("../../User").user
onready var player = load("res://src/scenes/Player/Player.tscn")
onready var fscript = load("res://src/scenes/Player/Friend.gd")
onready var screensize = get_viewport().get_visible_rect().size

func _ready():
	if user.has("friends"):
		var x = 0
		for i in user["friends"]:
			var instance = player.instance()
			instance.set_script(fscript)
			instance.position = Vector2(screensize.x+x*60,rand_range(64,screensize.y))
			var nome = "Friend"+str(x)
			instance.name = nome
			self.add_child(instance)
			x += 1
##			get_node(nome).corpo_cor = Color(str2var(i["color"]))
#			get_node(nome).happyface = i["happyface"]
#			get_node(nome).sadface = i["sadface"]
