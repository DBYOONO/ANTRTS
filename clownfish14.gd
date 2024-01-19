extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	
	play("default")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	visible = Global.clownfish14
	if Global.wincond == true:
		position.x += 2.5
