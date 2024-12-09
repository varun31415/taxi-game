extends Area2D

var velocity = 0;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("forward"):
		velocity += 0.1
	if Input.is_action_pressed("reverse"):
		velocity -= 0.1
	if Input.is_action_pressed("turn_left"):
		rotation = rotation + 0.01
		
	if Input.is_action_pressed("turn_right"):
		rotation = rotation - 0.01
	position.x = position.x + velocity * cos(rotation);
	position.y = position.y + velocity * sin(rotation);
	velocity *= 0.99

func _input(event: InputEvent) -> void:
	pass
	
