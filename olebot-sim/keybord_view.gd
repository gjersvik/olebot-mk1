extends GridContainer

var up_action: String = "Up"
var down_action: String = "Down"
var left_action: String = "Left"
var right_action: String = "Right"

func _process(_delta: float) -> void:
	$Up.active = Input.is_action_pressed(up_action)
	$Down.active = Input.is_action_pressed(down_action)
	$Left.active = Input.is_action_pressed(left_action)
	$Right.active = Input.is_action_pressed(right_action)
