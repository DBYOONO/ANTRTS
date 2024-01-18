extends Camera2D
var target = null
# Called when the node enters the scene tree for the first time.
func _ready():
	position.x = 960
	position.y = 540
	zoom.x = 1.5
	zoom.y = 1.5

func _input(event):
	if event.is_action_pressed("zoom_in") && zoom.x <= 1.75 && zoom.y <= 1.75:
		target = get_global_mouse_position()
		zoom.x += 0.15
		zoom.y += 0.15
		position = target
		
	elif event.is_action_pressed("zoom_out") && zoom.x > 0.8 && zoom.y > 0.8:
		#target = get_viewport_rect().size / 2
		zoom.x -= 0.15
		zoom.y -= 0.15
		#position = target


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_toptrigger_mouse_entered():
	if position.y > 660 && position.y < 1180:
		position.y += 10
