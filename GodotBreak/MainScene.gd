extends Node2D

const SCREEN_WIDTH = 500
const SCREEN_HEIGHT = 800
const FRAME_WIDTH = 20
const BLOCK_WIDTH = 46
const BLOCK_HEIGHT = 16
const BLOCK_Y0 = 100
const BLOCK_N_HORZ = 10
const BLOCK_N_VERT = 6
const PAD_MOVE_UNIT = 400
const PAD_RADIUS = 12
const PAD_CIRCLE_RADIUS = 48
const BALL_SPEED = 300

enum {
	PAD_NORMAL = 0,
	PAD_ROT90,
	PAD_CIRCLE,
	#PAD_ROTAITING,
	N_PAD}

var pause : bool = true
var started  : bool = false
var score = 0
var rot = 0.0
onready var pad = $Pad
var nBlocks = 0		# 残りブロック数
var padRadius = PAD_RADIUS
var vel = Vector2(BALL_SPEED, -BALL_SPEED)	# 右上方向
var btQueue = []	# for ボール軌跡
var fiQueue = []	# 落下中アイテム

var rng = RandomNumberGenerator.new()
var BlockYellow = load("res://BlockYellow.tscn")
var BallTail = load("res://BallTail.tscn")
var Question = load("res://Question.tscn")

func setup_blocks():	# ブロック初期化
	nBlocks = BLOCK_N_HORZ * BLOCK_N_VERT
	for y in range(BLOCK_N_VERT):
		var py = y * BLOCK_HEIGHT + BLOCK_Y0
		for x in range(BLOCK_N_HORZ):
			var px = x * BLOCK_WIDTH + FRAME_WIDTH
			var blk = BlockYellow.instance()
			blk.position = Vector2(px, py)
			add_child(blk)
func _ready():
	randomize()
	setup_blocks()
	pass
func init():
	pause = true
	started = false
	setup_blocks()
	
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
func change_pad():
	var r = rng.randi_range(0, N_PAD - 1)
	print(r)
	if r == PAD_NORMAL && (pad != $Pad || $Pad.rotation_degrees != 0):
		if pad != $Pad:
			$Pad.position = pad.position
			pad.position = Vector2(-100, -100)
			pad = $Pad
		$Pad.rotation_degrees = 0
		padRadius = PAD_CIRCLE_RADIUS
		return
	if r == PAD_ROT90 && (pad != $Pad || $Pad.rotation_degrees != 90):
		if pad != $Pad:
			$Pad.position = pad.position
			pad.position = Vector2(-100, -100)
			pad = $Pad
		$Pad.rotation_degrees = 90
		padRadius = PAD_CIRCLE_RADIUS
		return
	if r == PAD_CIRCLE && pad != $PadCircle:
		$PadCircle.position = pad.position
		pad.position = Vector2(-100, -100)
		pad = $PadCircle
		padRadius = PAD_CIRCLE_RADIUS
		return
func updateScoreLabel():
	var txt = "%05d" % score
	$ScoreLabel.text = txt
func _physics_process(delta):
	#$Pad.rotation += 5*delta
	var dx = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	if dx != 0:
		var obj = pad.move_and_collide(Vector2(dx*PAD_MOVE_UNIT, 0) * delta)
		#if obj != null:
		#	#print(obj)
		#	pass
	if !started:	# ボールが飛翔中でない場合
		$Ball.position.x = pad.position.x
	if $Ball.position.y >= SCREEN_HEIGHT:	# ボールが画面外
		pause = true
		started = false
		$Ball.position = pad.position
		$Ball.position.y -= (padRadius + 8)
		vel = Vector2(BALL_SPEED, -BALL_SPEED)	# 右上方向
	if pause:
		return
	for ix in range(fiQueue.size()):	# 落下アイテム処理
		if fiQueue[ix] != null:
			#print(fiQueue[ix])
			if fiQueue[ix].position.y >= SCREEN_HEIGHT:
				fiQueue[ix].queue_free()
				fiQueue[ix] = null
			else:
				var lst = fiQueue[ix].get_colliding_bodies()
				#print(lst.size())
				if !lst.empty():
					if is_collide_with_pad(lst):
						#print("collide_with_pad")
						fiQueue[ix].queue_free()
						fiQueue[ix] = null
						change_pad()
	while !fiQueue.empty() && fiQueue[0] == null:
		fiQueue.pop_front()
	vel.y += 0.1		# 水平移動を始めた場合への対処
	var collide = $Ball.move_and_collide(vel*delta)
	if collide != null:
		#print(collide.collider.name)
		vel = vel.bounce(collide.normal)
		if collide.collider.name.find("Block") >= 0:	# ブロックを壊した場合
			collide.collider.queue_free()
			if fiQueue.size() < 2 && rng.randi_range(0, 2) == 0:	# 落下アイテム
				var q = Question.instance()
				q.position = $Ball.position
				add_child(q)
				fiQueue.push_back(q)
			nBlocks -= 1
			#print("nBlocks = ", nBlocks)
			score += 10
			updateScoreLabel()
			if nBlocks == 0:
				init()
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
	return
	#print(body.name)
	#if body.name.find("Question") >= 0:
	#	remove_question(body)
	#	$PadCircle.position = $Pad.position
	#	$Pad.position = Vector2(-100, -100)
	#	pad = $PadCircle
	#	padRadius = PAD_CIRCLE_RADIUS
func _on_PadCircle_body_entered(body):
	return
	#if body.name.find("Question") >= 0:
	#	remove_question(body)
	#	$Pad.position = $PadCircle.position
	#	$PadCircle.position = Vector2(-100, -100)
	#	pad = $Pad
	#	padRadius = PAD_RADIUS
