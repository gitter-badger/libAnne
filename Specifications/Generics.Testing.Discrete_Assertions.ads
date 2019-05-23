generic
	type Discrete_Type is (<>);
package Generics.Testing.Discrete_Assertions is
--@description Provides assertions for integer types
--@version 1.0.0

	type Asserter(Statement_Length : Positive) is tagged private;

	function Assert(Statement : Wide_Wide_String; Object : Discrete_Type) return Asserter;

	function Equal(Self : Asserter; Value : Discrete_Type) return Asserter;

	procedure Equal(Self : Asserter; Value : Discrete_Type);

	function Not_Equal(Self : Asserter; Value : Discrete_Type) return Asserter;

	procedure Not_Equal(Self : Asserter; Value : Discrete_Type);

	function Greater(Self : Asserter; Value : Discrete_Type) return Asserter;

	procedure Greater(Self : Asserter; Value : Discrete_Type);

	function Lesser(Self : Asserter; Value : Discrete_Type) return Asserter;

	procedure Lesser(Self : Asserter; Value : Discrete_Type);

private
	type Asserter(Statement_Length : Positive) is tagged record
		Object : Discrete_Type;
		Statement : Wide_Wide_String(1 .. Statement_Length);
	end record;

end Generics.Testing.Discrete_Assertions;