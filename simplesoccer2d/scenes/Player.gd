extends KinematicBody2D


var velocity : Vector2
var max_speed: float = 500


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	if Input.is_action_pressed("left"):
		velocity.x = -max_speed 
	elif Input.is_action_pressed("right"):
		velocity.x = max_speed
	else:
		velocity.x = 0
		
	velocity = move_and_slide(velocity)		
