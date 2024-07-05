extends Node2D
@onready var personaje = $"../Personaje"
var collider

var SPEED = 300
var direction;

# Called when the node enters the scene tree for the first time.
func _ready():
	collider = $CharacterBody2D/CollisionShape2D
	direction = -(position - personaje.position).normalized()
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#position = lerp(position, personaje.position, SPEED*delta)
	#print((position - personaje.position).normalized())
	position += direction * SPEED * delta

	
	


