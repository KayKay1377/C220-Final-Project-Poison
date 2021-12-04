extends Node2D

onready var money = get_node_or_null("HUD/Money")

func _ready():
	if $BGM.playing == false:
		$BGM.play()
		$BGM/WaterSFX.play()

func _on_Shop_pressed():
	$Shop.show()

func _on_Game_pressed():
	$Shop.hide()

func _on_BuyPF_pressed():
	if(int(money.text) >= 50 && !$PufferfishPoison.visible):
		$PufferfishPoison.show()
		Global.update_money(-50)

func _on_BuyR_pressed():
	if(int(money.text) >= 125 && !$Ricin.visible):
		$Ricin.show()
		Global.update_money(-125)

func _on_BuyF_pressed():
	if(int(money.text) >= 225 && !$Formaldehyde.visible):
		$Formaldehyde.show()
		Global.update_money(-225)

func _on_BuyM_pressed():
	if(int(money.text) >= 375 && !$Mercury.visible):
		$Mercury.show()
		Global.update_money(-375)

func _on_BuyC_pressed():
	if(int(money.text) >= 500 && !$Cyanide.visible):
		$Cyanide.show()
		Global.update_money(-500)
