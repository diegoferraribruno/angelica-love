extends RichTextLabel
onready var hint= get_node("../../../Hint")
onready var reflex = get_node("../Reflex/Menu_reflex")

var menu_bottom = [
	"[url=mini][img]res://img/32/1f64b.png[/img][/url]  ",
	"[url=studio][img]res://img/32/1f3ac.png[/img][/url]  ",
	"[url=pause][img]res://img/32/23ef.png[/img][/url]  ",
	"[url=hello][img]res://img/32/1f4ac.png[/img][/url]  ",
	"[url=ss][img]res://img/32/1f4f7.png[/img][/url]  ",
	"[url=selfie][img]res://img/32/1f4f9.png[/img][/url]  ",
	"[url=folder][img]res://img/32/1f4c1.png[/img][/url]  ",
	"[url=hide][img]res://img/32/1f4bb.png[/img][/url]  ",
	"[url=editor][img]res://img/32/1f4df.png[/img][/url]  ",
	"[url=list notes][img]res://img/32/1f4d4.png[/img][/url]  ",
	"[url=list links][img]res://img/32/1f30e.png[/img][/url]  ",
	"[url=pong][img]res://img/32/1f3d3.png[/img][/url]  ",
	"[url=volume][img]res://img/32/1f4e2.png[/img][/url]  ",
	"[url=edit menu][img]res://img/32/1f6a7.png[/img][/url]  ",
	"[url=help][img]res://img/32/2753.png[/img][/url]  ",
	"[url=save][img]res://img/32/1f4be.png[/img][/url]  ",
	"[url=#][img]res://img/32/0023-20e3.png[/img][/url]  ",
	"[url=demo][img]res://img/32/1f608.png[/img][/url]  ",
	"[url=bye][img]res://img/32/274c.png[/img][/url]  ",
]
func _ready() -> void:
	connect("meta_clicked", self, "handle")
	menu_show()
	
#	yield(get_tree().add_child(Timer,"Timer",4,false),"TimeOut")
#	construct_menu()
func handle(argument):
	get_node("../../../../").input_entered(argument)
	
func menu_show():
	yield(get_tree().create_timer(2), "timeout")
	var text_menu = "[center][img]res://img/32/0000.png[/img] "
	bbcode_text = text_menu
	for i in menu_bottom:
		var show_big = i
		text_menu += i
		show_big = text_menu+(show_big.replace("16/","32/"))
		bbcode_text = show_big + "[img]res://img/32/0000.png[/img]"
		reflex.bbcode_text = show_big + "[img]res://img/32/0000.png[/img]"
		yield(get_tree().create_timer(0.06), "timeout")
		bbcode_text = text_menu + "[img]res://img/32/0000.png[/img]"
		reflex.bbcode_text = text_menu + "[img]res://img/32/0000.png[/img]"

func construct_menu():
	var text_menu = "[center][img]res://img/32/0000.png[/img] "
	for i in menu_bottom:
		text_menu += i
	bbcode_text = text_menu + "[img]res://img/32/0000.png[/img][/center]"
#	reflex.bbcode_text = text_menu + "[img]res://img/32/0000.png[/img][/center]"

var clonemenu = menu_bottom
func _on_Menu_meta_hover_started(meta):
	var text_menu = "[center][img]res://img/32/0000.png[/img] "
	for i in clonemenu:
		if meta in i:
			var cloni
			cloni = i.replace("16/","32/")
			text_menu += cloni
		else:
			text_menu += i
	bbcode_text = text_menu + "[img]res://img/32/0000.png[/img][/center]"
	reflex.bbcode_text = text_menu + "[img]res://img/32/0000.png[/img][/center]"
	var pos = get_global_mouse_position()+Vector2(0,-30)
	hint.hint(meta,pos)
func _on_Menu_meta_hover_ended(meta):
	hint.hint("",Vector2(0,0))
func _on_Menu_mouse_exited():
	yield(get_tree().create_timer(0.1), "timeout")
	construct_menu()
