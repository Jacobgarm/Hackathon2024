extends AudioStreamPlayer

@export var music_array: Array[AudioStream]

func set_song(val: int) -> void:
	if val >= 0 and val <= 3:
		stream = music_array[val]

func play_song(day: int) -> void:
	match day:
		1:
			set_song(0)
		2:
			set_song(0)
		3:
			set_song(0)
		4:
			set_song(1)
		5:
			set_song(1)
		6:
			set_song(2)
		7:
			set_song(3)
	
	play()

# Called when the node enters the scene tree for the first time.
func _ready():
	play_song(7)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
