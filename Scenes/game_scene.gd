extends Node2D

@onready var heartsContainer = $CanvasLayer/HeartsContainer
@onready var player = $Player

# Called when the node enters the scene tree for the first time.
func _ready():
	heartsContainer.setMaxHearts(player.maxHealth)
	player.healthChanged.connect(heartsContainer.updateHearts)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
