extends Control

func _ready():
	$Money.text = "Money: $" + str(Global.money)

func _on_Game_pressed():
	get_tree().change_scene("res://Game.tscn")
