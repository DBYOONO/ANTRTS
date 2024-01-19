extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	Global.fish1cost = snapped(Global.fish1cost,0.01)
	if Global.fish1num == 10:
		text = "Fish - " +  str(Global.fish1num) + " MAX"
	else:
		text = "Fish - " +  str(Global.fish1num) + "\n$" + str(Global.fish1cost)
