extends KinematicBody

# Declare member variables here. Examples:
export var speed = 2.8
export var rot_speed=1.5
var velocity=Vector3.ZERO
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_input(delta)
	move_and_slide(velocity)
	
func get_input(delta):
	if Input.is_action_pressed("ui_up"):
		velocity += (transform.basis.z) * speed*delta
		print("i moved fwd")
	elif Input.is_action_pressed("ui_down"):
		velocity += (-transform.basis.z) * speed*delta
		print("i moved backwrd")
		
	elif Input.is_action_pressed("ui_right"):
		rotate_y(-rot_speed*delta)
		print("right")
	elif Input.is_action_pressed("ui_left"):
		rotate_y(rot_speed*delta)
		print("left")
	else:
		velocity=Vector3.ZERO
		
		

