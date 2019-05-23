with Numerics;
use Numerics;

package body Generics.Mathematics.Percents is

	function Add_Integer_Percent(Left : Integer_Type; Right : Percent_Type) return Integer_Type is
	begin
		return Left + Integer_Type(Long_Fixed(Left) * Long_Fixed(Right / 100.0));
	end Add_Integer_Percent;

	function Subtract_Integer_Percent(Left : Integer_Type; Right : Percent_Type) return Integer_Type is
	begin
		return Left - Integer_Type(Long_Fixed(Left) * Long_Fixed(Right / 100.0));
	end Subtract_Integer_Percent;

	function Add_Fixed_Percent(Left : Fixed_Type; Right : Percent_Type) return Fixed_Type is
	begin
		return Left + Fixed_Type(Long_Fixed(Left) * Long_Fixed(Right / 100.0));
	end Add_Fixed_Percent;

	function Subtract_Fixed_Percent(Left : Fixed_Type; Right : Percent_Type) return Fixed_Type is
	begin
		return Left - Fixed_Type(Long_Fixed(Left) * Long_Fixed(Right / 100.0));
	end Subtract_Fixed_Percent;

	function Add_Decimal_Percent(Left : Decimal_Type; Right : Percent_Type) return Decimal_Type is
	begin
		return Left + Decimal_Type(Long_Fixed(Left) * Long_Fixed(Right / 100.0));
	end Add_Decimal_Percent;

	function Subtract_Decimal_Percent(Left : Decimal_Type; Right : Percent_Type) return Decimal_Type is
	begin
		return Left - Decimal_Type(Long_Fixed(Left) * Long_Fixed(Right / 100.0));
	end Subtract_Decimal_Percent;

	function Add_Float_Percent(Left : Float_Type; Right : Percent_Type) return Float_Type is
	begin
		return Left + Float_Type(Long_Fixed(Left) * Long_Fixed(Right / 100.0));
	end Add_Float_Percent;

	function Subtract_Float_Percent(Left : Float_Type; Right : Percent_Type) return Float_Type is
	begin
		return Left - Float_Type(Long_Fixed(Left) * Long_Fixed(Right / 100.0));
	end Subtract_Float_Percent;	
	
end Generics.Mathematics.Percents;
