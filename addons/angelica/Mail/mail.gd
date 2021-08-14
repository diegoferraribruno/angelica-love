extends Node2D

onready var links = get_node("../User").user["links"]
onready var notes = get_node("../User").user["notes"]
onready var hashtags = get_node("../User").user["hashtags"]

func send_mail(to, what, new_text):
#	var emailaddress = "diegodesenha@gmail.com" < Here
#		OS.shell_open("https://mail.google.com/mail/?view=cm&ui=2&tf=0&fs=1&to=diegodesenha%40gmail.com&su=Angelica+Response&body=Hi,1%0aFrom+Agelica+App+with+love")
	var openfolder = false
	var mail_text = new_text.replace("mail ","")
	match what:
		"ss":
			mail_text = mail_text.replace("ss ","")
			openfolder = true
		"link":
			mail_text = mail_text.replace("@ ","")
			mail_text = mail_text.replace(str(what),"")
			var key = str(new_text)
			var x = 0
			for i in links[0]:
				if i == key:
					mail_text += " "+links[1][x]+" "
					break
				x += 1
		"note":
			mail_text = mail_text.replace("note ","")
			mail_text = mail_text.replace((str(to)+" "),"")
	#			mail_text = mail_text.replace(str(what,""))
			if mail_text in notes:
				mail_text = notes[mail_text]["bb"]
				mail_text = mail_text.replace(" ","+")
	var hashtags_text=""
	if mail_text.find("#") != -1:
		mail_text = mail_text.replace("# ","")
		for i in hashtags:
			hashtags_text = hashtags_text +i+" "
	
	mail_text = "https://mail.google.com/mail/?view=cm&ui=2&tf=0&fs=1&to="+to+"&su=Angelica+Response&body="+mail_text
	mail_text = mail_text.replace(" ","%20")
	mail_text = mail_text.replace("#","%2c")
	mail_text = mail_text.replace("=%2c","=")
	mail_text = mail_text.replace("@","%40")
