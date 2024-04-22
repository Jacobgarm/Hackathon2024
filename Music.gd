extends AudioStreamPlayer

@export var music_array: Array[AudioStream]
@export_range (0, 3) var current_song: int

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
