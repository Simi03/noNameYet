extends HBoxContainer

@onready var HeartGUIClass = preload("res://Scenes/heartGUI.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func setMaxHearts(max: int):
	for i in range(max):
		var heart = HeartGUIClass.instantiate()
		add_child(heart)

func updateHearts(currentHealth: int):
	var hearts = get_children()
	for i in range(hearts.size()):
		remove_child(hearts[i])
	
	for i in range(currentHealth):
		var heart = HeartGUIClass.instantiate()
		add_child(heart)
