extends Control

func _ready():
	$Money.text = "Money: $" + str(Global.money)

