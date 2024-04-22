extends CharacterBody3D


const SPEED = 5.0
const JUMP_VELOCITY = 4.5

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

var quest = "Go to bed"
var fishing = false
var catch_time = 0
var time = 0
func next_quest():
	if quest == "Go to bed":
		quest = "Get the news"
	elif quest == "Get the news":
		quest = "Go fishing"
	else:
		quest = "Go to bed"

func _physics_process(delta):
	time = 
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta
	
	if fishing:
		if catch_time 
		return
	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	var direction = (transform.basis * Vector3(input_dir.y, 0, -input_dir.x)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)
		

	move_and_slide()
	if position.z > 34 && position.z < 42.5:
		%Roof.visible = false
	else:
		%Roof.visible = true

func _input(event):
	if event is InputEventMouseButton:
		if fishing:
			pass
		else:
			catch_time = randf_range(2.0,5.0)
			pass
		fishing = !fishing
		
