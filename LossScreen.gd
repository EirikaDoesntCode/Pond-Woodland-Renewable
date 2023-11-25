extends Node2D

func _process(delta):
	#print("loss running")
	pass

func _on_return_pressed():
	print("loss return")
	get_tree().change_scene_to_file("res://main.tscn")


func _on_quit_pressed():
	print("loss quit")
	get_tree().quit()
