extends Camera3D  # Ou o nó que estiver controlando a câmera

# Variáveis de controle
var move_speed := 5.0  # Velocidade de movimento da câmera
var limit_x := 50.0    # Limite no eixo X
var limit_z := 50.0    # Limite no eixo Z
var fps_samples := []  # Lista para armazenar os valores de FPS

func _ready():
	set_process(true)  # Ativa o processamento para a função _process

func _process(delta):
	# Atualiza o FPS atual e adiciona à lista de amostras
	var current_fps = Engine.get_frames_per_second()
	fps_samples.append(current_fps)
	print(current_fps)
	
	# Move a câmera nos eixos X e Z
	if position.x < limit_x and position.z < limit_z:
		position.x -= move_speed * delta
		position.z += move_speed * delta
	else:
		set_process(false)  # Para o movimento quando os limites são alcançados
