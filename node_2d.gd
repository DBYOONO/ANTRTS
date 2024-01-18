extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var number = 0
var newcost = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	Global.number += Global.multiplier
		

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
