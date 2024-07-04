extends Node2D

const SPEED = 10.0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
		# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var directionX = Input.get_axis("ui_left", "ui_right")
	if directionX:
		position.x += directionX * SPEED
		anim_pj(directionX)
		if directionX > 0:
			anim_pj(3)
		else:
			anim_pj(2)
	
	var directionY = Input.get_axis("ui_up", "ui_down")
	if directionY:
		position.y += directionY * SPEED
		if directionY > 0:
			anim_pj(0)
		else:
			anim_pj(1)

func anim_pj(frame):
	#animando personaje
	$Idle.frame = frame
	pass

