extends TextureButton

func _on_button_down():
	generate_block()

func generate_block():
	# Carga la escena del bloque
	var block_scene = preload("res://scenes/Blocks/Red/BlockRed.tscn")
	
	# Crea una instancia
	var instance = block_scene.instantiate()
	
	# Se añaden al grupo "blocks"
	instance.add_to_group("blocks")
	
	add_child(instance)
