with Ada.Wide_Wide_Text_IO;
use Ada.Wide_Wide_Text_IO;

package body Generics.Testing.Discrete_Assertions is

	function Assert(Statement : Wide_Wide_String; Object : Discrete_Type) return Asserter is
	begin
		return Asserter'(Statement_Length => Statement'Length, Statement => Statement, Object => Object);
	end Assert;

	function Equal(Self : Asserter; Value : Discrete_Type) return Asserter is
		Result : Asserter := Self;
	begin
		if Result.Object /= Value then
			Put_Line(" ❌  " & Self.Statement & " → " & Discrete_Type'Wide_Wide_Image(Self.Object) & " = " & Discrete_Type'Wide_Wide_Image(Value));
		end if;
		return Result;
	end Equal;

	procedure Equal(Self : Asserter; Value : Discrete_Type) is
		Result : Asserter := Self.Equal(Value);
	begin
		null;
	end Equal;

	function Not_Equal(Self : Asserter; Value : Discrete_Type) return Asserter is
		Result : Asserter := Self;
	begin
		if Result.Object = Value then
			Put_Line(" ❌  " & Self.Statement & " → " & Discrete_Type'Wide_Wide_Image(Self.Object) & " ≠ " & Discrete_Type'Wide_Wide_Image(Value));
		end if;
		return Result;
	end;

	procedure Not_Equal(Self : Asserter; Value : Discrete_Type) is
		Result : Asserter := Self.Not_Equal(Value);
	begin
		null;
	end Not_Equal;

	function Greater(Self : Asserter; Value : Discrete_Type) return Asserter is
		Result : Asserter := Self;
	begin
		if Result.Object <= Value then
			Put_Line(" ❌  " & Self.Statement & " → " & Discrete_Type'Wide_Wide_Image(Self.Object) & " > " & Discrete_Type'Wide_Wide_Image(Value));
		end if;
		return Result;
	end Greater;

	procedure Greater(Self : Asserter; Value : Discrete_Type) is
		Result : Asserter := Self.Greater(Value);
	begin
		null;
	end Greater;

	function Lesser(Self : Asserter; Value : Discrete_Type) return Asserter is
		Result : Asserter := Self;
	begin
		if Result.Object >= Value then
			Put_Line(" ❌  " & Self.Statement & " → " & Discrete_Type'Wide_Wide_Image(Self.Object) & " < " & Discrete_Type'Wide_Wide_Image(Value));
		end if;
		return Result;
	end Lesser;

	procedure Lesser(Self : Asserter; Value : Discrete_Type) is
		Result : Asserter := Self.Lesser(Value);
	begin
		null;
	end Lesser;


end Generics.Testing.Discrete_Assertions;