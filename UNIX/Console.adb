with Ada.Characters.Wide_Wide_Latin_1, Ada.Strings, Ada.Strings.Wide_Wide_Fixed, Ada.Wide_Wide_Text_IO, Numerics;
use Ada.Characters.Wide_Wide_Latin_1, Ada.Strings, Ada.Strings.Wide_Wide_Fixed, Ada.Wide_Wide_Text_IO, Numerics;

package body Console is

	procedure Set_Modifier(Modifier : in Font_Modifier) is
	begin
		case Modifier is
			when Bold => Console.Put(ESC & "[1m");
			when Faint => Console.Put(ESC & "[2m");
			when Italic => Console.Put(ESC & "[3m");
			when Underline => Console.Put(ESC & "[4m");
			when Slow_Blink => Console.Put(ESC & "[5m");
			when Fast_Blink => Console.Put(ESC & "[6m");
			when Inverse => Console.Put(ESC & "[7m");
			when Conceal => Console.Put(ESC & "[8m");
			when Crossed_Out => Console.Put(ESC & "[9m");
			when Frame => Console.Put(ESC & "[51m");
			when Circle => Console.Put(ESC & "[52m");
			when Overline => Console.Put(ESC & "[53m");
		end case;
	end Set_Modifier;

	procedure Clear_Modifier is
	begin
		Console.Put(ESC & "[0m");
	end Clear_Modifier;
	
	procedure Set_Foreground(Foreground : in Color'Class) is
		R : Wide_Wide_String := Short_Short_Modular'Wide_Wide_Image(Foreground.Red);
		G : Wide_Wide_String := Short_Short_Modular'Wide_Wide_Image(Foreground.Green);
		B : Wide_Wide_String := Short_Short_Modular'Wide_Wide_Image(Foreground.Blue);
	begin
		Console.Put(ESC & "[38;2;" & R & ";" & G & ";" & B & "m");
	end Set_Foreground;

	procedure Clear_Foreground is
	begin
		Console.Put(ESC & "[39m");
	end Clear_Foreground;

	------------------
	-- Input/Output --
	------------------
	
	function Get return Wide_Wide_Character is
	begin
		return C : Wide_Wide_Character do
			Ada.Wide_Wide_Text_IO.Get(Standard_Input, C);
		end return;
	end Get;

	function Get(Amount : Positive) return Wide_Wide_String is
	begin
		return S : Wide_Wide_String(1..Amount) do
			for C of S loop
				Ada.Wide_Wide_Text_IO.Get(Standard_Input, C);
			end loop;
		end return;
	end Get;

	function Get(Amount : Positive) return Unbounded_Wide_Wide_String is
	begin
		return To_Unbounded_Wide_Wide_String(Console.Get(Amount));
	end Get;

	function Get_Immediate return Wide_Wide_Character is
	begin
		return C : Wide_Wide_Character do
			Ada.Wide_Wide_Text_IO.Get_Immediate(Standard_Input, C);
		end return;
	end Get_Immediate;

	function Get_Line return Wide_Wide_String is
	begin
		return Ada.Wide_Wide_Text_IO.Get_Line(Standard_Input);
	end Get_Line;

	function Get_Line return Unbounded_Wide_Wide_String is
	begin
		return To_Unbounded_Wide_Wide_String(Ada.Wide_Wide_Text_IO.Get_Line(Standard_Input));
	end Get_Line;

	procedure Put(Content : in Wide_Wide_Character) is
	begin
		Ada.Wide_Wide_Text_IO.Put(Standard_Output, Content);
	end Put;

	procedure Put(Content : in Wide_Wide_String) is
	begin
		Ada.Wide_Wide_Text_IO.Put(Standard_Output, Content);
	end Put;

	procedure Put(Content : in Unbounded_Wide_Wide_String) is
	begin
		Console.Put(To_Wide_Wide_String(Content));
	end Put;

	procedure Put(Content : in Wide_Wide_String; Modifier : in Font_Modifier) is
	begin
		Console.Set_Modifier(Modifier);
		Console.Put(Content);
		Console.Clear_Modifier;
	end Put;

	procedure Put(Content : in Unbounded_Wide_Wide_String; Modifier : in Font_Modifier)is
	begin
		Console.Put(To_Wide_Wide_String(Content), Modifier);
	end Put;

	procedure Put(Content : in Wide_Wide_String; Modifiers : in Font_Modifiers) is
	begin
		for Modifier of Modifiers loop
			Console.Set_Modifier(Modifier);
		end loop;
		Console.Put(Content);
		Console.Clear_Modifier;
	end Put;

	procedure Put(Content : in Unbounded_Wide_Wide_String; Modifiers : in Font_Modifiers) is
	begin
		for Modifier of Modifiers loop
			Console.Set_Modifier(Modifier);
		end loop;
		Console.Put(Content);
		Console.Clear_Modifier;
	end Put;

	procedure Put(Content : in Wide_Wide_String; Foreground : in Color'Class) is
		R : Wide_Wide_String := Short_Short_Modular'Wide_Wide_Image(Foreground.Red);
		G : Wide_Wide_String := Short_Short_Modular'Wide_Wide_Image(Foreground.Green);
		B : Wide_Wide_String := Short_Short_Modular'Wide_Wide_Image(Foreground.Blue);
	begin
		Console.Put(ESC & "[38;2;" & R & ";" & G & ";" & B & "m" & Content & ESC & "[39m");
	end Put;

	procedure Put(Content : in Unbounded_Wide_Wide_String; Foreground : in Color'Class) is
	begin
		Console.Put(To_Wide_Wide_String(Content), Foreground);
	end Put;

	procedure Put(Content : in Wide_Wide_String; Modifier : in Font_Modifier; Foreground : in Color'Class) is
	begin
		Console.Set_Modifier(Modifier);
		Console.Set_Foreground(Foreground);
		Console.Put(Content);
		Console.Clear_Foreground;
		Console.Clear_Modifier;
	end Put;

	procedure Put(Content : in Unbounded_Wide_Wide_String; Modifier : in Font_Modifier; Foreground : in Color'Class) is
	begin
		Console.Put(To_Wide_Wide_String(Content), Modifier, Foreground);
	end Put;

	procedure New_Line is
	begin
		Ada.Wide_Wide_Text_IO.New_Line;
	end New_Line;

	procedure Put_Line(Content : in Wide_Wide_String) is
	begin
		Ada.Wide_Wide_Text_IO.Put_Line(Standard_Output, Content);
	end Put_Line;

	procedure Put_Line(Content : in Unbounded_Wide_Wide_String) is
	begin
		Console.Put_Line(To_Wide_Wide_String(Content));
	end Put_Line;

	procedure Put_Line(Content : in Wide_Wide_String; Modifier : in Font_Modifier) is
	begin
		Console.Put(Content, Modifier);
		Console.New_Line;
	end Put_Line;

	procedure Put_Line(Content : in Unbounded_Wide_Wide_String; Modifier : in Font_Modifier) is
	begin
		Console.Put_Line(To_Wide_Wide_String(Content), Modifier);
	end Put_Line;

	procedure Put_Line(Content : in Wide_Wide_String; Modifiers : in Font_Modifiers) is
	begin
		Console.Put(Content, Modifiers);
		Console.New_Line;
	end Put_Line;

	procedure Put_Line(Content : in Unbounded_Wide_Wide_String; Modifiers : in Font_Modifiers) is
	begin
		Console.Put(Content, Modifiers);
		Console.New_Line;
	end Put_Line;

	procedure Put_Line(Content : in Wide_Wide_String; Foreground : in Color'Class) is
	begin
		Console.Put(Content, Foreground);
		Console.New_Line;
	end Put_Line;

	procedure Put_Line(Content : in Unbounded_Wide_Wide_String; Foreground : in Color'Class) is
	begin
		Console.Put_Line(To_Wide_Wide_String(Content), Foreground);
	end Put_Line;

	------------
	-- Cursor --
	------------

	procedure Move_Cursor(Direction : in Direction_Type; Amount : in Positive := 1) is
		A : Wide_Wide_String := Trim(Integer'Wide_Wide_Image(Amount), Both);
	begin
		case Direction is
			when Up => Console.Put(ESC & "[" & A & "A");
			when Down => Console.Put(Esc & "[" & A & "B");
			when Right => Console.Put(Esc & "[" & A & "C");
			when Left => Console.Put(Esc & "[" & A & "D");
		end case;
	end Move_Cursor;

	procedure Move_Cursor(X, Y : Positive := 1) is
		N : Wide_Wide_String := Trim(Integer'Wide_Wide_Image(X), Both);
		M : Wide_Wide_String := Trim(Integer'Wide_Wide_Image(Y), Both);
	begin
		Console.Put(ESC & "[" & N & ";" & M & "H");
	end Move_Cursor;

	procedure Save_Cursor is
	begin
		Console.Put(ESC & "[s");
	end Save_Cursor;

	procedure Restore_Cursor is
	begin
		Console.Put(ESC & "[u");
	end Restore_Cursor;

	----------
	-- Misc --
	----------
		
	procedure Bell is
	begin
		Ada.Wide_Wide_Text_IO.Put(BEL);
	end Bell;

end Console;
