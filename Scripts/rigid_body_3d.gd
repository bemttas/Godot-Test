extends RigidBody3D

func _ready():
	# Define a posição inicial da esfera acima do plano
	self.transform.origin = Vector3(0, 10, 0)

	# Configura uma gravidade personalizada se necessário (opcional)
	self.gravity_scale = 1.0
