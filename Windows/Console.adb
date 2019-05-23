with Ada.Characters.Wide_Wide_Latin_1, Ada.Strings, Interfaces.C, Interfaces.C_Streams;
use Ada.Characters.Wide_Wide_Latin_1, Ada.Strings, Interfaces.C, Interfaces.C_Streams;

package body Wide_Wide_Console is

	procedure Set_Modifier(Modifier : in Font_Modifier) is
	begin
		pragma Unreferenced(Modifier);
		null;
	end Set_Modifier;

	procedure Clear_Modifier is
	begin
		null;
	end Clear_Modifier;

	procedure Set_Foreground(Foreground : in Color'Class) is
	begin
		pragma Unreferenced(Foreground);
		null;
	end Set_Foreground;

	procedure Clear_Foreground is
	begin
		null;
	end Clear_Foreground;

	------------------
	-- Input/Output --
	------------------

	function Get return Wide_Wide_Character is
	begin
		return Wide_Wide_Character'Val(fgetc(stdin));
	end Get;

	function Get(Amount : Positive) return Wide_Wide_String is
		Result : Wide_Wide_String(1..Amount);
	begin
		for C of Result loop
			C := Wide_Wide_Console.Get;
		end loop;
		return Result;
	end Get;

	function Get(Amount : Positive) return Unbounded_Wide_Wide_String is
		Result : Unbounded_Wide_Wide_String;
	begin
		for I in 1..Amount loop
			Append(Result, Wide_Wide_Console.Get);
		end loop;
		return Result;
	end Get;

	function Get_Line return Unbounded_Wide_Wide_String is
		Result : Unbounded_Wide_Wide_String;
		Current : Wide_Wide_Character;
		After_CR : Boolean := False;
	begin
		loop
			Current := Wide_Wide_Console.Get;
			exit when After_CR and then Current = LF;
			if Current = CR then
				After_CR := True;
			else
				After_CR := False;
			end if;
		end loop;
		return Result;
	exception
		when others => return Result; --This probably needs to be raised only in response to specific exceptions
	end Get_Line;

	function Get_Line return Wide_Wide_String is
	begin
		return To_Wide_Wide_String(Wide_Wide_Console.Get_Line);
	end Get_Line;

	procedure Put(Content : in Wide_Wide_Character) is
		I : Integer;
	begin
		I := fputwc(Content'Enum_Rep, stdout);
	end Put;

	procedure Put(Content : in Wide_Wide_String) is
		I : Integer;
	begin
		for C of Content loop
			I := fputwc(C'Enum_Rep, stdout);
		end loop;
	end Put;

	procedure Put(Content : in Unbounded_Wide_Wide_String) is
		I : Integer;
	begin
		for C in 1..Length(Content) loop
			I := fputwc(Element(Content, C)'Enum_Rep, stdout);
		end loop;
	end Put;

	procedure Put(Content : in Wide_Wide_String; Modifier : in Font_Modifier) is
	begin
		Set_Modifier(Modifier);
		Wide_Wide_Console.Put(Content);
		Clear_Modifier;
	end Put;

	procedure Put(Content : in Unbounded_Wide_Wide_String; Modifier : in Font_Modifier) is
	begin
		Set_Modifier(Modifier);
		Wide_Wide_Console.Put(Content);
		Clear_Modifier;
	end Put;

	procedure Put(Content : in Wide_Wide_String; Foreground : in Color'Class) is
	begin
		Set_Foreground(Foreground);
		Wide_Wide_Console.Put(Content);
		Clear_Foreground;
	end Put;

	procedure Put(Content : in Unbounded_Wide_Wide_String; Foreground : in Color'Class) is
	begin
		Set_Foreground(Foreground);
		Wide_Wide_Console.Put(Content);
		Clear_Foreground;
	end Put;

	procedure New_Line is
	begin
		Wide_Wide_Console.Put(CR & LF);
	end New_Line;

	procedure Put_Line(Content : in Wide_Wide_String) is
	begin
		Wide_Wide_Console.Put(Content);
		Wide_Wide_Console.New_Line;
	end Put_Line;

	procedure Put_Line(Content : in Unbounded_Wide_Wide_String) is
	begin
		Wide_Wide_Console.Put(Content);
		Wide_Wide_Console.New_Line;
	end Put_Line;

	procedure Put_Line(Content : in Wide_Wide_String; Modifier : in Font_Modifier) is
	begin
		Wide_Wide_Console.Put(Content, Modifier);
		Wide_Wide_Console.New_Line;
	end Put_Line;

	procedure Put_Line(Content : in Unbounded_Wide_Wide_String; Modifier : in Font_Modifier) is
	begin
		Wide_Wide_Console.Put(Content, Modifier);
		Wide_Wide_Console.New_Line;
	end Put_Line;

	procedure Put_Line(Content : in Wide_Wide_String; Foreground : in Color'Class) is
	begin
		Set_Foreground(Foreground);
		Wide_Wide_Console.Put_Line(Content);
		Clear_Foreground;
	end Put_Line;

	procedure Put_Line(Content : in Unbounded_Wide_Wide_String; Foreground : in Color'Class) is
	begin
		Set_Foreground(Foreground);
		Wide_Wide_Console.Put_Line(Content);
		Clear_Foreground;
	end Put_Line;

	------------
	-- Cursor --
	------------

	procedure Move_Cursor(Direction : in Direction_Type; Amount : in Positive := 1) is
	begin
		pragma Unreferenced(Direction);
		pragma Unreferenced(Amount);
		null;
	end Move_Cursor;

	procedure Move_Cursor(X, Y : Positive := 1) is
	begin
		pragma Unreferenced(X);
		pragma Unreferenced(Y);
		null;
	end Move_Cursor;

	procedure Save_Cursor is
	begin
		null;
	end Save_Cursor;

	procedure Restore_Cursor is
	begin
		null;
	end Restore_Cursor;

	----------
	-- Misc --
	----------

	procedure Bell is
	begin
		Wide_Wide_Console.Put(BEL);
	end;

begin
	Set_Mode(fileno(stdin), u8text);
	Set_Mode(fileno(stdout), u8text);
	Set_Mode(fileno(stderr), u8text);
end Wide_Wide_Console;