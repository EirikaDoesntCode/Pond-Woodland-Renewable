extends Node2D

func _on_quit_pressed():
	get_tree().quit()



func _on_play_pressed():
	#Change to the "World" scene
	get_tree().change_scene_to_file("res://world.tscn")


func _on_load_pressed():
	#Opens the Saves menu over the current screen
	pass # Replace with function body.
