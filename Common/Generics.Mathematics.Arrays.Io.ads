package Generics.Mathematics.Arrays.IO is
--@Description Provides generic input/output operations for Mathematics.Arrays
--@Version 1.0

	-------------------
	-- Integer Array --
	-------------------

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Array_Image(Value : Integer_Array_Type) return String with Inline, Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Array_Wide_Image(Value : Integer_Array_Type) return Wide_String with Inline, Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Array_Wide_Wide_Image(Value : Integer_Array_Type) return Wide_Wide_String with Inline, Pure_Function;

	-------------------
	-- Modular Array --
	-------------------

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Array_Image(Value : Modular_Array_Type) return String with Inline, Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Array_Wide_Image(Value : Modular_Array_Type) return Wide_String with Inline, Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Array_Wide_Wide_Image(Value : Modular_Array_Type) return Wide_Wide_String with Inline, Pure_Function;

	-------------------
	-- Fixed Array --
	-------------------

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Array_Image(Value : Fixed_Array_Type) return String with Inline, Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Array_Wide_Image(Value : Fixed_Array_Type) return Wide_String with Inline, Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Array_Wide_Wide_Image(Value : Fixed_Array_Type) return Wide_Wide_String with Inline, Pure_Function;

	-------------------
	-- Decimal Array --
	-------------------

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Array_Image(Value : Decimal_Array_Type) return String with Inline, Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Array_Wide_Image(Value : Decimal_Array_Type) return Wide_String with Inline, Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Array_Wide_Wide_Image(Value : Decimal_Array_Type) return Wide_Wide_String with Inline, Pure_Function;

	-------------------
	-- Float Array --
	-------------------

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Array_Image(Value : Float_Array_Type) return String with Inline, Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Array_Wide_Image(Value : Float_Array_Type) return Wide_String with Inline, Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Array_Wide_Wide_Image(Value : Float_Array_Type) return Wide_Wide_String with Inline, Pure_Function;

end Generics.Mathematics.Arrays.IO;
