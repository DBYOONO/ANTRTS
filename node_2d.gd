extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var number = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func increaseby1():
	if Global.number >= 10:
		Global.multiplier += 1

func _on_button_button_down():
	Global.number += (1 * Global.multiplier)


func _on_button_2_button_down():
	Global.multiplier += 1
