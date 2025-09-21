class_name GlobalTest
extends GdUnitTestSuite


# TestSuite generated from
const __source = "res://autoloads/scripts/global.gd"


func before_test():
	Global.reset()


func test_increase_lives_increments_properly():
	Global.set_max_lives(2)
	Global.set_lives(1)
	Global.increase_lives()
	assert_int(Global.lives).is_equal(2)


func test_increase_lives_not_exceeding_max():
	Global.set_lives(Global.max_lives)
	Global.increase_lives()
	assert_int(Global.lives).is_equal(Global.max_lives)
