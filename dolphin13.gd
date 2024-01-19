extends AnimatedSprite2D


func _ready():
	play("default")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	visible = Global.dolphin13
	if Global.wincond == true:
		position.x += 2.5
