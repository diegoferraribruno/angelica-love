extends YSort
#registering nodes???
#var members = ["Mini","Studio","Chat","Editor","Dock","Alerts","Trackers","Control","ChatMini"]

func text_entered(argument):
	$Brain.synapse(argument)
func input_entered(argument):
	$Brain.synapse(argument)
func ai_say(argument):
	$Brain.ai_say(argument)
func studio(argument):
	$Brain.synapse(argument)
