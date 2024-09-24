extends StaticBody3D
var rotation_speed = 0.5 # Velocidade da rotação

func _process(delta):
	rotate_y(rotation_speed * delta) # Rotaciona no eixo Y
