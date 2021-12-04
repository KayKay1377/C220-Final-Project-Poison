extends Node2D

func _ready():
	if $BGM.playing == false:
		$BGM.play()
		$BGM/WaterSFX.play()
