extends RichTextLabel
#Left script
onready var hint= get_node("../../../Hint")
onready var reflex = get_node("../Reflex/Menu_reflex")

var menu_bottom = [
	"[url=mini][img]res://addons/angelica/images/16/1f64b.png[/img][/url]",
	"[url=studio][img]res://addons/angelica/images/16/1f3ac.png[/img][/url]",
	"[url=pause][img]res://addons/angelica/images/16/23ef.png[/img][/url]",
	"[url=hello][img]res://addons/angelica/images/16/1f4ac.png[/img][/url]",
	"[url=ss][img]res://addons/angelica/images/16/1f4f7.png[/img][/url]",
	"[url=selfie][img]res://addons/angelica/images/16/1f4f9.png[/img][/url]",
	"[url=folder][img]res://addons/angelica/images/16/1f4c1.png[/img][/url]",
	"[url=hide][img]res://addons/angelica/images/16/1f4bb.png[/img][/url]",
	"[url=editor][img]res://addons/angelica/images/16/1f4df.png[/img][/url]",
	"[url=list notes][img]res://addons/angelica/images/16/1f4d4.png[/img][/url]",
	"[url=list links][img]res://addons/angelica/images/16/1f30e.png[/img][/url]",
	"[url=pong][img]res://addons/angelica/images/16/1f3d3.png[/img][/url]",
	"[url=volume][img]res://addons/angelica/images/16/1f4e2.png[/img][/url]",
	"[url=edit menu][img]res://addons/angelica/images/16/1f6a7.png[/img][/url]",
	"[url=help][img]res://addons/angelica/images/16/2753.png[/img][/url]",
	"[url=save][img]res://addons/angelica/images/16/1f4be.png[/img][/url]",
	"[url=#][img]res://addons/angelica/images/16/0023-20e3.png[/img][/url]",
	"[url=demo][img]res://addons/angelica/images/16/1f608.png[/img][/url]",
	"[url=bye][img]res://addons/angelica/images/16/274c.png[/img][/url]",
]
func _ready() -> void:
	connect("meta_clicked", self, "handle")
	menu_show()
	
#	yield(get_tree().add_child(Timer,"Timer",4,false),"TimeOut")
#	construct_menu()
func handle(argument):
	get_node("../../..").input_entered(argument)
func menu_show():
	yield(get_tree().create_timer(2), "timeout")
	var text_menu = ""
#	bbcode_text = text_menu
	for i in menu_bottom:
		var show_big = i
		text_menu += ""+i+"\n"
		show_big = text_menu+(show_big.replace("16/","32/"))
#		bbcode_text = "[img]res://addons/angelica/images/32/0001.png[/img]" + show_big
#		reflex.bbcode_text = "[img]res://addons/angelica/images/32/0001.png[/img]"+ show_big
		yield(get_tree().create_timer(0.06), "timeout")
		bbcode_text = text_menu
		reflex.bbcode_text = text_menu

func construct_menu():
	var text_menu = ""
	for i in menu_bottom:
		text_menu += ""+i+"\n"
	bbcode_text = text_menu + "[img]res://addons/angelica/images/32/3001.png[/img]\n"
	reflex.bbcode_text = text_menu + "[img]res://addons/angelica/images/32/3001.png[/img]\n"

var clonemenu = menu_bottom

func _on_Menu_meta_hover_started(meta):
	var text_menu = ""
	for i in clonemenu:
		if meta in i:
			var cloni
			cloni = i.replace("16/","32/")
			text_menu += ""+cloni+"\n"
		else:
			text_menu += ""+i+"\n"
	bbcode_text = text_menu
	reflex.bbcode_text = text_menu
	var pos = get_local_mouse_position()+Vector2(30,0)
	hint.hint(meta,pos)
func _on_Menu_meta_hover_ended(meta):
	hint.hint("",Vector2(0,0))
func _on_Menu_mouse_exited():
	yield(get_tree().create_timer(0.08), "timeout")
	construct_menu()
