extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	Global.clownfishcost = snapped(Global.clownfishcost,0.01)
	if Global.clownfishnum == 10:
		text = "Clownfish - " +  str(Global.clownfishnum) + " MAX"
	else:
		text = "Clownfish - " +  str(Global.clownfishnum) + "\n$" + str(Global.clownfishcost)
