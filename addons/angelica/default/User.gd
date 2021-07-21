extends Node

const ai_version = "124"
const ai_date = "2021-05-21"
const about = "My version is"+ ai_version+" from " +ai_date+" please check for updates at [url=http://diegoferraribruno.itch.io/angelica]my web page[/url] \nIf you wanna chat a bit say: [b]hello[/b]"
const STATES = ["mini","hide","show","editor"]
var state = "show"
var state_old = "show"
var quiet = false
const FILE_NAME = "user://angelica-data.json"
var ai_name = "Angelica"
var ai_color = "#ffbbdd"
var need = ""
var rsiblink = [[true,true],[3000,600]]
var satisfied = 0
var text = ""
var have_feelings = []
var have_need = []
var inputs = 0
var new_face = load("res://addons/angelica/images/1f646.png")
var sleep = true
var history =["enter text here"]
var cdtimer
var autohide = true
var autoload = false
var autosave = true
var olduser = ["id","Me","password","#dfbdfbff",notes,links]
var buser
var quietstart = false
onready var addonmode = .addonmode
var autopause = true
onready var printparent = "get_parent()"
var initialize = [[true],["about","notes","list links",]]
var sound = [[true,0],["Interface/Warning/Alarm"]] 
onready var good = $DB.good
onready var bad = $DB.bad
onready var needs = $DB.needs
onready var notfeeling = $DB.notfeeling
onready var help = $DB.help
onready var sentences = $DB.sentences
onready var hashtags = $DB.hashtags
onready var greetings = $DB.greetings
onready var links = $DB.links
onready var notes = $DB.notes
onready var ai_prefs = [ai_version, ai_name, ai_color, autohide, autoload, autosave, addonmode, quietstart, rsiblink, autopause,sound,"(0,0)","(0,0)",state_old]
onready var user = ["id", "Me", "sillyword", "#dfbdfbff", hashtags, links, ai_prefs, notes, initialize]

var userdata = ["email@gmail.com","signature"]
