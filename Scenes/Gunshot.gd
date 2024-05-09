extends CharacterBody2D

const bulletSpeed = 1000

func _physics_process(delta):
	move_and_slide()
 


func _on_killzone_gun_body_entered(player):
	player.dmgPlayer(1)
	pass 
 
