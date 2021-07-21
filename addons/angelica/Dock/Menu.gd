extends RichTextLabel

onready var hint= get_node("../../../Hint")
onready var reflex = get_node("../Reflex/Menu_reflex")

var menu_bottom = [""
]
func _ready() -> void:
	connect("meta_clicked", self, "handle")
	menu_show()
	
#	yield(get_tree().add_child(Timer,"Timer",4,false),"TimeOut")
#	construct_menu()
func handle(argument):
	get_node("../../..").input_entered(argument)
	
func menu_show():
	yield(get_tree().create_timer(1), "timeout")
	var text_menu = "[center][img]res://addons/angelica/images/48/0000.png[/img] "
	bbcode_text = text_menu
	for i in menu_bottom:
		var show_big = i
		text_menu += i
		show_big = text_menu+(show_big.replace("32/","48/"))
		bbcode_text = show_big + "[img]res://addons/angelica/images/48/0000.png[/img]"
		reflex.bbcode_text = show_big + "[img]res://addons/angelica/images/48/0000.png[/img]"
		yield(get_tree().create_timer(0.06), "timeout")
		bbcode_text = text_menu + "[img]res://addons/angelica/images/48/0000.png[/img]"
		reflex.bbcode_text = text_menu + "[img]res://addons/angelica/images/48/0000.png[/img]"

func construct_menu():
	var text_menu = "[center]"
	for i in menu_bottom:
		text_menu += i
	bbcode_text = text_menu + "[img]res://addons/angelica/images/48/0000.png[/img][/center]"
	reflex.bbcode_text = text_menu + "[img]res://addons/angelica/images/48/0000.png[/img][/center]"

var clonemenu = menu_bottom
func _on_Menu_meta_hover_started(meta):
	var text_menu = "[center]"
	for i in clonemenu:
		if meta in i:
			var cloni
			cloni = i.replace("32/","48/")
			text_menu += cloni
		else:
			text_menu += i
	bbcode_text = text_menu + "[img]res://addons/angelica/images/48/0000.png[/img][/center]"
	reflex.bbcode_text = text_menu + "[img]res://addons/angelica/images/48/0000.png[/img][/center]"
	var pos = get_global_mouse_position()+Vector2(-30,-40)
	hint.hint(meta,pos)
func _on_Menu_meta_hover_ended(meta):
	hint.hint("",Vector2(0,0))
func _on_Menu_mouse_exited():
	yield(get_tree().create_timer(0.1), "timeout")
	construct_menu()
