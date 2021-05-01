extends Node2D

const SCREEN_WIDTH = 500
const SCREEN_HEIGHT = 800
const FRAME_WIDTH = 22
const BLOCK_WIDTH = 38
const BLOCK_HEIGHT = 16
const BLOCK_Y0 = 100
const PAD_MOVE_UNIT = 400
const BALL_SPEED = 300

var pause : bool = true
var started  : bool = false
var vel = Vector2(BALL_SPEED, -BALL_SPEED)	# 右上方向
var btQueue = []	# for ボール軌跡
var fiQueue = []	# 落下中アイテム

var rng = RandomNumberGenerator.new()
var BlockYellow = load("res://BlockYellow.tscn")
var BallTail = load("res://BallTail.tscn")
var Question = load("res://Question.tscn")

func setup_blocks():
	for y in range(6):
		var py = y * BLOCK_HEIGHT + BLOCK_Y0
		for x in range(12):
			var px = x * BLOCK_WIDTH + FRAME_WIDTH
			var blk = BlockYellow.instance()
			blk.position = Vector2(px, py)
			add_child(blk)
func _ready():
	randomize()
	setup_blocks()
	pass
func _input(event):
	if event is InputEventKey && event.pressed:
		if event.scancode == KEY_ESCAPE || event.scancode == KEY_SPACE:
			pause = !pause
			started = true
	pass
func _physics_process(delta):
	var dx = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	if dx != 0:
		var obj = $Pad.move_and_collide(Vector2(dx*PAD_MOVE_UNIT, 0) * delta)
		if obj != null:
			print(obj)
			pass
	if !started:	# ボールが飛翔中でない場合
		$Ball.position.x = $Pad.position.x
	if $Ball.position.y >= SCREEN_HEIGHT:
		pause = true
		started = false
		$Ball.position = $Pad.position
		$Ball.position.y -= 20
		vel = Vector2(BALL_SPEED, -BALL_SPEED)	# 右上方向
	if pause:
		return
	for ix in range(fiQueue.size()):
		if fiQueue[ix] != null:
			#print(fiQueue[ix])
			if fiQueue[ix].position.y >= SCREEN_HEIGHT:
				fiQueue[ix].queue_free()
				fiQueue[ix] = null
	while !fiQueue.empty() && fiQueue[0] == null:
		fiQueue.pop_front()
	var collide = $Ball.move_and_collide(vel*delta)
	if collide != null:
		#print(collide.collider.name)
		vel = vel.bounce(collide.normal)
		if collide.collider.name.left(6) == "@Block":	# ブロックを壊した場合
			collide.collider.queue_free()
			if rng.randi_range(0, 2) == 0:
				var q = Question.instance()
				q.position = $Ball.position
				add_child(q)
				fiQueue.push_back(q)
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
