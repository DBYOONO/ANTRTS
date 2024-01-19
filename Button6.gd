extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	tooltip_text = "Basic fish, earns $" + str(Global.fish1mult * 60) + " per second"
