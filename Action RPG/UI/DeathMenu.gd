extends Control

var stats = PlayerStats

func is_dead():
	visible = true
	
func _ready():
	stats.connect("no_health", self, "is_dead")

func _on_QuitButton_pressed():
	get_tree().quit()
