generic
	type Fixed_Type is delta <>;
package Generics.Testing.Fixed_Assertions is
--@description Provides assertions for float types
--@version 1.0.0

	type Asserter(Statement_Length : Positive) is tagged private;

	function Assert(Statement : Wide_Wide_String; Object : Fixed_Type) return Asserter;

	function Assert(Statement : Wide_Wide_String; Object : Fixed_Type; Tolerance : Fixed_Type) return Asserter;

	function Equal(Self : Asserter; Value : Fixed_Type) return Asserter;

	procedure Equal(Self : Asserter; Value : Fixed_Type);

	function Not_Equal(Self : Asserter; Value : Fixed_Type) return Asserter;

	procedure Not_Equal(Self : Asserter; Value : Fixed_Type);

	function Greater(Self : Asserter; Value : Fixed_Type) return Asserter;

	procedure Greater(Self : Asserter; Value : Fixed_Type);

	function Lesser(Self : Asserter; Value : Fixed_Type) return Asserter;

	procedure Lesser(Self : Asserter; Value : Fixed_Type);

private
	type Asserter(Statement_Length : Positive) is tagged record
		Object : Fixed_Type;
		Tolerance : Fixed_Type;
		Statement : Wide_Wide_String(1 .. Statement_Length);
	end record;

end Generics.Testing.Fixed_Assertions;