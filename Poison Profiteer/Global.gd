extends Node

func _ready():
	pause_mode =PAUSE_MODE_PROCESS

func _unhandled_input(event):
	if event.is_action_pressed("menu"):
		#get_tree().quit()
		var menu = get_node_or_null("/root/Game/PauseMenu")
		if menu != null:
			if not menu.visible:
				menu.show()
				get_tree().paused = true
			else:
				menu.hide()
				get_tree().paused = false

func update_money():
	pass
	
	if $AudioStreamPlayer.playing == false:
		$AudioStreamPlayer.play()
		pass
		
