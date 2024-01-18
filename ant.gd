extends CharacterBody2D


var SPEED = 100.0

# Get the gravity from the project settings to be synced with RigidBody nodes
var target = null

@onready var anim = get_node("AnimatedSprite2D")

func _input(event):
	if event.is_action_pressed("set_target"):
		target = get_global_mouse_position()
		
func _physics_process(delta):
		if target != null:
			velocity = position.direction_to(target)
		velocity = velocity.normalized() * SPEED
		move_and_collide(velocity * delta)
		if velocity != Vector2.ZERO:
			anim.play("walk")
		else:
			anim.play("idle")
	
