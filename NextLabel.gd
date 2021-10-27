extends Label

onready var player = get_node('/root/World/Player')



func _physics_process(delta: float) -> void:
	if player.saccount <21:
		text = "Next Cooldown reduction in 21 sacrificed peanuts"
	elif player.saccount >= 21 && player.saccount <32:
		text = "Next Cooldown reduction in 32 sacrificed peanuts"
	elif player.saccount >= 32 && player.saccount <64:
		text = "Next Cooldown reduction in 64 sacrificed peanuts"
	elif player.saccount >= 64:
		get_tree().change_scene("res://GodRealm.tscn")


