extends CharacterBody2D

@export var speed: float = 100

func _process(delta):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var movement: Vector2 = Vector2(Input.get_axis("left", "right") * speed, Input.get_axis("up", "down") * speed)
	velocity = movement

	move_and_slide()
