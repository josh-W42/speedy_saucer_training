extends RigidBody2D

var force = 1000

# Called when the node enters the scene tree for the first time.
func _ready():
	#apply_impulse(Vector2(30,0))
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# In general, when applying physics, it should occur in the physics process function
# it updates every physics process rather than every frame in _process().
# We do this because process can change depending on the fps while physics processes
# remain constant.
func _physics_process(delta):
	if (Input.is_action_pressed("move_right")):
		apply_force(Vector2(force, 0))
	if (Input.is_action_pressed("move_down")):
		apply_force(Vector2(0, force))
	if (Input.is_action_pressed("move_up")):
		apply_force(Vector2(0, -force))
	if (Input.is_action_pressed("move_left")):
		apply_force(Vector2(-force, 0))
	
	# Usually impulses are best used for one time ocurrances while force can be applied continueously.
	# Like to accererate or deaccerate.
	#apply_impulse(Vector2(0.5,0))
	#apply_force(Vector2(1, 0))
	
