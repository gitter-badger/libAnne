package Generics.Mathematics.Percents with Pure is
--@Description Provides generic functions for Percents
--@Version 1.0

	generic
		type Integer_Type is range <>;
		type Percent_Type is delta <> digits <>;
	function Add_Integer_Percent(Left : Integer_Type; Right : Percent_Type) return Integer_Type;

	generic
		type Integer_Type is range <>;
		type Percent_Type is delta <> digits <>;
	function Subtract_Integer_Percent(Left : Integer_Type; Right : Percent_Type) return Integer_Type;

	generic
		type Fixed_Type is delta <>;
		type Percent_Type is delta <> digits <>;
	function Add_Fixed_Percent(Left : Fixed_Type; Right : Percent_Type) return Fixed_Type;

	generic
		type Fixed_Type is delta <>;
		type Percent_Type is delta <> digits <>;
	function Subtract_Fixed_Percent(Left : Fixed_Type; Right : Percent_Type) return Fixed_Type;

	generic
		type Decimal_Type is delta <> digits <>;
		type Percent_Type is delta <> digits <>;
	function Add_Decimal_Percent(Left : Decimal_Type; Right : Percent_Type) return Decimal_Type;

	generic
		type Decimal_Type is delta <> digits <>;
		type Percent_Type is delta <> digits <>;
	function Subtract_Decimal_Percent(Left : Decimal_Type; Right : Percent_Type) return Decimal_Type;

	generic
		type Float_Type is digits <>;
		type Percent_Type is delta <> digits <>;
	function Add_Float_Percent(Left : Float_Type; Right : Percent_Type) return Float_Type;

	generic
		type Float_Type is digits <>;
		type Percent_Type is delta <> digits <>;
	function Subtract_Float_Percent(Left : Float_Type; Right : Percent_Type) return Float_Type;

end Generics.Mathematics.Percents;
