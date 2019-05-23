generic
	type T(<>) is limited private;
	with function "="(Left : T; Right : T) return Boolean is <>;
	with function Wide_Wide_Image(Self : T) return Wide_Wide_String is <>;
package Generics.Testing.Assertions is
--@description Provides assertions for indefinite limited types
--@version 1.0.0

	type Asserter(Statement_Length : Positive) is tagged private;

	function Assert(Statement : Wide_Wide_String; Object : aliased T) return Asserter;

	function Equal(Self : Asserter; Value : T) return Asserter;

	procedure Equal(Self : Asserter; Value : T);

	function Not_Equal(Self : Asserter; Value : T) return Asserter;

	procedure Not_Equal(Self : Asserter; Value : T);

private
	type Asserter(Statement_Length : Positive) is tagged record
		Object : access constant T;
		Statement : Wide_Wide_String(1 .. Statement_Length);
	end record;

end Generics.Testing.Assertions;