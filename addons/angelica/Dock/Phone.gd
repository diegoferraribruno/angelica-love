extends Node2D


var interface = [
	"[center]System[/center]",
	"\n",
	"[url=login][img]res://img/32/1f4db.png[/img][/url] ",
	"[url=folder][img]res://img/32/1f4c1.png[/img][/url] ",
	"[url=glow][img]res://img/32/1f4a1.png[/img][/url] ",
	"[url=shades][img]res://img/32/1f60e.png[/img][/url] ",
	"[url=volume][img]res://img/32/1f4e2.png[/img][/url]",
	"[url=mini][img]res://img/32/1f4df.png[/img][/url] ",
	"[url=rest][img]res://img/32/1f441-1f5e8.png[/img][/url] ",
	"[url=save][img]res://img/32/1f4be.png[/img][/url] ",
	"[url=bye][img]res://img/32/274c.png[/img][/url] ",
	"[center]Creative[/center]",
	"\n",
	"[url=selfie][img]res://img/32/1f4f9.png[/img][/url] ",
	"[url=ss][img]res://img/32/1f4f7.png[/img][/url] ",
	"[url=dj][img]res://img/32/1f3a7.png[/img][/url] ",
	"[url=paint][img]res://img/32/1f3a8.png[/img][/url] ",
	"[url=studio][img]res://img/32/1f3ac.png[/img][/url]",
#	"[url=list notes][img]res://img/32/1f4d4.png[/img][/url]",
#	"[url=list links][img]res://img/32/1f30e.png[/img][/url]",
#	"[url=editor][img]res://img/32/1f4df.png[/img][/url]",
#	"[url=mini][img]res://img/32/1f64b.png[/img][/url]",
#	"[url=pause][img]res://img/32/23ef.png[/img][/url]",
#	"[url=hello][img]res://img/32/1f4ac.png[/img][/url]",
#	"[url=hide][img]res://img/32/1f4bb.png[/img][/url]",
#	"[url=edit menu][img]res://img/32/1f6a7.png[/img][/url]",
#	"[url=help][img]res://img/32/2753.png[/img][/url]",
#	"[url=#][img]res://img/32/0023-20e3.png[/img][/url]",
#	"[url=demo][img]res://img/32/1f608.png[/img][/url]",
	"[center]Games[/center]",
	"\n",
	"[url=xperma][img]res://img/32/1f4ab.png[/img][/url] ",
	"[url=truck][img]res://img/32/1f69a.png[/img][/url] ",
	"[url=love][img]res://img/32/2665.png[/img][/url] ",
	"[url=pong][img]res://img/32/1f3d3.png[/img][/url] ", 
	"[center]W.I.P.[/center]",
	"\n",
	"[url=radio][img]res://img/32/1f4fb.png[/img][/url] ",
	"[url=star][img]res://img/32/2605.png[/img][/url] ",
	"[url=chat][img]res://img/32/1f5e8.png[/img][/url] ",
	"[url=next][img]res://img/32/26a0.png[/img][/url] ", 
	]

func _ready():
	var text = ""
	for i in interface:
		text += i
		
	$"Body".bbcode_text = text


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Body_meta_hover_ended(meta):
	var pos = get_local_mouse_position()+Vector2(-30,-40)
	$"SuperButton".hint("",Vector2(-30,-40))


func _on_Body_meta_hover_started(meta):
	var pos = get_local_mouse_position()+Vector2(-30,-40)
	$"SuperButton".hint(meta,pos)
	pass # Replace with function body.


func _on_Body_meta_clicked(meta):
	get_parent().synapse(meta)
	pass # Replace with function body.
