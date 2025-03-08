extends Node2D

signal hovered
signal hovered_off

var position_in_hand

# Called when the node enters the scene tree for the first time.
func _ready():
	get_parent().connect_card_signals(self) # ERROR: this will throw an error if no parent with this


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_card_area_mouse_entered():
	emit_signal("hovered", self)


func _on_card_area_mouse_exited():
	emit_signal("hovered_off", self)
