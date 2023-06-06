extends Control

var humus = load("res://humusObjet.tscn")

func _ready():
	pass

func _process(delta):
	$canHumus.text = "Humus: " + str(VariableGlobal.cantidad_humus)
	print(str(VariableGlobal.cantidad_humus))
		
func generarHumus():
	var newHumus = humus.instance()
	newHumus.global_position= Vector2(rand_range(20,190),rand_range(80,400))
	add_child(newHumus)


func _on_generarhumus_timeout():
	generarHumus()
	$generarhumus.start()
