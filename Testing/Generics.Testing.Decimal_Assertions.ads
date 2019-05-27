generic
	type Decimal_Type is digits <>;
package Generics.Testing.Decimal_Assertions is
--@description Provides assertions for decimal types
--@version 1.0.0

	type Asserter(Statement_Length : Positive) is tagged private;

	function Assert(Statement : Wide_Wide_String; Object : Decimal_Type) return Asserter;

	function Assert(Statement : Wide_Wide_String; Object : Decimal_Type; Tolerance : Decimal_Type) return Asserter;

	function Equal(Self : Asserter; Value : Decimal_Type) return Asserter;

	procedure Equal(Self : Asserter; Value : Decimal_Type);

	function Not_Equal(Self : Asserter; Value : Decimal_Type) return Asserter;

	procedure Not_Equal(Self : Asserter; Value : Decimal_Type);

	function Greater(Self : Asserter; Value : Decimal_Type) return Asserter;

	procedure Greater(Self : Asserter; Value : Decimal_Type);

	function Lesser(Self : Asserter; Value : Decimal_Type) return Asserter;

	procedure Lesser(Self : Asserter; Value : Decimal_Type);

private
	type Asserter(Statement_Length : Positive) is tagged record
		Object : Decimal_Type;
		Tolerance : Decimal_Type;
		Statement : Wide_Wide_String(1 .. Statement_Length);
	end record;

end Generics.Testing.Decimal_Assertions;