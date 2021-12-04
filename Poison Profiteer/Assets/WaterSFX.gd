extends AudioStreamPlayer

func _process(delta):
	if $WaterSFX.playing == false:
		$WaterSFX.play()
