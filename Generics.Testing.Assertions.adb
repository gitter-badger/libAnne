with Ada.Wide_Wide_Text_IO;
use Ada.Wide_Wide_Text_IO;

package body Generics.Testing.Assertions is

	function Assert(Statement : Wide_Wide_String; Object : aliased T) return Asserter is
	begin
		return Asserter'(Statement_Length => Statement'Length, Statement => Statement, Object => Object'Access);
	end Assert;

	function Equal(Self : Asserter; Value : T) return Asserter is
		Result : Asserter := Self;
	begin
		if Result.Object.all /= Value then
			Put_Line(" ❌  " & Self.Statement & " → " & Wide_Wide_Image(Self.Object.all) & " = " & Wide_Wide_Image(Value));
		end if;
		return Result;
	end Equal;

	procedure Equal(Self : Asserter; Value : T) is
		Result : Asserter := Self.Equal(Value);
	begin
		null;
	end Equal;

	function Not_Equal(Self : Asserter; Value : T) return Asserter is
		Result : Asserter := Self;
	begin
		if Result.Object.all = Value then
			Put_Line(" ❌  " & Self.Statement & " → " & Wide_Wide_Image(Self.Object.all) & " ≠ " & Wide_Wide_Image(Value));
		end if;
		return Result;
	end Not_Equal;

	procedure Not_Equal(Self : Asserter; Value : T) is
		Result : Asserter := Self.Not_Equal(Value);
	begin
		null;
	end Not_Equal;

end Generics.Testing.Assertions;