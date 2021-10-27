extends KinematicBody2D


export var saccount = 0
var peanutsc = load("res://Peanut.tscn")
var peanut = peanutsc.instance()
onready var hammer = get_node('/root/World/Hammer')

func _ready() -> void:
	add_child(peanut)
func _physics_process(delta: float) -> void:
	
	
	if Input.is_action_just_pressed("sacrifice") && $Timer.is_stopped() == true:
		saccount +=1
		$Hamtiime.start()
		$Peantim.start()
		$Timer.start()
	
	if Input.is_action_just_pressed("z"):
		if saccount >= 20:
			saccount -= 20
			$Zero.start()
		
	
	if $Peantim.is_stopped() == true:
		
		peanut.play('idle')
		
	else:
		peanut.play('death')
		
	if $Hamtiime.is_stopped() == true:
		hammer.play('idle')
	else:
		hammer.play('smash')
		
	
	var timeri = stepify($Timer.time_left,0.1)
	var timers = String(timeri)
	$Timerlab.text = timers
	

	var label = String(saccount)
	$Label.text = label
	if saccount == 21:
		$Timer.set_wait_time(1.5)
	elif saccount == 32:
		$Timer.set_wait_time(0.5)
	
		
	if $Zero.is_stopped() == false:
		
		$Timer.set_wait_time(0.1)
	else:
		if saccount == 21:
			$Timer.set_wait_time(1.5)
		elif saccount == 32:
			$Timer.set_wait_time(0.5)





