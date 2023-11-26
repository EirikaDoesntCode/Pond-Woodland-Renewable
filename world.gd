extends Node2D

signal fish_changed(fish_count)
signal wood_changed(wood_count)
signal egg_changed(egg_count)


# Variables to be called globalling kind of
var _NumFish = 8;
var _NumEgg = 10;
var _NumWood = 0;

var _BearStrength = 5;
var _BeaverStrength = 5;
var _ShrineReduction = 1;
var _FoxTheftRate = 1;
var _EggConversion = 10;
var deathTriggered = true;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#print("world running")
	if _NumEgg == 0 and deathTriggered:
		get_tree().change_scene_to_file("res://loss_screen.tscn")
		deathTriggered = false




func _on_beaver_pressed():
	emit_signal("wood_changed", _BeaverStrength)


func _on_buy_egg_pressed():
	emit_signal("egg_changed", _EggConversion)


func _on_town_hall_pressed():
	pass # Replace with function body.


func _on_shrine_pressed():
	pass # Replace with function body.


func _on_bear_ltd_pressed():
	emit_signal("fish_changed",	_BearStrength)

