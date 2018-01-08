extends Node

const UP = 90
const DOWN = 270
const LEFT = 180
const RIGHT = 0
export (PackedScene) var dispenser

func _ready():
	$Player/StartPosition.position = $Player.screensize / 2
	$Player.position = $Player/StartPosition.position
	
	var player_x = $Player.position.x
	var player_y = $Player.position.y

	# --- Setup dispensers
	# Up
	var dispenser1 = dispenser.instance()
	dispenser1.set_name('Dispenser1')
	add_child(dispenser1)
	dispenser1.setup(Vector2(player_x, player_y - player_y * 1/1.5), DOWN)
	dispenser1.get_node("/root/Main/Dispenser1/Sprite").flip_v = false
	
	# Down
	var dispenser2 = dispenser.instance()
	dispenser2.set_name('Dispenser2')
	add_child(dispenser2)
	dispenser2.setup(Vector2(player_x, player_y + player_y * 1/1.5), UP)
	dispenser2.get_node("/root/Main/Dispenser2/Sprite").flip_v = true
	
	# Left
	var dispenser3 = dispenser.instance()
	dispenser3.set_name('Dispenser3')
	add_child(dispenser3)
	dispenser3.setup(Vector2(player_x - player_x / 2, player_y), RIGHT)
	dispenser3.get_node("/root/Main/Dispenser3/Sprite").flip_h = true
	
	#Right
	var dispenser4 = dispenser.instance()
	dispenser4.set_name('Dispenser4')
	add_child(dispenser4)
	dispenser4.setup(Vector2(player_x + player_x / 2, player_y), LEFT)
	dispenser4.get_node("/root/Main/Dispenser4/Sprite").flip_h = false