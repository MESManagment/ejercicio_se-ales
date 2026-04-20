extends TextureButton

func _on_button_down() -> void:
	# Busca a todos los objetos que esten en el grupo "blocks"
	get_tree().call_group("blocks", "delete")
