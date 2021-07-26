extends KinematicBody2D

onready var user = get_node("../../../User").user
onready var emoji = user["emoji"]

#
#func load_player():
#	get_parent().emoji = argument
func _ready():
	get_node("Label").bbcode_text = "[center]"+user["name"]+"[/center]"
	get_node("AvatarHead").bbcode_text = "[url][img]res://img/32/"+emoji+".png[/img][/url]"
	
#	get_node("AvatarHead").bbcode_text = "[url][img]res://img/32/"+argument+".png[/img][/url]"
#	$"EmojiPanel".visible = false


func _on_Player_mouse_entered():
#	$"EmojiPanel".visible = true
	pass

func _on_Player_mouse_exited():
#	$"EmojiPanel".visible = true
	pass

func _on_AvatarHead_meta_clicked(meta):
#	$"EmojiPanel".visible = true
	$"../../LineEdit".text = user["name"]
	$"../../Player".append_emoji(emoji)
	$"../../Player".get_node("Label").bbcode_text =  "[center]"+user["name"]+"[/center]"
	
func _on_Area2D_body_entered(body):
	pass
	
func _on_Area2D_body_exited(body):
	pass


func _on_Load_meta_clicked(meta):
	_on_AvatarHead_meta_clicked(meta)
	pass # Replace with function body.
