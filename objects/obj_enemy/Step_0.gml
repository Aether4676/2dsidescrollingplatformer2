/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 71D916E4
/// @DnDComment : 1 would be pressing right $(13_10)-1 would be pressing left$(13_10)0 would be pressing nothing
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "keyboard_check(vk_right) - keyboard_check(vk_left)"
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2F8A4AB6
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "move_x*walk_speed"
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 3351425C
/// @DnDComment : if we are on the ground
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_floor"
/// @DnDSaveInfo : "object" "obj_floor"
var l3351425C_0 = instance_place(x + 0, y + 2, [obj_floor]);
if ((l3351425C_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 670D7BCA
	/// @DnDComment : reset the falling speed on movement y$(13_10)when you land on the ground
	/// @DnDParent : 3351425C
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 72E60E80
	/// @DnDDisabled : 1
	/// @DnDParent : 3351425C
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 478F8D4A
	/// @DnDComment : if there is a tilemap 30 pixels 
	/// @DnDParent : 72E60E80
	/// @DnDArgument : "x" "x *(30*sign(move_x))"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_floor"
	/// @DnDSaveInfo : "object" "obj_floor"
	var l478F8D4A_0 = instance_place(x *(30*sign(move_x)), y + 0, [obj_floor]);
	if ((l478F8D4A_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 11070A61
		/// @DnDComment : Jump!
		/// @DnDParent : 478F8D4A
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}
	
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 634CDD60
	/// @DnDParent : 72E60E80
	/// @DnDArgument : "x" "x*(25*sign(move_x))"
	/// @DnDArgument : "y" "y+50"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_floor"
	/// @DnDSaveInfo : "object" "obj_floor"
	var l634CDD60_0 = instance_place(x*(25*sign(move_x)), y + y+50, [obj_floor]);
	if ((l634CDD60_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 70F3095E
		/// @DnDComment : flip the movement direction
		/// @DnDParent : 634CDD60
		/// @DnDArgument : "expr" "move_x*-1"
		/// @DnDArgument : "var" "move_x"
		move_x = move_x*-1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 57DCCC81
		/// @DnDComment : jump
		/// @DnDParent : 634CDD60
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}
	
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 357D4B4E
	/// @DnDParent : 72E60E80
	/// @DnDArgument : "soundid" "Sound1"
	/// @DnDSaveInfo : "soundid" "Sound1"
	audio_play_sound(Sound1, 0, 0, 1.0, undefined, 1.0);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 33A6B0E7
/// @DnDComment : If your not on the ground
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63A7B207
	/// @DnDComment : if we are falling after a jump
	/// @DnDParent : 33A6B0E7
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6E14E7F4
		/// @DnDComment : add gravity
		/// @DnDParent : 63A7B207
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;
	}
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 4A70A5D1
/// @DnDComment : 1st object is$(13_10)object to avoid
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "object" "obj_floor"
/// @DnDSaveInfo : "object" "obj_floor"
move_and_collide(move_x, move_y, obj_floor,4,0,0,-1,-1);