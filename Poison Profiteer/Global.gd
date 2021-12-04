extends Node

var money = 0
var Money = null

var Shop = null

func _ready():
	pause_mode = PAUSE_MODE_PROCESS

func _unhandled_input(event):
	if event.is_action_pressed("menu"):
		var menu = get_node_or_null("/root/Game/PauseMenu")
		if menu != null:
			if not menu.visible:
				menu.show()
				get_tree().paused = true
			else:
				menu.hide()
				get_tree().paused = false

func update_money(m):
	Money = get_node_or_null("/root/Game/HUD/Money")
	if Money != null:
		money += m
		Money.text = "Money: $" + str(money)
	Money = get_node_or_null("/root/Game/Shop/ShopHUD/Money")
	if Money != null:
		Money.text = "Money: $" + str(money)
