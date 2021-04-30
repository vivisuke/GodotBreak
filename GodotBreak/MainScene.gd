extends Node2D

const PAD_MOVE_UNIT = 400

var pause : bool = false
var vel = Vector2(200, -200)	# 右上方向


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
	var collide = $Ball.move_and_collide(vel*delta)
	if collide != null:
		print(collide.collider.name)
		vel = vel.bounce(collide.normal)
	pass
