extends CharacterBody2D

const SPEED = 300
var vida = 3;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var directionX = Input.get_axis("ui_left", "ui_right")
	velocity.x = directionX * SPEED
	if directionX:
		if directionX > 0:
			anim_pj(3)
		else:
			anim_pj(2)
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)


	var directionY = Input.get_axis("ui_up", "ui_down")
	if directionY:
		velocity.y = directionY * SPEED
		if directionY > 0:
			anim_pj(0)
		else:
			anim_pj(1)
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	
	move_and_slide()


func anim_pj(myframe):
	#animando personaje
	$Idle.frame = myframe

func perder_vida():
	vida = vida - 1
	if vida > 0:
		#perdio
		print(vida)

