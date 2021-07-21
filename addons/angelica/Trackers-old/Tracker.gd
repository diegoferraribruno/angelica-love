extends Node2D
onready var angelica = get_node("../../")
onready var  printparent = "./../../../"
var object = printparent
var property = "position"
var myparentvar = ""
var fps

func _ready():
	pass # Replace with function body.
func _process(delta):
	if fps == true:
		myparentvar = Engine.get_frames_per_second()
		myparentvar = "FPS: " + str(myparentvar)
	else:
		myparentvar = get_node(printparent).get(property) 
	$Object.text = str(myparentvar)
	
	
func track(command):
		if command[1] == "fps":
			fps = true
		if command.size() ==3:
			var parent = $"./../../../"
			if parent.has_node(command[1]):
				printparent = "./../../../"+command[1]
				property = command[2]
				myparentvar = get_node(printparent).get(command[2]) 
				myparentvar = str(command[1])+"."+str(command[2])+": "+str(myparentvar)
				angelica.ai_say(myparentvar)
				
		if command.size() == 2:
			printparent = "./../../../Angelica/Angelica"
			myparentvar = get_node(printparent).get(command[1])
			var textmyparentvar = str(command[1])+": "+str(myparentvar)
			angelica.ai_say(textmyparentvar)

