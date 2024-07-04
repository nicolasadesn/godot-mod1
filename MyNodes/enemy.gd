extends Node2D
@onready var personaje = $"../Personaje"

var SPEED = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	lerp(position, personaje.position, SPEED)
	pass
