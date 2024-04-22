extends Node3D
var current_day = 1
var water_levels = [0.0, 15.0/245.0, 60.0/245.0, 360.0/245.0, 465.0/245.0, 585.0/245.0, 3.0]
var years = [1920, 1930, 1940, 2000, 2010, 2020, 2080]

func set_water_level(day):
	$Music.stop()
	$Music.stream = "res://music/celestia.wav"
	$Music.play()
	$MeshInstance3D.position.y = water_levels[day - 1]
	
func current_year(day):
	return years[day - 1]

# Called when the node enters the scene tree for the first time. 
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if current_day == 1:
		set_water_level(2)
		current_day = 2
	pass
	
