extends Node
# Declare member variables here
var addon = true
var ai_version = ""
const ai_date = "2021-05-23"
const STATES = ["mini","hide","show","editor"]
var state = "show"
var state_old = "show"
var quiet = false
const FILE_NAME = "user://angelica-data.json"
var ai_name = "Angelica"
var ai_color = "#ffbbdd"
var need = ""
var blink = [true,45]
var rest = [true,10]
var satisfied = 0
var text = ""
var have_feelings = []
var have_need = []
var inputs = 0
var new_face = "res://addons/angelica/images/avatar/1f646.png"
var sleep = true
var history =["enter text here"]
var autohide = true
var autoload = false
var autosave = true
#var olduser = ["id","Me","password","#dfbdfbff",notes,links]
var buser
var quietstart = false
#onready var addonmode = $Control.addonmode
var autopause = true
#onready var printparent = "get_parent()"
var initialize = [[true],["pause","about","list notes","list links",]]
var sound = [[true,0],["Body/Pinky/Warning/Alarm"]] #space reserved for adding game audiolayers
#var sound = true
var last_window_pos
var pong = preload("res://addons/angelica/Pong/pong.tscn")

#var userbkp = user
#onready var good = memory.good
#onready var bad = memory.bad
#onready var needs = memory.needs
#onready var notfeeling = memory.notfeeling
#onready var help = memory.help
#onready var sentences = memory.sentences
#onready var hashtags = memory.hashtags
#onready var greetings = memory.greetings
#onready var links = memory.links
#onready var notes = memory.notes
#onready var ai_prefs = [ai_version, ai_name, ai_color, autohide, autoload, autosave, addonmode, quietstart, rsiblink, autopause,sound,"(0,0)","(0,0)",state_old]
#onready var user = ["id", "Me", "sillyword", "#dfbdfbff", hashtags, links, ai_prefs, notes, initialize]
onready var ai_prefs = [ ai_version, ai_name, ai_color, autohide, autoload, autosave, addon, quietstart, rest, blink, autopause, sound,"(0,0)","(0,0)",state_old]
onready var user = ["id", "Me", "sillyword", "#dfbdfbff", hashtags, links, ai_prefs, notes, initialize]
