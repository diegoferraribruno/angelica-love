extends Node2D

func synapse(x):
	get_node("../Body").synapse(x)

func add_app(app,app_xy):
	get_node("../").add_app(app,app_xy)

func modulate_trees(treecolor):
	pass
