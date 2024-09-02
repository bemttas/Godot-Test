extends StaticBody3D

@export var amplitude: float = 1.0  # Altura máxima do movimento vertical
@export var frequency: float = 1.0 # Frequência do movimento (oscilações por segundo)

var time_passed: float = 0.0
var start_position: Vector3

func _ready():
	# Guarda a posição inicial do chão
	start_position = transform.origin

func _process(delta: float):
	# Atualiza o tempo decorrido
	time_passed += delta

	# Calcula o deslocamento vertical usando uma função seno
	var offset = amplitude * sin(frequency * time_passed * 2.0 * PI)
	
	# Atualiza a posição do plano
	transform.origin = start_position + Vector3(0, offset, 0)
