extends Node

var music = {
	"New track":{
		"main":{"name":"New track","icon":""},
		"tracks":
			{
				0:{"BPM":130,"volume":0,"fx":0,"beat":"","loop":true}
			}
		},
	}
func _ready():
	var newtrack = music["New track"]
	if music.has("New track") == false:
		music["New track"] = newtrack
		
var demo = 	{
		"demo":{
		"main":{
			"all":{"start":""},
			0:{"start":"64","stop":"128"}
			},
		"tracks":
			{
			0:{"BPM":260,"volume":0,"fx":0,"beat":"dsd sd assdx ax ","loop":true},
			1:{"BPM":130,"volume":0,"fx":0,"beat":"t4r 326436 t 346","loop":true},
			2:{"BPM":130,"volume":0,"fx":0,"beat":"A32nm1 eD? da   ","loop":true},
			3:{"BPM":130,"volume":0,"fx":0,"beat":"a /fsdgdrgaefwef","loop":true}
			}
		},
	"suspense": {
		"main": {},
		"tracks":
			{
			0:{"BPM":260,"volume":0,"fx":0,"beat":'.<>:@#%$#@$##&#"',"loop":true},
			1:{"BPM":130,"volume":0,"fx":0,"beat":"dsadasfadsf asgd","loop":true},
			2:{"BPM":130,"volume":0,"fx":0,"beat":"dsa ggdsagdgas d","loop":true},
			3:{"BPM":130,"volume":0,"fx":0,"beat":"21 21321321321 3","loop":true},
			}
		}
	}
