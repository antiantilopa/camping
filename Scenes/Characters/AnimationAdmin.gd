extends Node2D
@export var player_controller: PlayerController
@export var animation_player: AnimationPlayer
@export var sprite2d: Sprite2D

func _process(delta: float) -> void:

	if player_controller.direction.x < 0:
		animation_player.play("Movement_Left")
	elif player_controller.direction.x > 0:
		animation_player.play("Movement_Right")
	elif player_controller.direction.y < 0:
		animation_player.play("Movement_Up")
	elif player_controller.direction.y > 0:
		animation_player.play("Movement_Down")
