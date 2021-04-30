extends Node2D

var pause : bool = true
var vel = Vector2(200, -200)	# 右上方向


func _ready():
	pass
func _input(event):
	if event is InputEventKey and event.is_pressed():
		pause = !pause
	pass
func _physics_process(delta):
	if pause:
		return
	var collide = $Ball.move_and_collide(vel*delta)
	if collide != null:
		vel = vel.bounce(collide.normal)
	pass
