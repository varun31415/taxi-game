extends Sprite2D

var velocity

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x += velocity[0]
	position.y += velocity[1]
	velocity[0] += 1
	velocity[1] += 1
	pass
