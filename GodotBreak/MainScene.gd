extends Node2D

const SCREEN_WIDTH = 500
const SCREEN_HEIGHT = 800
const PAD_MOVE_UNIT = 400
const BALL_SPEED = 300

var pause : bool = true
var started  : bool = false
var vel = Vector2(BALL_SPEED, -BALL_SPEED)	# 右上方向
var btQueue = []

var BallTail = load("res://BallTail.tscn")

func _ready():
	pass
func _input(event):
	if event is InputEventKey && event.pressed && event.scancode == KEY_ESCAPE:
		pause = !pause
		started = true
	pass
func _physics_process(delta):
	var dx = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	if dx != 0:
		$Pad.move_and_collide(Vector2(dx*PAD_MOVE_UNIT, 0) * delta)
	if !started:
		$Ball.position.x = $Pad.position.x
	if $Ball.position.y >= SCREEN_HEIGHT:
		pause = true
		started = false
		$Ball.position = $Pad.position
		$Ball.position.y -= 20
		vel = Vector2(BALL_SPEED, -BALL_SPEED)	# 右上方向
	if pause:
		return
	var collide = $Ball.move_and_collide(vel*delta)
	if collide != null:
		print(collide.collider.name)
		vel = vel.bounce(collide.normal)
	pass
func _on_BallTimer_timeout():
	if !pause:
		var bt = BallTail.instance()
		bt.position = $Ball.position
		bt.modulate.a = 1.0
		add_child(bt)
		btQueue.push_back(bt)
	for b in btQueue:
		b.modulate.a *= 0.95
	while !btQueue.empty() && btQueue[0].modulate.a <= 0.0001:
		btQueue.pop_front()
