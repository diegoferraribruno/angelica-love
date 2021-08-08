extends Node
var user = {
	"id":"",
	"name":"Player",
	"emoji":"23ef",
	"sillyword":"sillyword",
	"color": "#dfbdfbff",
	"rgb":[1,1,1],
	"hashtags":[],
	"links":[],
	"notes": [], 
	"initialize":["title Welcome to the 100 days party!","dock","rest"],
	"userdata" : ["email@gmail.com","signature"],
	"ai_version":"200",
	"ai_date" : "2021-02-08",
	"about" : "please check for updates at [url=http://diegoferraribruno.itch.io/angelica]my web page[/url] \nIf you wanna chat a bit say: [b]hello[/b]"
	,"FILE_NAME" : "user://angelica-data.json"
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
		"phone":"1f4f2",
		"xperma":"1f4ab",
		"love":"2665",
		"truck":"1f69a",
		"pong":"1f3d3",
		"login":"1f4db",
		"chat":"1f5e8",
		"mini":"1f4df",
		"star":"2605",
		"next":"26a0",
		"rest":"1f441-1f5e8",
		"save":"1f4be",
		"bye":"274c"
	}
	, "side_dock":{
		"volume":"1f4e2",
		"radio":"1f4fb",
		"dj":"1f3a7",
		"pause":"23ef",
		"studio":"1f3ac",
		"ss":"1f4f7",
		"selfie":"1f4f9",
		"paint":"1f3a8",
		"glow":"1f4a1"
		}
	, "float-menu":{
		"#":"0023-20e3",
		"list links":"1f30e",
		"folder":"1f4c1",
		"twitter":"1f426",
#		"help":"2753",
#		"save":"1f4be",
#		"demo":"1f608",
#		"editor":"1f4df",
#		"list notes":"1f4d4",
#		"hide":"1f4bb",
		}
	, "Chat":{"position":"Vector2( 13, 119 )"},
		"DJ":{"position":"Vector2( 722.122, 44.836 )"},
		"Login":{"position":"Vector2( 480.48, 229.921 )"},
		"Mini":{"position":"Vector2( 515.843, 508.705 )"},
		"Next":{"position":"Vector2( 15, 500 )"},
		"PaintTools":{"position":"Vector2( 1200.4, -3.9577 )"},
		"Rest":{"position":"Vector2( 946.037, 499.612 )"},
		"Star":{"position":"Vector2( 685, 61 )"},
		"Studio":{"position":"Vector2( 1086, 240 )"}
		}

#var apps = {}
#
#func add_app_position(app,app_xy):
#	apps[app] = app_xy
#	print(apps)
#
#func save_apps():
#
