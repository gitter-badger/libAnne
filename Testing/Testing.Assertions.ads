with Generics.Testing.Discrete_Assertions;
with Generics.Testing.Fixed_Assertions;
with Generics.Testing.Float_Assertions;

package Testing.Assertions is
--@description Provides assertions for standard types
--@version 1.0.0

	-------------------------
	-- Short Short Integer --
	-------------------------

	package Short_Short_Integer_Assertions is new Generics.Testing.Discrete_Assertions(Short_Short_Integer);

	function Assert(Statement : Wide_Wide_String; Object : Short_Short_Integer) return Short_Short_Integer_Assertions.Asserter renames Short_Short_Integer_Assertions.Assert;

	function Equal(Self : Short_Short_Integer_Assertions.Asserter; Value : Short_Short_Integer) return Short_Short_Integer_Assertions.Asserter renames Short_Short_Integer_Assertions.Equal;

	procedure Equal(Self : Short_Short_Integer_Assertions.Asserter; Value : Short_Short_Integer) renames Short_Short_Integer_Assertions.Equal;

	function Not_Equal(Self : Short_Short_Integer_Assertions.Asserter; Value : Short_Short_Integer) return Short_Short_Integer_Assertions.Asserter renames Short_Short_Integer_Assertions.Equal;

	procedure Not_Equal(Self : Short_Short_Integer_Assertions.Asserter; Value : Short_Short_Integer) renames Short_Short_Integer_Assertions.Equal;

	function Greater(Self : Short_Short_Integer_Assertions.Asserter; Value : Short_Short_Integer) return Short_Short_Integer_Assertions.Asserter renames Short_Short_Integer_Assertions.Greater;

	procedure Greater(Self : Short_Short_Integer_Assertions.Asserter; Value : Short_Short_Integer) renames Short_Short_Integer_Assertions.Greater;

	function Lesser(Self : Short_Short_Integer_Assertions.Asserter; Value : Short_Short_Integer) return Short_Short_Integer_Assertions.Asserter renames Short_Short_Integer_Assertions.Lesser;

	procedure Lesser(Self : Short_Short_Integer_Assertions.Asserter; Value : Short_Short_Integer) renames Short_Short_Integer_Assertions.Lesser;

	-------------------
	-- Short Integer --
	-------------------

	package Short_Integer_Assertions is new Generics.Testing.Discrete_Assertions(Short_Integer);

	function Assert(Statement : Wide_Wide_String; Object : Short_Integer) return Short_Integer_Assertions.Asserter renames Short_Integer_Assertions.Assert;

	function Equal(Self : Short_Integer_Assertions.Asserter; Value : Short_Integer) return Short_Integer_Assertions.Asserter renames Short_Integer_Assertions.Equal;

	procedure Equal(Self : Short_Integer_Assertions.Asserter; Value : Short_Integer) renames Short_Integer_Assertions.Equal;

	function Not_Equal(Self : Short_Integer_Assertions.Asserter; Value : Short_Integer) return Short_Integer_Assertions.Asserter renames Short_Integer_Assertions.Equal;

	procedure Not_Equal(Self : Short_Integer_Assertions.Asserter; Value : Short_Integer) renames Short_Integer_Assertions.Equal;

	function Greater(Self : Short_Integer_Assertions.Asserter; Value : Short_Integer) return Short_Integer_Assertions.Asserter renames Short_Integer_Assertions.Greater;

	procedure Greater(Self : Short_Integer_Assertions.Asserter; Value : Short_Integer) renames Short_Integer_Assertions.Greater;

	function Lesser(Self : Short_Integer_Assertions.Asserter; Value : Short_Integer) return Short_Integer_Assertions.Asserter renames Short_Integer_Assertions.Lesser;

	procedure Lesser(Self : Short_Integer_Assertions.Asserter; Value : Short_Integer) renames Short_Integer_Assertions.Lesser;

	-------------
	-- Integer --
	-------------

	package Integer_Assertions is new Generics.Testing.Discrete_Assertions(Integer);

	function Assert(Statement : Wide_Wide_String; Object : Integer) return Integer_Assertions.Asserter renames Integer_Assertions.Assert;

	function Equal(Self : Integer_Assertions.Asserter; Value : Integer) return Integer_Assertions.Asserter renames Integer_Assertions.Equal;

	procedure Equal(Self : Integer_Assertions.Asserter; Value : Integer) renames Integer_Assertions.Equal;

	function Not_Equal(Self : Integer_Assertions.Asserter; Value : Integer) return Integer_Assertions.Asserter renames Integer_Assertions.Equal;

	procedure Not_Equal(Self : Integer_Assertions.Asserter; Value : Integer) renames Integer_Assertions.Equal;

	function Greater(Self : Integer_Assertions.Asserter; Value : Integer) return Integer_Assertions.Asserter renames Integer_Assertions.Greater;

	procedure Greater(Self : Integer_Assertions.Asserter; Value : Integer) renames Integer_Assertions.Greater;

	function Lesser(Self : Integer_Assertions.Asserter; Value : Integer) return Integer_Assertions.Asserter renames Integer_Assertions.Lesser;

	procedure Lesser(Self : Integer_Assertions.Asserter; Value : Integer) renames Integer_Assertions.Lesser;

	------------------
	-- Long Integer --
	------------------

	package Long_Integer_Assertions is new Generics.Testing.Discrete_Assertions(Long_Integer);

	function Assert(Statement : Wide_Wide_String; Object : Long_Integer) return Long_Integer_Assertions.Asserter renames Long_Integer_Assertions.Assert;

	function Equal(Self : Long_Integer_Assertions.Asserter; Value : Long_Integer) return Long_Integer_Assertions.Asserter renames Long_Integer_Assertions.Equal;

	procedure Equal(Self : Long_Integer_Assertions.Asserter; Value : Long_Integer) renames Long_Integer_Assertions.Equal;

	function Not_Equal(Self : Long_Integer_Assertions.Asserter; Value : Long_Integer) return Long_Integer_Assertions.Asserter renames Long_Integer_Assertions.Equal;

	procedure Not_Equal(Self : Long_Integer_Assertions.Asserter; Value : Long_Integer) renames Long_Integer_Assertions.Equal;

	function Greater(Self : Long_Integer_Assertions.Asserter; Value : Long_Integer) return Long_Integer_Assertions.Asserter renames Long_Integer_Assertions.Greater;

	procedure Greater(Self : Long_Integer_Assertions.Asserter; Value : Long_Integer) renames Long_Integer_Assertions.Greater;

	function Lesser(Self : Long_Integer_Assertions.Asserter; Value : Long_Integer) return Long_Integer_Assertions.Asserter renames Long_Integer_Assertions.Lesser;

	procedure Lesser(Self : Long_Integer_Assertions.Asserter; Value : Long_Integer) renames Long_Integer_Assertions.Lesser;

	-----------------------
	-- Long Long Integer --
	-----------------------

	package Long_Long_Integer_Assertions is new Generics.Testing.Discrete_Assertions(Long_Long_Integer);

	function Assert(Statement : Wide_Wide_String; Object : Long_Long_Integer) return Long_Long_Integer_Assertions.Asserter renames Long_Long_Integer_Assertions.Assert;

	function Equal(Self : Long_Long_Integer_Assertions.Asserter; Value : Long_Long_Integer) return Long_Long_Integer_Assertions.Asserter renames Long_Long_Integer_Assertions.Equal;

	procedure Equal(Self : Long_Long_Integer_Assertions.Asserter; Value : Long_Long_Integer) renames Long_Long_Integer_Assertions.Equal;

	function Not_Equal(Self : Long_Long_Integer_Assertions.Asserter; Value : Long_Long_Integer) return Long_Long_Integer_Assertions.Asserter renames Long_Long_Integer_Assertions.Not_Equal;

	procedure Not_Equal(Self : Long_Long_Integer_Assertions.Asserter; Value : Long_Long_Integer) renames Long_Long_Integer_Assertions.Not_Equal;

	function Greater(Self : Long_Long_Integer_Assertions.Asserter; Value : Long_Long_Integer) return Long_Long_Integer_Assertions.Asserter renames Long_Long_Integer_Assertions.Greater;

	procedure Greater(Self : Long_Long_Integer_Assertions.Asserter; Value : Long_Long_Integer) renames Long_Long_Integer_Assertions.Greater;

	function Lesser(Self : Long_Long_Integer_Assertions.Asserter; Value : Long_Long_Integer) return Long_Long_Integer_Assertions.Asserter renames Long_Long_Integer_Assertions.Lesser;

	procedure Lesser(Self : Long_Long_Integer_Assertions.Asserter; Value : Long_Long_Integer) renames Long_Long_Integer_Assertions.Lesser;

	-----------------
	-- Short Float --
	-----------------

	package Short_Float_Assertions is new Generics.Testing.Float_Assertions(Short_Float);

	function Assert(Statement : Wide_Wide_String; Object : Short_Float) return Short_Float_Assertions.Asserter renames Short_Float_Assertions.Assert;

	function Assert(Statement : Wide_Wide_String; Object : Short_Float; Tolerance : Short_Float) return Short_Float_Assertions.Asserter renames Short_Float_Assertions.Assert;

	function Equal(Self : Short_Float_Assertions.Asserter; Value : Short_Float) return Short_Float_Assertions.Asserter renames Short_Float_Assertions.Equal;

	procedure Equal(Self : Short_Float_Assertions.Asserter; Value : Short_Float) renames Short_Float_Assertions.Equal;

	function Not_Equal(Self : Short_Float_Assertions.Asserter; Value : Short_Float) return Short_Float_Assertions.Asserter renames Short_Float_Assertions.Not_Equal;

	procedure Not_Equal(Self : Short_Float_Assertions.Asserter; Value : Short_Float) renames Short_Float_Assertions.Not_Equal;

	function Greater(Self : Short_Float_Assertions.Asserter; Value : Short_Float) return Short_Float_Assertions.Asserter renames Short_Float_Assertions.Greater;

	procedure Greater(Self : Short_Float_Assertions.Asserter; Value : Short_Float) renames Short_Float_Assertions.Greater;

	function Lesser(Self : Short_Float_Assertions.Asserter; Value : Short_Float) return Short_Float_Assertions.Asserter renames Short_Float_Assertions.Lesser;

	procedure Lesser(Self : Short_Float_Assertions.Asserter; Value : Short_Float) renames Short_Float_Assertions.Lesser;

	-----------
	-- Float --
	-----------

	package Float_Assertions is new Generics.Testing.Float_Assertions(Float);

	function Assert(Statement : Wide_Wide_String; Object : Float) return Float_Assertions.Asserter renames Float_Assertions.Assert;

	function Assert(Statement : Wide_Wide_String; Object : Float; Tolerance : Float) return Float_Assertions.Asserter renames Float_Assertions.Assert;

	function Equal(Self : Float_Assertions.Asserter; Value : Float) return Float_Assertions.Asserter renames Float_Assertions.Equal;

	procedure Equal(Self : Float_Assertions.Asserter; Value : Float) renames Float_Assertions.Equal;

	function Not_Equal(Self : Float_Assertions.Asserter; Value : Float) return Float_Assertions.Asserter renames Float_Assertions.Not_Equal;

	procedure Not_Equal(Self : Float_Assertions.Asserter; Value : Float) renames Float_Assertions.Not_Equal;

	function Greater(Self : Float_Assertions.Asserter; Value : Float) return Float_Assertions.Asserter renames Float_Assertions.Greater;

	procedure Greater(Self : Float_Assertions.Asserter; Value : Float) renames Float_Assertions.Greater;

	function Lesser(Self : Float_Assertions.Asserter; Value : Float) return Float_Assertions.Asserter renames Float_Assertions.Lesser;

	procedure Lesser(Self : Float_Assertions.Asserter; Value : Float) renames Float_Assertions.Lesser;

	----------------
	-- Long Float --
	----------------

	package Long_Float_Assertions is new Generics.Testing.Float_Assertions(Long_Float);

	function Assert(Statement : Wide_Wide_String; Object : Long_Float) return Long_Float_Assertions.Asserter renames Long_Float_Assertions.Assert;

	function Assert(Statement : Wide_Wide_String; Object : Long_Float; Tolerance : Long_Float) return Long_Float_Assertions.Asserter renames Long_Float_Assertions.Assert;

	function Equal(Self : Long_Float_Assertions.Asserter; Value : Long_Float) return Long_Float_Assertions.Asserter renames Long_Float_Assertions.Equal;

	procedure Equal(Self : Long_Float_Assertions.Asserter; Value : Long_Float) renames Long_Float_Assertions.Equal;

	function Not_Equal(Self : Long_Float_Assertions.Asserter; Value : Long_Float) return Long_Float_Assertions.Asserter renames Long_Float_Assertions.Not_Equal;

	procedure Not_Equal(Self : Long_Float_Assertions.Asserter; Value : Long_Float) renames Long_Float_Assertions.Not_Equal;

	function Greater(Self : Long_Float_Assertions.Asserter; Value : Long_Float) return Long_Float_Assertions.Asserter renames Long_Float_Assertions.Greater;

	procedure Greater(Self : Long_Float_Assertions.Asserter; Value : Long_Float) renames Long_Float_Assertions.Greater;

	function Lesser(Self : Long_Float_Assertions.Asserter; Value : Long_Float) return Long_Float_Assertions.Asserter renames Long_Float_Assertions.Lesser;

	procedure Lesser(Self : Long_Float_Assertions.Asserter; Value : Long_Float) renames Long_Float_Assertions.Lesser;

	---------------------
	-- Long Long Float --
	---------------------

	package Long_Long_Float_Assertions is new Generics.Testing.Float_Assertions(Long_Long_Float);

	function Assert(Statement : Wide_Wide_String; Object : Long_Long_Float) return Long_Long_Float_Assertions.Asserter renames Long_Long_Float_Assertions.Assert;

	function Assert(Statement : Wide_Wide_String; Object : Long_Long_Float; Tolerance : Long_Long_Float) return Long_Long_Float_Assertions.Asserter renames Long_Long_Float_Assertions.Assert;

	function Equal(Self : Long_Long_Float_Assertions.Asserter; Value : Long_Long_Float) return Long_Long_Float_Assertions.Asserter renames Long_Long_Float_Assertions.Equal;

	procedure Equal(Self : Long_Long_Float_Assertions.Asserter; Value : Long_Long_Float) renames Long_Long_Float_Assertions.Equal;

	function Not_Equal(Self : Long_Long_Float_Assertions.Asserter; Value : Long_Long_Float) return Long_Long_Float_Assertions.Asserter renames Long_Long_Float_Assertions.Not_Equal;

	procedure Not_Equal(Self : Long_Long_Float_Assertions.Asserter; Value : Long_Long_Float) renames Long_Long_Float_Assertions.Not_Equal;

	function Greater(Self : Long_Long_Float_Assertions.Asserter; Value : Long_Long_Float) return Long_Long_Float_Assertions.Asserter renames Long_Long_Float_Assertions.Greater;

	procedure Greater(Self : Long_Long_Float_Assertions.Asserter; Value : Long_Long_Float) renames Long_Long_Float_Assertions.Greater;

	function Lesser(Self : Long_Long_Float_Assertions.Asserter; Value : Long_Long_Float) return Long_Long_Float_Assertions.Asserter renames Long_Long_Float_Assertions.Lesser;

	procedure Lesser(Self : Long_Long_Float_Assertions.Asserter; Value : Long_Long_Float) renames Long_Long_Float_Assertions.Lesser;

	--------------
	-- Duration --
	--------------

	package Duration_Assertions is new Generics.Testing.Fixed_Assertions(Duration);

	function Assert(Statement : Wide_Wide_String; Object : Duration) return Duration_Assertions.Asserter renames Duration_Assertions.Assert;

	function Assert(Statement : Wide_Wide_String; Object : Duration; Tolerance : Duration) return Duration_Assertions.Asserter renames Duration_Assertions.Assert;

	function Equal(Self : Duration_Assertions.Asserter; Value : Duration) return Duration_Assertions.Asserter renames Duration_Assertions.Equal;

	procedure Equal(Self : Duration_Assertions.Asserter; Value : Duration) renames Duration_Assertions.Equal;

	function Not_Equal(Self : Duration_Assertions.Asserter; Value : Duration) return Duration_Assertions.Asserter renames Duration_Assertions.Not_Equal;

	procedure Not_Equal(Self : Duration_Assertions.Asserter; Value : Duration) renames Duration_Assertions.Not_Equal;

	function Greater(Self : Duration_Assertions.Asserter; Value : Duration) return Duration_Assertions.Asserter renames Duration_Assertions.Greater;

	procedure Greater(Self : Duration_Assertions.Asserter; Value : Duration) renames Duration_Assertions.Greater;

	function Lesser(Self : Duration_Assertions.Asserter; Value : Duration) return Duration_Assertions.Asserter renames Duration_Assertions.Lesser;

	procedure Lesser(Self : Duration_Assertions.Asserter; Value : Duration) renames Duration_Assertions.Lesser;

	---------------
	-- Character --
	---------------

	package Character_Assertions is new Generics.Testing.Discrete_Assertions(Character);

	function Assert(Statement : Wide_Wide_String; Object : Character) return Character_Assertions.Asserter renames Character_Assertions.Assert;

	function Equal(Self : Character_Assertions.Asserter; Value : Character) return Character_Assertions.Asserter renames Character_Assertions.Equal;

	procedure Equal(Self : Character_Assertions.Asserter; Value : Character) renames Character_Assertions.Equal;

	function Not_Equal(Self : Character_Assertions.Asserter; Value : Character) return Character_Assertions.Asserter renames Character_Assertions.Not_Equal;

	procedure Not_Equal(Self : Character_Assertions.Asserter; Value : Character) renames Character_Assertions.Not_Equal;

	--------------------
	-- Wide Character --
	--------------------

	package Wide_Character_Assertions is new Generics.Testing.Discrete_Assertions(Wide_Character);

	function Assert(Statement : Wide_Wide_String; Object : Wide_Character) return Wide_Character_Assertions.Asserter renames Wide_Character_Assertions.Assert;

	function Equal(Self : Wide_Character_Assertions.Asserter; Value : Wide_Character) return Wide_Character_Assertions.Asserter renames Wide_Character_Assertions.Equal;

	procedure Equal(Self : Wide_Character_Assertions.Asserter; Value : Wide_Character) renames Wide_Character_Assertions.Equal;

	function Not_Equal(Self : Wide_Character_Assertions.Asserter; Value : Wide_Character) return Wide_Character_Assertions.Asserter renames Wide_Character_Assertions.Not_Equal;

	procedure Not_Equal(Self : Wide_Character_Assertions.Asserter; Value : Wide_Character) renames Wide_Character_Assertions.Not_Equal;

	-------------------------
	-- Wide Wide Character --
	-------------------------

	package Wide_Wide_Character_Assertions is new Generics.Testing.Discrete_Assertions(Wide_Wide_Character);

	function Assert(Statement : Wide_Wide_String; Object : Wide_Wide_Character) return Wide_Wide_Character_Assertions.Asserter renames Wide_Wide_Character_Assertions.Assert;

	function Equal(Self : Wide_Wide_Character_Assertions.Asserter; Value : Wide_Wide_Character) return Wide_Wide_Character_Assertions.Asserter renames Wide_Wide_Character_Assertions.Equal;

	procedure Equal(Self : Wide_Wide_Character_Assertions.Asserter; Value : Wide_Wide_Character) renames Wide_Wide_Character_Assertions.Equal;

	function Not_Equal(Self : Wide_Wide_Character_Assertions.Asserter; Value : Wide_Wide_Character) return Wide_Wide_Character_Assertions.Asserter renames Wide_Wide_Character_Assertions.Not_Equal;

	procedure Not_Equal(Self : Wide_Wide_Character_Assertions.Asserter; Value : Wide_Wide_Character) renames Wide_Wide_Character_Assertions.Not_Equal;

	------------
	-- String --
	------------

	type String_Asserter(Statement_Length : Positive; String_Length : Positive) is tagged private;

	function Assert(Statement : Wide_Wide_String; Object : String) return String_Asserter;

	function Equal(Self : String_Asserter; Value : String) return String_Asserter;

	procedure Equal(Self : String_Asserter; Value : String);

	function Not_Equal(Self : String_Asserter; Value : String) return String_Asserter;

	procedure Not_Equal(Self : String_Asserter; Value : String);

	-----------------
	-- Wide String --
	-----------------

	type Wide_String_Asserter(Statement_Length : Positive; String_Length : Positive) is tagged private;

	function Assert(Statement : Wide_Wide_String; Object : Wide_String) return Wide_String_Asserter;

	function Equal(Self : Wide_String_Asserter; Value : Wide_String) return Wide_String_Asserter;

	procedure Equal(Self : Wide_String_Asserter; Value : Wide_String);

	function Not_Equal(Self : Wide_String_Asserter; Value : Wide_String) return Wide_String_Asserter;

	procedure Not_Equal(Self : Wide_String_Asserter; Value : Wide_String);

	----------------------
	-- Wide Wide String --
	----------------------

	type Wide_Wide_String_Asserter(Statement_Length : Positive; String_Length : Positive) is tagged private;

	function Assert(Statement : Wide_Wide_String; Object : Wide_Wide_String) return Wide_Wide_String_Asserter;

	function Equal(Self : Wide_Wide_String_Asserter; Value : Wide_Wide_String) return Wide_Wide_String_Asserter;

	procedure Equal(Self : Wide_Wide_String_Asserter; Value : Wide_Wide_String);

	function Not_Equal(Self : Wide_Wide_String_Asserter; Value : Wide_Wide_String) return Wide_Wide_String_Asserter;

	procedure Not_Equal(Self : Wide_Wide_String_Asserter; Value : Wide_Wide_String);

private
	type String_Asserter(Statement_Length : Positive; String_Length : Positive) is tagged record
		Object : String(1 .. String_Length);
		Statement : Wide_Wide_String(1 .. Statement_Length);
	end record;

	type Wide_String_Asserter(Statement_Length : Positive; String_Length : Positive) is tagged record
		Object : Wide_String(1 .. String_Length);
		Statement : Wide_Wide_String(1 .. Statement_Length);
	end record;

	type Wide_Wide_String_Asserter(Statement_Length : Positive; String_Length : Positive) is tagged record
		Object : Wide_Wide_String(1 .. String_Length);
		Statement : Wide_Wide_String(1 .. Statement_Length);
	end record;

end Testing.Assertions;
