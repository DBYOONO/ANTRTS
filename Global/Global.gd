extends Node


var wincond = false

var number = 10
var multiplier = 0
var fps = 0
var money = 10
var cost = 5
var visible = false
var upgradecost = 50
var increment = 1
var feedbutton = false

#FISH1
var fish1num = 0
var fish1cost = 10
var fish1mult = 0.002
var fish1upcost = 100
var fish1upnum = 0
var fish11 = false
var fish12 = false
var fish13 = false
var fish14 = false
var fish15 = false
var fish16 = false
var fish17 = false
var fish18 = false
var fish19 = false
var fish20 = false

#Clownfish
var clownfishnum = 0
var clownfishcost = 500
var clownfishmult = 0.02
var clownfishupcost = 1000
var clownfishupnum = 0
var clownfish11 = false
var clownfish12 = false
var clownfish13 = false
var clownfish14 = false
var clownfish15 = false
var clownfish16 = false
var clownfish17 = false
var clownfish18 = false
var clownfish19 = false
var clownfish20 = false

#Sailfish
var sailfishnum = 0
var sailfishcost = 5000
var sailfishmult = 0.2
var sailfishupcost = 10000
var sailfishupnum = 0
var sailfish11 = false
var sailfish12 = false
var sailfish13 = false
var sailfish14 = false

#Dolphin
var dolphinnum = 0
var dolphincost = 50000
var dolphinmult = 2
var dolphinupcost = 70000
var dolphinupnum = 0
var dolphin11 = false
var dolphin12 = false
var dolphin13 = false
var dolphin14 = false

func _process(delta):
	var fps = (Engine.get_frames_per_second())
	money = snapped(Global.number,0.01)
