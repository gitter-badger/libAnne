generic
	type Float_Type is digits <>;
package Generics.Testing.Float_Assertions is
--@description Provides assertions for float types
--@version 1.0.0

	type Asserter(Statement_Length : Positive) is tagged private;

	function Assert(Statement : Wide_Wide_String; Object : Float_Type) return Asserter;

	function Assert(Statement : Wide_Wide_String; Object : Float_Type; Tolerance : Float_Type) return Asserter;

	function Equal(Self : Asserter; Value : Float_Type) return Asserter;

	procedure Equal(Self : Asserter; Value : Float_Type);

	function Not_Equal(Self : Asserter; Value : Float_Type) return Asserter;

	procedure Not_Equal(Self : Asserter; Value : Float_Type);

	function Greater(Self : Asserter; Value : Float_Type) return Asserter;

	procedure Greater(Self : Asserter; Value : Float_Type);

	function Lesser(Self : Asserter; Value : Float_Type) return Asserter;

	procedure Lesser(Self : Asserter; Value : Float_Type);

private
	type Asserter(Statement_Length : Positive) is tagged record
		Object : Float_Type;
		Tolerance : Float_Type;
		Statement : Wide_Wide_String(1 .. Statement_Length);
	end record;

end Generics.Testing.Float_Assertions;