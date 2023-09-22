extends Sprite2D

@export var scrollSpeed: float = 1
@export var loopHeight: float = 1155
@export var traveled: float = 0;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y += delta * scrollSpeed
	traveled += delta * scrollSpeed
	if traveled >= loopHeight:
		position.y -= loopHeight
		traveled -= loopHeight
