extends KinematicBody2D

var velocityScale = Vector2()
var mousePos = Vector2()
var speed = 100

func _ready():
	pass # Replace with function body.

func _process(delta):
	velocityScale = Vector2(0, 0)
	mousePos = get_global_mouse_position()
	
	velocityScale.x = Input.get_action_strength("move_right")-Input.get_action_strength("move_left")
	velocityScale.y = Input.get_action_strength("move_down")-Input.get_action_strength("move_up")
	if velocityScale.length() > 1:
		velocityScale = velocityScale.normalized()
	
	move_and_slide(velocityScale * speed)
	
	rotation_degrees = ((mousePos-position).angle() + PI / 2) / PI * 180
	# rotate((mousePos-position).angle() - transform.get_rotation() + PI / 2)
