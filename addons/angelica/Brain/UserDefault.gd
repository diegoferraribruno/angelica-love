extends Node

var hashtags = {
	"#":["#GodotEngine",
		"#gamedev",
		"#indiedev",
		"#indiegame",
		"#IndieGameDev",
		"#gaming"],
	"Sun":[],
	"Mon":[],
	"thu":[],
	"Wed":[
		"WishListWednesday"
		],
	"fry":[],
	"Sat":[
		"#ScreenShotSaturday"
		]
	}
var links = {
	"twitter":"http://twitter.com/diegoferraribr1",
	"angelica":"http://diegoferraribruno.itch.io/angelica",
#	"github":"https://github.com/diegoferraribruno/angelica1",
	"ko-fi":"https://ko-fi.com/diegoferraribruno",
	"BBcode":"https://docs.godotengine.org/pt_BR/latest/tutorials/gui/bbcode_in_richtextlabel.html"
	}
var notes = {
	"1":{
		"date":"2021-05-05",
		"bb":"Hello i am Angelica's first note! I can be send by twitter using command: tw note 1"
		},
	"2":{
		"date":"2021-05-05",
		"bb":"I am here to say that I am Note #2 and you you can send me trough gmail browser using mail email@.com note 2",
		}
	}
var rockets = {
	"start":true,
	"0":[
		"track fps",
		"volume",
	],
	"1":[
		"pause",
		"volume",
		"volume",
		"volume",
		"about",
		"list notes",
		"track ./Angelica/Angelica/Trackers position",
		"track fps",
		"track Player1 position",
		"track Player1 status",
		"track Timer time_left", 
		"print Player1/Inventory tools",
		"list links","pause"
		],
}
var userprefs = {
	"dock":{
		"hide":"1f4bb",
		"editor":"1f4df",
		"list notes":"1f4d4",
		"list links":"1f30e",
		"#":"0023-20e3",
		"chat":"1f4ac",
		"pong":"1f3d3",
		"edit menu":"1f6a7",
		"help":"2753",
		"save":"1f4be",
		"folder":"1f4c1",
		"demo":"1f608",
		"bye":"274c"
	},
	"side_dock":{
		"studio":"1f3ac",
		"ss":"1f4f7",
		"selfie":"1f4f9",
		"volume":"1f4e2",
		"pause":"23ef",
		"paint":"270e",
		"glow":"1f4a1"
		}
}
var emoji = {
	"command":"000dfb",
	"mini":"1f64b",
	"studio":"1f3ac",
	"pause":"23ef",
	"chat":"1f4ac",
	"ss":"1f4f7",
	"selfie":"1f4f9",
	"folder":"1f4c1",
	"hide":"1f4bb",
	"editor":"1f4df",
	"list notes":"1f4d4",
	"list links":"1f30e",
	"pong":"1f3d3",
	"volume":"1f4e2",
	"edit menu":"1f6a7",
	"help":"2753",
	"save":"1f4be",
	"#":"0023-20e3",
	"demo":"1f608",
	"bye":"274c",
	"paint":"270e",
	"glow":"1f4a1"
	}
