extends Node2D

const SCREEN_WIDTH = 500
const SCREEN_HEIGHT = 800
const FRAME_WIDTH = 20
const BLOCK_WIDTH = 46
const BLOCK_HEIGHT = 16
const BLOCK_Y0 = 100
const PAD_MOVE_UNIT = 400
const PAD_RADIUS = 12
const PAD_CIRCLE_RADIUS = 48
const BALL_SPEED = 300

var pause : bool = true
var started  : bool = false
onready var pad = $Pad
var padRadius = PAD_RADIUS
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
		for x in range(10):
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
		if event.scancode == KEY_ESCAPE || (pause && event.scancode == KEY_SPACE):
			pause = !pause
			started = true
	pass
func is_collide_with_pad(lst):
	for body in lst:
		if body.name.find("Pad") >= 0:
			return true
	return false
func _physics_process(delta):
	var dx = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	if dx != 0:
		var obj = pad.move_and_collide(Vector2(dx*PAD_MOVE_UNIT, 0) * delta)
		#if obj != null:
		#	#print(obj)
		#	pass
	if !started:	# ボールが飛翔中でない場合
		$Ball.position.x = pad.position.x
	if $Ball.position.y >= SCREEN_HEIGHT:
		pause = true
		started = false
		$Ball.position = pad.position
		$Ball.position.y -= (padRadius + 8)
		vel = Vector2(BALL_SPEED, -BALL_SPEED)	# 右上方向
	if pause:
		return
	for ix in range(fiQueue.size()):
		if fiQueue[ix] != null:
			#print(fiQueue[ix])
			if fiQueue[ix].position.y >= SCREEN_HEIGHT:
				fiQueue[ix].queue_free()
				fiQueue[ix] = null
			else:
				var lst = fiQueue[ix].get_colliding_bodies()
				if !lst.empty():
					if is_collide_with_pad(lst):
						fiQueue[ix].queue_free()
						fiQueue[ix] = null
	while !fiQueue.empty() && fiQueue[0] == null:
		fiQueue.pop_front()
	var collide = $Ball.move_and_collide(vel*delta)
	if collide != null:
		#print(collide.collider.name)
		vel = vel.bounce(collide.normal)
		if collide.collider.name.find("Block") >= 0:	# ブロックを壊した場合
			collide.collider.queue_free()
			if fiQueue.size() < 2 && rng.randi_range(0, 2) == 0:
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
		b.modulate.a *= 0.9
	while !btQueue.empty() && btQueue[0].modulate.a <= 0.0001:
		btQueue.pop_front()

func remove_question(body):
	for ix in range(fiQueue.size()):
		if fiQueue[ix] == body:
			fiQueue[ix].queue_free()
			fiQueue[ix] = null
			return
func _on_Pad_body_entered(body):
	print(body.name)
	if body.name.find("Question") >= 0:
		remove_question(body)
		$PadCircle.position = $Pad.position
		$Pad.position = Vector2(-100, -100)
		pad = $PadCircle
		padRadius = PAD_CIRCLE_RADIUS
