extends Node3D

@export var height: float = 10.0  # Altura inicial para as esfera
func _ready():
	self.transform.origin = Vector3(0, height, 0)

	# Adiciona uma força aleatória inicial para a esfera
	var random_velocity = Vector3(
		randf_range(-5, 5),
		0,
		randf_range(-5, 5)
	)
	self.linear_velocity = random_velocity
