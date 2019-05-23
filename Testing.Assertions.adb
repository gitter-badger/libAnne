with Ada.Characters.Conversions, Ada.Wide_Wide_Text_IO;
use Ada.Characters.Conversions, Ada.Wide_Wide_Text_IO;

package body Testing.Assertions is

	------------
	-- String --
	------------

	function Assert(Statement : Wide_Wide_String; Object : String) return String_Asserter is
	begin
		return String_Asserter'(Statement_Length => Statement'Length, Statement => Statement, String_Length => Object'Length, Object => Object);
	end Assert;

	function Equal(Self : String_Asserter; Value : String) return String_Asserter is
		Result : String_Asserter := Self;
	begin
		if Result.Object /= Value then
			Put_Line(" ❌  " & Self.Statement & " → " & To_Wide_Wide_String(Self.Object) & " = " & To_Wide_Wide_String(Value));
		end if;
		return Result;	
	end Equal;

	procedure Equal(Self : String_Asserter; Value : String) is
		Result : String_Asserter := Self.Equal(Value);
	begin
		null;
	end Equal;

	function Not_Equal(Self : String_Asserter; Value : String) return String_Asserter is
		Result : String_Asserter := Self.Equal(Value);
	begin
		if Result.Object = Value then
			Put_Line(" ❌  " & Self.Statement & " → " & To_Wide_Wide_String(Self.Object) & " ≠ " & To_Wide_Wide_String(Value));
		end if;
		return Result;
	end Not_Equal;

	procedure Not_Equal(Self : String_Asserter; Value : String) is
		Result : String_Asserter := Self.Equal(Value);
	begin
		null;
	end Not_Equal;

	-----------------
	-- Wide String --
	-----------------

	function Assert(Statement : Wide_Wide_String; Object : Wide_String) return Wide_String_Asserter is
	begin
		return Wide_String_Asserter'(Statement_Length => Statement'Length, Statement => Statement, String_Length => Object'Length, Object => Object);
	end Assert;	

	function Equal(Self : Wide_String_Asserter; Value : Wide_String) return Wide_String_Asserter is
		Result : Wide_String_Asserter := Self;
	begin
		if Result.Object /= Value then
			Put_Line(" ❌  " & Self.Statement & " → " & To_Wide_Wide_String(Self.Object) & " = " & To_Wide_Wide_String(Value));
		end if;
		return Result;	
	end Equal;

	procedure Equal(Self : Wide_String_Asserter; Value : Wide_String) is
		Result : Wide_String_Asserter := Self.Equal(Value);
	begin
		null;
	end Equal;

	function Not_Equal(Self : Wide_String_Asserter; Value : Wide_String) return Wide_String_Asserter is
		Result : Wide_String_Asserter := Self.Equal(Value);
	begin
		if Result.Object = Value then
			Put_Line(" ❌  " & Self.Statement & " → " & To_Wide_Wide_String(Self.Object) & " ≠ " & To_Wide_Wide_String(Value));
		end if;
		return Result;
	end Not_Equal;

	procedure Not_Equal(Self : Wide_String_Asserter; Value : Wide_String) is
		Result : Wide_String_Asserter := Self.Equal(Value);
	begin
		null;
	end Not_Equal;

	----------------------
	-- Wide Wide String --
	----------------------

	function Assert(Statement : Wide_Wide_String; Object : Wide_Wide_String) return Wide_Wide_String_Asserter is
	begin
		return Wide_Wide_String_Asserter'(Statement_Length => Statement'Length, Statement => Statement, String_Length => Object'Length, Object => Object);
	end Assert;

	function Equal(Self : Wide_Wide_String_Asserter; Value : Wide_Wide_String) return Wide_Wide_String_Asserter is
		Result : Wide_Wide_String_Asserter := Self;
	begin
		if Result.Object /= Value then
			Put_Line(" ❌  " & Self.Statement & " → " & Self.Object & " = " & Value);
		end if;
		return Result;	
	end Equal;

	procedure Equal(Self : Wide_Wide_String_Asserter; Value : Wide_Wide_String) is
		Result : Wide_Wide_String_Asserter := Self.Equal(Value);
	begin
		null;
	end Equal;

	function Not_Equal(Self : Wide_Wide_String_Asserter; Value : Wide_Wide_String) return Wide_Wide_String_Asserter is
		Result : Wide_Wide_String_Asserter := Self.Equal(Value);
	begin
		if Result.Object = Value then
			Put_Line(" ❌  " & Self.Statement & " → " & Self.Object & " ≠ " & Value);
		end if;
		return Result;
	end Not_Equal;

	procedure Not_Equal(Self : Wide_Wide_String_Asserter; Value : Wide_Wide_String) is
		Result : Wide_Wide_String_Asserter := Self.Equal(Value);
	begin
		null;
	end Not_Equal;

end Testing.Assertions;