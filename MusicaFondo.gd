extends AudioStreamPlayer

func musica_fondo(on, musica):
	self.stream = musica
	if on == true:
		self.play()
	else:
		self.stop()
