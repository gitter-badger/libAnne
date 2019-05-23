with Ada.Wide_Wide_Text_IO;
use Ada.Wide_Wide_Text_IO;

package body Generics.Testing.Float_Assertions is

	function Assert(Statement : Wide_Wide_String; Object : Float_Type) return Asserter is
	begin
		return Asserter'(Statement_Length => Statement'Length, Statement => Statement, Object => Object, Tolerance => <>);
	end Assert;

	function Assert(Statement : Wide_Wide_String; Object : Float_Type; Tolerance : Float_Type) return Asserter is
	begin
		return Asserter'(Statement_Length => Statement'Length, Statement => Statement, Object => Object, Tolerance => Tolerance);
	end Assert;

	function Equal(Self : Asserter; Value : Float_Type) return Asserter is
		Result : Asserter := Self;
	begin
		if (Value - Result.Tolerance) > Result.Object or Result.Object > (Value + Result.Tolerance) then
			Put_Line(" ❌  " & Self.Statement & " → " & Float_Type'Wide_Wide_Image(Self.Object) & " = " & Float_Type'Wide_Wide_Image(Value) & " ± " & Float_Type'Wide_Wide_Image(Result.Tolerance));
		end if;
		return Result;
	end Equal;

	procedure Equal(Self : Asserter; Value : Float_Type) is
		Result : Asserter := Self.Equal(Value);
	begin
		null;
	end Equal;

	function Not_Equal(Self : Asserter; Value : Float_Type) return Asserter is
		Result : Asserter := Self;
	begin
		if (Value - Result.Tolerance) <= Result.Object and Result.Object <= (Value + Result.Tolerance) then
			Put_Line(" ❌  " & Self.Statement & " → " & Float_Type'Wide_Wide_Image(Self.Object) & " ≠ " & Float_Type'Wide_Wide_Image(Value) & " ± " & Float_Type'Wide_Wide_Image(Result.Tolerance));
		end if;
		return Result;
	end Not_Equal;

	procedure Not_Equal(Self : Asserter; Value : Float_Type) is
		Result : Asserter := Self.Equal(Value);
	begin
		null;
	end Not_Equal;

	function Greater(Self : Asserter; Value : Float_Type) return Asserter is
		Result : Asserter := Self;
	begin
		if Result.Object <= (Value + Result.Tolerance) then
			Put_Line(" ❌  " & Self.Statement & " → " & Float_Type'Wide_Wide_Image(Self.Object) & " > " & Float_Type'Wide_Wide_Image(Value) & " ± " & Float_Type'Wide_Wide_Image(Result.Tolerance));
		end if;
		return Result;
	end Greater;

	procedure Greater(Self : Asserter; Value : Float_Type) is
		Result : Asserter := Self.Greater(Value);
	begin
		null;
	end Greater;

	function Lesser(Self : Asserter; Value : Float_Type) return Asserter is
		Result : Asserter := Self;
	begin
		if Result.Object >= (Value - Result.Tolerance) then
			Put_Line(" ❌  " & Self.Statement & " → " & Float_Type'Wide_Wide_Image(Self.Object) & " < " & Float_Type'Wide_Wide_Image(Value) & " ± " & Float_Type'Wide_Wide_Image(Result.Tolerance));
		end if;
		return Result;
	end Lesser;

	procedure Lesser(Self : Asserter; Value : Float_Type) is
		Result : Asserter := Self.Lesser(Value);
	begin
		null;
	end Lesser;

end Generics.Testing.Float_Assertions;