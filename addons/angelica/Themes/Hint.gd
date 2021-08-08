extends Node2D

func hint(meta,pos):
	if meta != "":
		visible = true
		$Text.bbcode_text = str("[wave amp=20 freq=-4] "+meta+"[/wave]")
		position = pos
	else:
		visible = false
