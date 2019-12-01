extends Node


onready var Tuna_Position = $Tuna_Kinematic.position.x


# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

const TIMER_LIMIT = 4.0
var timer = 0.0
var finish = false 
func _process(delta):
	timer += delta
	if timer > TIMER_LIMIT:
		timer = 0.0
		print("fps: " + str(Engine.get_frames_per_second())) #prints something every 2 seconds calling timer limit
		if finish == true:
			get_tree().change_scene("TlteScreen.tscn")

		if Tuna_Position -4000 > $Tuna_Kinematic.position.x : #little fish poopy movement
			$Tuna_Kinematic.position.x += 4000
			$School_Fish_Kinematic.position.x += 4000
	if $KinematicBody2D.position.y < 340:
		$Win/Win.set_visible(true)
		finish = true
		
		


func _ready():	
	pass # Replace with function body.