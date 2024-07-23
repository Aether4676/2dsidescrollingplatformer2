/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7F1E023C
/// @DnDComment : if moving right
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "-1"
if(move_x <= -1)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 49A051C7
	/// @DnDParent : 7F1E023C
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_player_walk"
	/// @DnDSaveInfo : "spriteind" "spr_player_walk"
	sprite_index = spr_player_walk;
	image_index += 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 4CA5E82D
	/// @DnDComment : flip the image x scale$(13_10)(absolute value to make sure$(13_10)this still does the same if already flipped)
	/// @DnDParent : 7F1E023C
	/// @DnDArgument : "xscale" "-1*image_xscale"
	/// @DnDArgument : "yscale" "image_yscale"
	image_xscale = -1*image_xscale;
	image_yscale = image_yscale;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 51D13DEE
/// @DnDComment : if moving left
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "1"
if(move_y <= 1)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 40A2CCBE
	/// @DnDParent : 51D13DEE
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_player_walk"
	/// @DnDSaveInfo : "spriteind" "spr_player_walk"
	sprite_index = spr_player_walk;
	image_index += 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 550E008D
	/// @DnDComment : reset the image x scale$(13_10)back to normal$(13_10)(absolute value to make it positive to the right)
	/// @DnDParent : 51D13DEE
	/// @DnDArgument : "xscale" "abs(image_xscale)"
	/// @DnDArgument : "yscale" "image_yscale"
	image_xscale = abs(image_xscale);
	image_yscale = image_yscale;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 60D781E2
/// @DnDComment : if moving right
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "-1"
if(move_x <= -1)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7E15B9C0
	/// @DnDParent : 60D781E2
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_player_walk"
	/// @DnDSaveInfo : "spriteind" "spr_player_walk"
	sprite_index = spr_player_walk;
	image_index += 0;
}