with Ada.Strings.Wide_Wide_Unbounded, Colors.Models;
use Ada.Strings.Wide_Wide_Unbounded, Colors.Models;

package Console is

	type Font_Modifier is (Bold, Faint, Italic, Underline, Slow_Blink, Fast_Blink, Inverse, Conceal, Crossed_Out, Frame, Circle, Overline);

	type Font_Modifiers is array(Positive range <>) of Font_Modifier;

	type Direction_Type	is (Up, Down, Left, Right);

	------------------
	-- Input/Output --
	------------------

	function Get return Wide_Wide_Character;

	function Get(Amount : Positive) return Wide_Wide_String;

	function Get(Amount : Positive) return Unbounded_Wide_Wide_String;

	function Get_Line return Wide_Wide_String;

	function Get_Line return Unbounded_Wide_Wide_String;

	procedure Put(Content : in Wide_Wide_String);

	procedure Put(Content : in Unbounded_Wide_Wide_String);

	procedure Put(Content : in Wide_Wide_String; Modifier : in Font_Modifier);

	procedure Put(Content : in Unbounded_Wide_Wide_String; Modifier : in Font_Modifier);

	procedure Put(Content : in Wide_Wide_String; Foreground : in Color'Class);

	procedure Put(Content : in Unbounded_Wide_Wide_String; Foreground : in Color'Class);

	procedure New_Line;

	procedure Put_Line(Content : in Wide_Wide_String);

	procedure Put_Line(Content : in Unbounded_Wide_Wide_String);

	procedure Put_Line(Content : in Wide_Wide_String; Foreground : in Color'Class);

	procedure Put_Line(Content : in Unbounded_Wide_Wide_String; Foreground : in Color'Class);

	------------
	-- Cursor --
	------------

	procedure Move_Cursor(Direction : in Direction_Type; Amount : in Positive := 1);

	procedure Move_Cursor(X, Y : Positive := 1);

	procedure Save_Cursor;

	procedure Restore_Cursor;

	----------
	-- Misc --
	----------

	procedure Bell;

end Console;
