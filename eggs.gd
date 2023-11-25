extends Label
@onready var eggs = get_node("/root/World")

var count = 0;
var threshold = 100;


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set_text("Eggies: " + str (eggs._NumEgg))
	count += 1
	if count == threshold:
		eggs._NumEgg -= eggs._FoxTheftRate / eggs._ShrineReduction
		count = 0
		if threshold > 10:
			threshold -= eggs._FoxTheftRate * 2


func _on_world_egg_changed(egg_count):
	if eggs._NumFish < egg_count or eggs._NumWood < egg_count:
		print("Low Resources")
	else:
		eggs._NumFish -= egg_count
		eggs._NumWood -= egg_count
		eggs._NumEgg += 1
		
	
