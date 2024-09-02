extends Node3D

@export var sphere_scene: PackedScene  # Referência para a cena da esfera
@export var sphere_count: int = 1000  # Número de esferas
@export var interval: float = 0.005  # Intervalo entre cada esfera cair (em segundos)
@export var height: float = 10.0  # Altura inicial para as esferas

var sphere_spawned: int = 0  # Contador para as esferas instanciadas
var elapsed_time: float = 0.0  # Tempo decorrido desde a última esfera
var rng: RandomNumberGenerator = RandomNumberGenerator.new()  # Cria um gerador de números aleatórios

func _ready():
	rng.randomize()

func _process(delta: float):
	elapsed_time += delta
	

	if sphere_spawned < sphere_count and elapsed_time >= interval:
		# Instancia a esfera no centro
		var sphere_instance = sphere_scene.instantiate()
		sphere_instance.transform.origin = Vector3(rng.randf_range(-0.5, 0.5), height, rng.randf_range(-0.5, 0.5))
		add_child(sphere_instance)

		sphere_spawned += 1
		elapsed_time = 0.0  # Reseta o tempo decorrido
