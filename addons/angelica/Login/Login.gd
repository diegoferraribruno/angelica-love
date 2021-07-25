extends Node2D

onready var body = get_parent()
var close = true
var icon = "1f4db"
var good = ["1f600","1f601","1f602","1f603","1f604","1f605","1f606","1f609","1f60a","1f60b","1f60e","1f60d","1f618","1f617","1f619","1f61a","263a","1f642","1f60c","1f913","1f61b","1f61c","1f61d","1f643","1f607","1f608"]
var bad = ["1f610","1f611","1f636","1f644","1f60f","1f623","1f625","1f62e","1f910","1f62f","1f62a","1f62b","1f634","1f924","1f612","1f613","1f614","1f615","2639","1f641","1f616","1f61e","1f61f","1f624","1f622","1f62d","1f626","1f627","1f628","1f629","1f62c","1f630","1f633","1f635","1f621","1f479","1f922","1f915","1f912","1f637"]
var rgb = [1,1,1]
var emoji = ""
onready var user = get_parent().get_node("User").user
func _ready():
	randomize()
	var goodsize = good.size()
	var head = good[rand_range(0,goodsize)]
	$"Player/AvatarHead".bbcode_text = "[url=res://img/32/1f605.png][img]res://img/32/"+head+".png[/img][/url]"
	$"Player".emoji = head
 
func append_emoji(argument):
	$"Player".emoji = argument
	$"Sillyword".text += '"'+argument+'",'
	$"Player/AvatarHead".bbcode_text = "[img]res://img/32/"+argument+".png[/img]"

func _on_LineEdit_text_entered(new_text):
	$"LineEdit".focus_next
	$"Sillyword".grab_focus

func _on_Login_meta_clicked(meta):
	match meta:
		"login":
			user["name"] = $"LineEdit".text
			user["emoji"] = emoji
			body.synapse("chat")
			self.queue_free()
		"cancel":
			$"LineEdit".text = ""
			$"Sillyword".text = ""

func modulate():
	var color = Color(rgb[0],rgb[1],rgb[2])
	var color2 = color.to_html(false)
	$"Player/Body".modulate = color
	$"Player/mask".modulate = color
	$"Player/Baloon".modulate = color
	$"LineEdit".modulate = color
	$"Player/Label".modulate = color
	user["color"] = "#"+color2

func _on_VSlider_value_changed(value):
	rgb[0] = value
	modulate()

func _on_VSliderG_value_changed(value):
	rgb[1] = value
	modulate()
	

func _on_VSliderB_value_changed(value):
	rgb[2] = value
	modulate()

func _on_LineEdit_text_changed(new_text):
	$"Player/Label".bbcode_text = "[center]"+$"LineEdit".text+"[/center]"
	pass # Replace with function body.
