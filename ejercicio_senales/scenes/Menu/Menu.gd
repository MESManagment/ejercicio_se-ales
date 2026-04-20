extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias: "
var instancesCount = 0

# Referencia a los nodos generadores 
@onready var red_generator = $RedGenerator 
@onready var violet_generator = $VioletGenerator

func _ready() -> void:
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
	
	# Conecta la señal "button_down" 
	red_generator.button_down.connect(count_new_instance)
	violet_generator.button_down.connect(count_new_instance)

func count_new_instance():
	instancesCount += 1
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)

func delete():
	instancesCount = 0
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
