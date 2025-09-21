class_name PlayerTest
extends GdUnitTestSuite


# TestSuite generated from
const __source = 'res://scripts/actors/player.gd'


func test_player_movement_not_going_through_walls() -> void:
	var runner: GdUnitSceneRunner = self.scene_runner("res://scenes/levels/level.tscn")
	
	
	# Pacman moves up when pressing up key.
	# Pacman does not move through walls.
	# Pacman wraps around edges if applicable.
	
