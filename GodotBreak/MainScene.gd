extends Node2D

var vel = Vector2(100, -100)	# 右上方向


func _ready():
	pass

func _physics_process(delta):
	var collide = $Ball.move_and_collide(vel*delta)
	if collide != null:
		vel = vel.bounce(collide.normal)
	pass
