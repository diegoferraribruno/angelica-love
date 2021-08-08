extends Node2D

	 #      $      $       $       $    
	 #      #      0       0       S    
# D  1      #      0       D       S 
####################################
######## Angelica - Love 200 #######
#2021-08-02 100 days of existence ##
##come and have a piece of it!######
####################################

#var cena_preload = preload("res://src/scenes/Goodies/Goodies.tscn")
#var num_iteracoes = 1
#var touch_main = false
#var num_teste_1 = 0
#var tempo_medio_teste_1 = 0.0
#var can_shoot_main = true
#
#func _physics_process(delta):
##	drag.x  = 0.5*health
#
##	move(delta)
##	move_gun()
#	if (Input.is_action_pressed("shoot") or touch_main == true) \
#		&& can_shoot_main:
#		shoot()
#
#func _input(event):
#	if event is InputEventScreenTouch:
#		if event.is_pressed():
#			touch_main = true
#		else:
#			touch_main = false
#
#func shoot():
#		  var time_ini1 = OS.get_ticks_usec()
#		  teste1()
#		  var duracao1 = OS.get_ticks_usec()-time_ini1
#		  print("Teste 1 durou ", duracao1)
#
#		  tempo_medio_teste_1 = (tempo_medio_teste_1 * num_teste_1) + duracao1
#		  num_teste_1 += 1
#		  tempo_medio_teste_1 /= float(num_teste_1)
#
#		  print("Tempo médio teste 1: ", tempo_medio_teste_1, ". Número de testes: ", num_teste_1)
#
#
# TESTE SÓ COM ADD_CHILD        
#func teste1():
#	 for i in num_iteracoes:
#		  var novo_node = cena_preload.instance()
#		  novo_node.position = get_global_mouse_position()
#		  add_child(novo_node)
