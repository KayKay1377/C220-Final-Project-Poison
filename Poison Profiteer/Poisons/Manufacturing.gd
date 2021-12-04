extends Control

var earnings = null;

onready var Timer = $ProgressBar/Timer

onready var ProgressBar = $ProgressBar

onready var Value = $Value

func _ready():
	earnings = int($Value.text)
	Timer.wait_time = ProgressBar.value

func _process(delta):
	ProgressBar.value = Timer.time_left

func _on_Timer_timeout():
	Global.update_money(earnings)
	

func _on_Manufacture_pressed():
	if(Timer.is_stopped()):
		Timer.start()
		
func open_shop():
	if(Global.Shop == 1):
		var shop = get_node_or_null("PufferfishPoison")
		shop.show()
