extends Node2D

const SCREEN_WIDTH = 500
const SCREEN_HEIGHT = 800
const PAD_MOVE_UNIT = 400

var pause : bool = false
var vel = Vector2(200, -200)	# 右上方向
var btQueue = []

var BallTail = load("res://BallTail.tscn")

func _ready():
	pass
func _input(event):
	if event is InputEventKey && event.pressed && event.scancode == KEY_ESCAPE:
		pause = !pause
	pass
func _physics_process(delta):
	var dx = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	if dx != 0:
		$Pad.move_and_collide(Vector2(dx*PAD_MOVE_UNIT, 0) * delta)
	if pause:
		return
	var bt = BallTail.instance()
	bt.position = $Ball.position
	bt.modulate.a = 1.0
	add_child(bt)
	btQueue.push_back(bt)
	for b in btQueue:
		#b.modulate.a -= 0.025
		b.modulate.a *= 0.95
	while btQueue[0].modulate.a <= 0.0001:
		btQueue.pop_front()
	var collide = $Ball.move_and_collide(vel*delta)
	if collide != null:
		print(collide.collider.name)
		vel = vel.bounce(collide.normal)
	pass
