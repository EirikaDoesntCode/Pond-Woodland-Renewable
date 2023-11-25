extends Label

@onready var fish = get_node("/root/World");


# Called when the node enters the scene tree for the first time.
func _ready():
	set_text("Fish: " + str (fish._NumFish))



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set_text("Fish: " + str (fish._NumFish))

func _on_world_fish_changed(fish_count):
	fish._NumFish += fish_count; 

