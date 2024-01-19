extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var number = 0
var newcost = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	if Global.fish1num == 10 && Global.clownfishnum == 10 && Global.sailfishnum == 4 && Global.dolphinnum == 4:
		Global.wincond = true
		
	if Global.fish1num >= 1:
		Global.feedbutton = true

	if Global.fish1num >= 1:
		Global.fish11 = true
	if Global.fish1num >= 2:
		Global.fish12 = true
	if Global.fish1num >= 3:
		Global.fish13 = true
	if Global.fish1num >= 4:
		Global.fish14 = true
	if Global.fish1num >= 5:
		Global.fish15 = true
	if Global.fish1num >= 6:
		Global.fish16 = true
	if Global.fish1num >= 7:
		Global.fish17 = true
	if Global.fish1num >= 8:
		Global.fish18 = true
	if Global.fish1num >= 9:
		Global.fish19 = true
	if Global.fish1num >= 10:
		Global.fish20 = true
	
	if Global.clownfishnum >= 1:
		Global.clownfish11 = true
	if Global.clownfishnum >= 2:
		Global.clownfish12 = true
	if Global.clownfishnum >= 3:
		Global.clownfish13 = true
	if Global.clownfishnum >= 4:
		Global.clownfish14 = true
	if Global.clownfishnum >= 5:
		Global.clownfish15 = true
	if Global.clownfishnum >= 6:
		Global.clownfish16 = true
	if Global.clownfishnum >= 7:
		Global.clownfish17 = true
	if Global.clownfishnum >= 8:
		Global.clownfish18 = true
	if Global.clownfishnum >= 9:
		Global.clownfish19 = true
	if Global.clownfishnum >= 10:
		Global.clownfish20 = true
	
	if Global.sailfishnum >= 1:
		Global.sailfish11 = true
	if Global.sailfishnum >= 2:
		Global.sailfish12 = true
	if Global.sailfishnum >= 3:
		Global.sailfish13 = true
	if Global.sailfishnum >= 4:
		Global.sailfish14 = true
		
	if Global.dolphinnum >= 1:
		Global.dolphin11 = true
	if Global.dolphinnum >= 2:
		Global.dolphin12 = true
	if Global.dolphinnum >= 3:
		Global.dolphin13 = true
	if Global.dolphinnum >= 4:
		Global.dolphin14 = true
		
	#Global.number += Global.multiplier
	Global.number += (Global.fish1num * Global.fish1mult)
	Global.number += (Global.clownfishnum * Global.clownfishmult)
	Global.number += (Global.sailfishnum * Global.sailfishmult)
	Global.number += (Global.dolphinnum * Global.dolphinmult)
	

		

func increaseby1():
	if Global.number >= 10:
		Global.multiplier += 1

func _on_button_button_down():
	Global.number += Global.increment


func _on_button_2_button_down():
	if Global.money >= Global.cost:
			Global.multiplier += 0.0001
			Global.multiplier *= 1.2
			Global.number -= Global.cost
			Global.cost *= 1.2
			Global.cost = snapped(Global.cost,0.01)
			
			
	else:
		print("Not Enough Money")



func _on_button_3_button_down():
	if Global.money >= Global.upgradecost:
		Global.number -= Global.upgradecost
		Global.increment += 1
		Global.upgradecost *= 2
		
	else:
		print("Not Enough Money")
		
		


func _on_toptrigger_mouse_entered():
	pass # Replace with function body.


func _on_button_4_button_down():
	if Global.money >= Global.fish1cost && Global.fish1num < 10:
		Global.fish1num += 1
		Global.number -= Global.fish1cost
		Global.fish1cost *= 1.2

	elif Global.fish1num == 10:
		print("You have the max amount of this fish")
	else:
		print("Not Enough Money")


func _on_button_5_button_down():
	if Global.money >= Global.fish1upcost:
		Global.fish1mult += 0.003
		Global.number -= Global.fish1upcost
		Global.fish1upcost *= 2
		Global.fish1upnum += 1
		
	else:
		print("Not Enough Money")
		
func _on_button_7_button_down():
	if Global.money >= Global.clownfishcost && Global.clownfishnum < 10:
		Global.clownfishnum += 1
		Global.number -= Global.clownfishcost
		Global.clownfishcost *= 1.2

	elif Global.clownfishnum == 10:
		print("You have the max amount of this fish")
	else:
		print("Not Enough Money")


func _on_button_8_button_down():
	if Global.money >= Global.clownfishupcost:
		Global.clownfishmult += 0.03
		Global.number -= Global.clownfishupcost
		Global.clownfishupcost *= 2
		Global.clownfishupnum += 1
		
	else:
		print("Not Enough Money")


func _on_button_10_button_down():
	if Global.money >= Global.sailfishcost && Global.sailfishnum < 4:
		Global.sailfishnum += 1
		Global.number -= Global.sailfishcost
		Global.sailfishcost *= 1.2

	elif Global.clownfishnum == 4:
		print("You have the max amount of this fish")
	else:
		print("Not Enough Money")



func _on_button_11_button_down():
	if Global.money >= Global.sailfishupcost:
		Global.sailfishmult += 0.3
		Global.number -= Global.sailfishupcost
		Global.sailfishupcost *= 2
		Global.sailfishupnum += 1
		
	else:
		print("Not Enough Money")


func _on_button_13_button_down():
	if Global.money >= Global.dolphincost && Global.dolphinnum < 4:
		Global.dolphinnum += 1
		Global.number -= Global.dolphincost
		Global.dolphincost *= 1.2

	elif Global.dolphinnum == 4:
		print("You have the max amount of this fish")
	else:
		print("Not Enough Money")


func _on_button_14_button_down():
	if Global.money >= Global.dolphinupcost:
		Global.dolphinmult += 3
		Global.number -= Global.dolphinupcost
		Global.dolphinupcost *= 2
		Global.dolphinupnum += 1
		
	else:
		print("Not Enough Money")

