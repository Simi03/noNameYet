extends Area2D


@onready var enemy = get_parent()

func _on_body_entered(player):
	if(player.isDashing):
		enemy.dmgEnemy(1)
	else:
		player.dmgPlayer(1)
	pass 
 
