extends Spatial


const player_monster_game_speed = 200

var monster = null

var gaming = false

onready var play_button = get_node("Hud/PlayButton")

onready var game_over_hud = get_node("Hud/GameOverHud")
onready var win_hud = get_node("Hud/WinHud")


func _ready():
	init_PlayerController()


func _input(event):
	if event.is_action_pressed("pause") and gaming:
		get_tree().set_pause(!get_tree().is_paused())


func _process(delta):
	$Ground.set_player_z($PlayerController.get_player_pos().z)
	
	if gaming:
		if abs(monster.get_translation().z - $PlayerController.get_player_pos().z) < 150:
			$PlayerController.set_forward_speed(player_monster_game_speed)
		if !$PlayerController.player_alive():
			game_over_hud.show()
			gaming = false
		if !monster.alive():
			win_hud.show()
			gaming = false


func init_PlayerController():
	$PlayerController.set_forward_speed(1500)
	$PlayerController.set_pause_mode(Node.PAUSE_MODE_STOP)


func add_monster():
	monster = preload("res://scenes/monster/Monster.tscn").instance()
	monster.set_translation($PlayerController.get_translation() + Vector3(0,0,-3500))
	monster.player_controller_node_path = "../PlayerController"
	monster.walking_speed = player_monster_game_speed
	monster.set_pause_mode(Node.PAUSE_MODE_STOP)
	add_child(monster)


func _on_PlayButton_pressed():
	play_button.hide()
	add_monster()
	gaming = true


func _on_ReloadButton_pressed():
	get_tree().reload_current_scene()
