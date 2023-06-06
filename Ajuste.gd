extends Control

var musica_fondo = preload("res://asset/sound/sondio_fondo.wav")

func _ready():
	if VariableGlobal.on_musica == true:
		$VBoxContainer/On_musica.text="ON"
	else:
		$VBoxContainer/On_musica.text="OFF"


func _on_Regresar_pressed():
	get_tree().change_scene("res://MainMenu.tscn")


func _on_On_musica_pressed():
	if VariableGlobal.on_musica == true:
		MusicaFondo.musica_fondo(false,musica_fondo)
		VariableGlobal.on_musica = false
		$VBoxContainer/On_musica.text="OFF"
	else:
		MusicaFondo.musica_fondo(true,musica_fondo)
		VariableGlobal.on_musica = true
		$VBoxContainer/On_musica.text="ON"
