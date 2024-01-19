extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	text = "$" + str(snapped(Global.fish1mult * Global.fish1num * 60 + Global.clownfishmult * Global.clownfishnum * 60 + Global.sailfishmult * Global.sailfishnum * 60 + Global.dolphinmult * Global.dolphinnum * 60,0.01)) + " per second"
