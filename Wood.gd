extends Label

@onready var wood = get_node("/root/World");

# Called when the node enters the scene tree for the first time.
func _ready():
	set_text("Wood: " + str (wood._NumWood))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set_text("Wood: " + str (wood._NumWood))



func _on_world_wood_changed(wood_count):
	wood._NumWood += wood_count;

