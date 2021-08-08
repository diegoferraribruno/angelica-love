extends RichTextLabel
onready var angelica = get_node("../")
#onready var tips_text = get_node("Tips/Text")
onready var hint = get_node("../../Hint")

func _ready():
	visible_characters = 0
	set_selection_enabled(true)
	bbcode_text = "[url=ss][img]res://img/16/1f4f7.png[/img] ScreenShot[/url]\n[url=selfie][img]res://img/16/1f4f9.png[/img] Selfie[/url]\n[url=app obs][img]res://img/16/1f3a5.png[/img] OBS Studio[/url]"

	for i in obs:
		bbcode_text +="\n[img]res://img/16/2b50.png[/img] [url=obs "+i+"][img]res://img/16/1f3a5.png[/img]"+ i +"[/url] "
#	bbcode_text = "[url=save][save][/url] [url=pong][pong][/url] [url=volume][volume][/url] [url=edit menu][menu][/url] [url=bye][Bye!][/url] [url=hide][hide][/url] [url=mini][mini][/url] [url=link ko-fi][k-f][/url]"
	connect("meta_clicked", self, "handle")
func handle(argument):
	$"../../".studio(argument)
	
func _process(delta):
	var total = self.get_total_character_count()
	if visible_characters < total:
		visible_characters +=5
		
func _on_SendButton_button_up():
	var total = self.get_total_character_count()
	visible_characters = total
	
func _on_LineEdit_text_entered(new_text):
	var total = self.get_total_character_count()
	visible_characters = total

func _on_Interface_meta_hover_started(meta):
	var pos = get_local_mouse_position()+Vector2(20,20)
	hint.hint(meta,pos)

func _on_Interface_meta_hover_ended(meta):
	var pos = get_local_mouse_position()+Vector2(20,20)
	hint.hint("",pos)

const obs= {
	"--startstreaming":"Automatically start streaming.",
	"--startrecording":"Automatically start recording.",
	"--startreplaybuffer":"Start replay buffer.",
	"--startvirtualcam":"Start virtual camera (if available).",
#	"--collection <string>":"Use specific scene collection.",
#	"--profile <string>":"Use specific profile.",
#	"--scene":"Start with specific scene.",
	"--studio-mode":"Enable studio mode.",
	"--minimize-to-tray":"Minimize to system tray.",
	"--portable":"Use portable mode.",
	"--multi":"Don't warn when launching multiple instances.",
	"--verbose":"Make log more verbose.",
	"--always-on-top":"Start in 'always on top' mode.",
	"--unfiltered_log":"Make log unfiltered.",
	"--disable-updater":"Disable built-in updater (Windows/Mac only).",
	"--disable-high-dpi-scaling":"Disable automatic high-DPI scaling.",
	"--version":"Get current version.",
	"--help":"Get list of available commands."
	}

