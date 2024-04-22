extends Node3D
@export var current_day = 6
@export var water_levels = [0.0, 15.0/245.0, 60.0/245.0, 360.0/245.0, 465.0/245.0, 585.0/245.0, 3.0]
var years = [1920, 1930, 1940, 2000, 2010, 2020, 2080]

func set_water_level(day):
	$Water.position.y = water_levels[day - 1]
	
func current_year(day):
	return years[day - 1]
	
func next_day():
	current_day += 1
	set_water_level(current_day)
	$Music.set_song(current_day)
	$Music.play_song(current_day)
	$Year.text = str(current_year(current_day))
	
	if current_day == 7:
		$DirectionalLight3D.light_energy = 2

# Called when the node enters the scene tree for the first time. 
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
