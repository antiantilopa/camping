extends CharacterBody2D
class_name PlayerController
@export var SPEED: float = 10.0
var movement_multi: float = 20.0
var direction: Vector2 = Vector2.ZERO


func _physics_process(delta: float) -> void:
	direction.x = Input.get_axis("move_left", "move_right")
	direction.y = Input.get_axis("move_up", "move_down")

	if direction.x != 0.0:
		velocity.x = direction.x * SPEED * movement_multi
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED * movement_multi)

	if direction.y != 0.0:
		velocity.y = direction.y * SPEED * movement_multi
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED * movement_multi)

	move_and_slide()
