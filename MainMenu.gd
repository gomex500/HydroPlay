extends Control


var musica_fondo = preload("res://asset/sound/sondio_fondo.wav")



# Called when the node enters the scene tree for the first time.
func _ready():
	MusicaFondo.musica_fondo(VariableGlobal.on_musica,musica_fondo)

func _on_Play_pressed():
	get_tree().change_scene("res://tipoJuego.tscn")



func _on_Ajuste_pressed():
	get_tree().change_scene("res://Ajuste.tscn")
