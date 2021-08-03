extends Node

var music = {
	"New track":{
		"main":{"name":"New track","icon":""},
		"tracks":
			{
				0:{"BPM":130,"volume":0,"fx":0,"beat":"","loop":true,"audiopack":"kenney"}
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
			0:{"BPM":260,"volume":0,"fx":0,"beat":"dsd sd assdx ax ","loop":true,"audiopack":"kenney"},
			1:{"BPM":130,"volume":0,"fx":0,"beat":"t4r 326436 t 346","loop":true,"audiopack":"kenney"},
			2:{"BPM":130,"volume":0,"fx":0,"beat":"A32nm1 eD? da   ","loop":true,"audiopack":"kenney"},
			3:{"BPM":130,"volume":0,"fx":0,"beat":"a /fsdgdrgaefwef","loop":true,"audiopack":"kenney"},
			}
		},
	"suspense": {
		"main": {},
		"tracks":
			{
			0:{"BPM":260,"volume":0,"fx":0,"beat":'.<>:@#%$#@$##&#"',"loop":true,"audiopack":"kenney"},
			1:{"BPM":130,"volume":0,"fx":0,"beat":"dsadasfadsf asgd","loop":true,"audiopack":"kenney"},
			2:{"BPM":130,"volume":0,"fx":0,"beat":"dsa ggdsagdgas d","loop":true,"audiopack":"kenney"},
			3:{"BPM":130,"volume":0,"fx":0,"beat":"21 21321321321 3","loop":true,"audiopack":"kenney"},
			}
		},
	"rest": {
		"main": {},
		"tracks":
			{
			0:{"BPM":80,"volume":0,"fx":0,"beat":'.<>:@#%$#@$##&#"',"loop":true,"audiopack":"kenney"},
			1:{"BPM":60,"volume":0,"fx":0,"beat":"dsadasfadsfsasgd","loop":true,"audiopack":"kenney"},
			2:{"BPM":20,"volume":0,"fx":0,"beat":"dsa ggdsagdgas d","loop":true,"audiopack":"kenney"},
			3:{"BPM":40,"volume":0,"fx":0,"beat":"21 21321321321 3","loop":true,"audiopack":"kenney"},
			}
		},
	"blink": {
		"main": {},
		"tracks":
			{
			0:{"BPM":80,"volume":0,"fx":0,"beat":'.<>:@#%$#@$##&#"',"loop":true,"audiopack":"kenney"},
			1:{"BPM":60,"volume":0,"fx":0,"beat":"dsadasfadsfsasgd","loop":true,"audiopack":"kenney"},
			2:{"BPM":20,"volume":0,"fx":0,"beat":"dsa ggdsagdgas d","loop":true,"audiopack":"kenney"},
			3:{"BPM":40,"volume":0,"fx":0,"beat":"21 21321321321 3","loop":true,"audiopack":"kenney"},
			}
		}
	
	}
