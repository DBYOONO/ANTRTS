extends Node


var number = 0
var multiplier = 0
var fps = 0
var money = 0
var cost = 5
var visible = false
var upgradecost = 50
var increment = 1

func _process(delta):
	var fps = (Engine.get_frames_per_second())
	money = snapped(Global.number,0.01)
