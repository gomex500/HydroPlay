extends Control


func _ready():
	pass # Replace with function body.



func _on_Button_pressed():
	get_tree().change_scene("res://MainMenu.tscn")


func _on_TextureButton_pressed():
	get_tree().change_scene("res://humus.tscn")
