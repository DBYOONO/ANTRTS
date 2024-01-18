extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	text = "Multiplier: " + str(Global.multiplier)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	text = "Multiplier: " + str(Global.multiplier) + "x"

