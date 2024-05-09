extends CharacterBody2D


const speed = 100.0
var currentHealth = 1
var isAbleToShoot

@onready var bulletPath = preload("res://Scenes/gunshot.tscn")
@onready var player = get_node("../Player")

var direction


func _ready():
	isAbleToShoot = false
	$ShotCoolDown.start()


func _process(delta):
	rotate(get_angle_to(player.position))
	if(isAbleToShoot):
		shoot()


func dmgEnemy(dmg: int):
	currentHealth = currentHealth - dmg
	if(currentHealth <= 0 ):
		die()
	
	
func die():
	self.queue_free()
	
func shoot():
	print("bullet should come")
	var bullet = bulletPath.instantiate()
	get_parent().add_child(bullet)
	
	bullet.position = $BulletSpawnPosition.global_position
	var direction = (player.position - bullet.position).normalized() 
	bullet.velocity = direction * bullet.bulletSpeed
	
	isAbleToShoot = false
	$ShotCoolDown.start()


func _on_shot_cool_down_timeout():
	isAbleToShoot = true
	pass # Replace with function body.
