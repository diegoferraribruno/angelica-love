extends RichTextLabel
var left = 0
var right = 0
onready var area = $"../Ball"
func _ready():
	visible = true
	bbcode_text = "[center]"+str(left)+"  "+str(right)+"[/center]"
	yield(get_tree().create_timer(1.5), "timeout")
	visible = false
func update():
	$"../goal".play()
	visible = true
	bbcode_text = "[center]"+str(left)+"  "+str(right)+"[/center]"
	yield(get_tree().create_timer(1), "timeout")
	if left > 4 and left - right > 1:
		$"../victory".play()
		bbcode_text = "Left"
		yield(get_tree().create_timer(1), "timeout")
		bbcode_text = "[center]Wins![/center]"
		yield(get_tree().create_timer(1.2), "timeout")
		right = 0
		left = 0
		visible = false
		area.reset()
	if right > 4 and right - left > 1:
		$"../victory".play()
		bbcode_text = "[right]Right[/right]"
		yield(get_tree().create_timer(1), "timeout")
		bbcode_text = "[center]Wins![/center]"
		yield(get_tree().create_timer(1.2), "timeout")
		visible = false
		right = 0
		left = 0
		area.reset()
	else:
		
		bbcode_text = "[center]"+str(left)+"  "+str(right)+"[/center]"
		yield(get_tree().create_timer(1.2), "timeout")
		visible = false
