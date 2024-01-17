extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
# Called every frame. 'delta' is the elapsed time since the previous frame.
	text = "You have pushed the button " + str(Global.number) + " times"
