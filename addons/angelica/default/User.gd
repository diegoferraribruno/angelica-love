extends Node

var ai_prefs = {
	"ai_version":"190"
	, "ai_date" : "2021-23-07"
	, "about" : "please check for updates at [url=http://diegoferraribruno.itch.io/angelica]my web page[/url] \nIf you wanna chat a bit say: [b]hello[/b]"
	, "FILE_NAME" : "user://angelica-data.json"
	, "ai_name" : "Angelica"
	, "ai_color" : "#ffbbdd"
	, "need" : ""
	, "satisfied" : 0
	, "text" : ""
	, "have_feelings" : []
	, "have_need" : []
	, "inputs" : 0
	, "new_face" : "1f646"
	, "sleep" : true
	, "history ": ["enter text here"]
	, "cdtimer" : 0
	, "autohide" : true
	, "autoload" : false
	, "autosave" : true
	, "quietstart" : false
	, "autopause" : true
	, "state" : "show"
	, "state_old" : "show"
	, "sounds" : true
	, "rest" : true
	, "rest_time" : 3000
	, "rest_timer" : 60
	, "blink" : true
	, "blink_time" : 600
	, "blink_timer" : 20
	, "yoga" : true
	, "yoga_time" : 2860
	, "yoga_timer": 300
#	, "icons" :{
#		"command":"1f4f1",
#		"mini":"1f64b",
#		"studio":"1f3ac",
#		"pause":"23ef",
#		"chat mini":"1f64b",
#		"ss":"1f4f7",
#		"selfie":"1f4f9",
#		"folder":"1f4c1",
#		"hide":"1f4bb",
#		"editor":"1f4df",
#		"list notes":"1f4d4",
#		"list links":"1f30e",
#		"pong":"1f3d3",
#		"volume":"1f4e2",
#		"edit menu":"1f6a7",
#		"help":"2753",
#		"save":"1f4be",
#		"#":"0023-20e3",
#		"demo":"1f608",
#		"bye":"274c",
#		"paint":"1f3a8",
#		"glow":"1f4a1",
#		"truck":"1f69a",
#		"dj":"1f3a7",
#		"love":"2665",
#		"xperma":"1f4ab",
#		}
	, "dock":{
		"login":"1f4db",
#		"hide":"1f4bb",
		"xperma":"1f4ab",
#		"editor":"1f4df",
#		"list notes":"1f4d4",
		"list links":"1f30e",
		"#":"0023-20e3",
		"mini":"1f4df",
		"chat":"1f5e8",
		"pong":"1f3d3",
		"truck":"1f69a",
		"love":"2665",
#		"help":"2753",
#		"save":"1f4be",
#		"folder":"1f4c1",
#		"demo":"1f608",
		"rest":"1f441-1f5e8",
		"bye":"274c"
	}
	, "side_dock":{
		"studio":"1f3ac",
		"ss":"1f4f7",
		"selfie":"1f4f9",
		"volume":"1f4e2",
		"dj":"1f3a7",
		"pause":"23ef",
		"paint":"1f3a8",
		"glow":"1f4a1"
		}
}

var user = {
	"id":"",
	"name":"Me",
	"emoji":"1f913",
	"sillyword":"sillyword",
	"color": "#dfbdfbff",
	"hashtags":[],
	"links":[],
	"notes": [], 
	"initialize":["title welcome to this mess","about","notes","list links"],
	"userdata" : ["email@gmail.com","signature"]
	}
