extends Control

var cost = null;

var shopNum = null;

func _ready():
	cost = int($Value.text)
	shopNum = $ShopNumber.text
	$Cost.text = "Cost: $" + str(cost)

func _on_Buy_pressed():
	if(Global.money >= 0 && (Global.money - cost) >= 0):
		Global.set_shop_number(shopNum)
		Global.update_money(-cost)
