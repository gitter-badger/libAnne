package Generics.Numerics with Pure is
--@description Implements generic functions used in Numerics
--@version 1.0

	-----------
	-- Fixed --
	-----------

	generic
		type Fixed_Type is delta <>;
	function Fixed_Truncate(Value : Fixed_Type) return Fixed_Type with Inline, Pure_Function;

	generic
		type Fixed_Type is delta <>;
	function Fixed_Ceiling(Value : Fixed_Type) return Fixed_Type with Inline, Pure_Function;

	generic
		type Fixed_Type is delta <>;
	function Fixed_Floor(Value : Fixed_Type) return Fixed_Type with Inline, Pure_Function;

	generic
		type Fixed_Type is delta <>;
	function Fixed_Modulus(Left : Fixed_Type; Right : Fixed_Type) return Fixed_Type with Inline, Pure_Function;

	generic
		type Fixed_Type is delta <>;
	function Fixed_Remainder(Left : Fixed_Type; Right : Fixed_Type) return Fixed_Type with Inline, Pure_Function;

	-------------
	-- Decimal --
	-------------

	generic
		type Decimal_Type is delta <> digits <>;
	function Decimal_Truncate(Value : Decimal_Type) return Decimal_Type with Inline, Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
	function Decimal_Ceiling(Value : Decimal_Type) return Decimal_Type with Inline, Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
	function Decimal_Floor(Value : Decimal_Type) return Decimal_Type with Inline, Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
	function Decimal_Modulus(Left : Decimal_Type; Right : Decimal_Type) return Decimal_Type with Inline, Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
	function Decimal_Remainder(Left : Decimal_Type; Right : Decimal_Type) return Decimal_Type with Inline, Pure_Function;

	-----------
	-- Float --
	-----------

	generic
		type Float_Type is digits <>;
	function Float_Truncate(Value : Float_Type) return Float_Type with Inline, Pure_Function;

	generic
		type Float_Type is digits <>;
	function Float_Ceiling(Value : Float_Type) return Float_Type with Inline, Pure_Function;

	generic
		type Float_Type is digits <>;
	function Float_Floor(Value : Float_Type) return Float_Type with Inline, Pure_Function;

	generic
		type Float_Type is digits <>;
	function Float_Modulus(Left : Float_Type; Right : Float_Type) return Float_Type with Inline, Pure_Function;

	generic
		type Float_Type is digits <>;
	function Float_Remainder(Left : Float_Type; Right : Float_Type) return Float_Type with Inline, Pure_Function;

end Generics.Numerics;
