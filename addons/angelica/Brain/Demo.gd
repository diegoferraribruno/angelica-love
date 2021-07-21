extends Node

func demo():
	
#	get_node("Cbar/Label2").visible = true
	auto_save()
	userbkp = user
	autosave = false
	for i in dialogue:
		if i.find("ai_name ") != -1:
			i = i.replace("ai_name ","")
			ai_say(i)
			screen_shot(true)
			yield(get_tree().create_timer(1.2), "timeout")
		else: 
			get_node("Cbar/Label2").append_bbcode(i)
			yield(get_tree().create_timer(2), "timeout")
			get_node("Cbar/Label2").text = ""
			synapse(i)
			yield(get_tree().create_timer(1.2), "timeout")
		

var demo = [
	"timer 3",
	"show",
	"new",
	"Angelica name Angelica121",
	"good morning",
	"Angelica121 color Fuchsia",
	"hello",
	"happy",
	"community",
	"Angelica121 name Angelica",
	"name UserName",
	"very wise...",
	"name Diego",
	"by the way!",
	"color #dfb000",
	"someone could make you a brain... I  might have that example downloaded!",
	"date",
	"You are growing fast Angelica! Now you have a demo command",
	"2*5",
	"time",
	"i talk to myself sometimes. I feel safe talking to you",
	"ai_name selfie",
	"What? what are you doing?????",
	"ai_name nothing, i am doing absolutly nothing!",
	"Oh-no! you are alive!",
	"ai_name no, i am not!",
	"What do you know about me?",
	"print have_feelings",
	"print have_need",
	"What about privacy?",
	"print user",
	"thats all that you know about me?",
	"add note Angelica121 This is a great example! i could tweet this note with [b]tw note Angelica121[/b] #",
	"edit note Angelica121",
	"editor",
	"add # angelica",
	"tw @ angelica I am testing Angelica Desktop Helper and she just opened my browser to send this tweet #",
	"del # angelica",
	"del note Angelica121",
	"help"
	]
