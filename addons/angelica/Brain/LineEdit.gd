extends RichTextLabel


func _ready():
	visible_characters = 0

func _process(delta):
	var total = self.get_total_character_count()
	if visible_characters < total:
		visible_characters +=1
	if total == 0:
		visible_characters = 0
		
