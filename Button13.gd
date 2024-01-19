extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	Global.dolphincost = snapped(Global.dolphincost,0.01)
	if Global.dolphinnum == 4:
		text = "Dolphin - " +  str(Global.dolphinnum) + " MAX"
	else:
		text = "Dolphin - " +  str(Global.dolphinnum) + "\n$" + str(Global.dolphincost)
