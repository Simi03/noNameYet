extends CharacterBody2D


const speed = 100.0
var currentHealth = 1


@onready var player = get_node("../Player")
var direction

func _physics_process(dealta):
	direction = (player.position - position).normalized() 
	velocity = direction * speed
	move_and_slide()

func dmgEnemy(dmg: int):
	currentHealth = currentHealth - dmg
	if(currentHealth <= 0 ):
		die()
	
	
func die():
	self.queue_free()
