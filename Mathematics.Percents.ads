with Generics.Mathematics.Percents;
use Generics.Mathematics.Percents;

package Mathematics.Percents with Pure, Remote_Types is
--@Description Provides support for percents and percentage arithmetic
--@Version 1.0

	type Short_Short_Percent is delta 1.0 digits 4 range 0.0..100.0 with Size => Short_Short_Integer'Size;
	
	type Short_Percent is delta 0.01 digits 8 range 0.0..100.0 with Size => Short_Integer'Size;
	
	type Percent is delta 0.000_000_1 digits 12 range 0.0..100.0 with Size => Integer'Size;

	type Long_Percent is delta 0.000_000_1 digits 12 range 0.0..100.0 with Size => Long_Integer'Size;

	type Long_Long_Percent is delta 0.000_000_000_000_001 digits 18 range 0.0..100.0 with Size => Long_Long_Integer'Size;

	function "+" is new Add_Integer_Percent(Short_Short_Integer, Short_Short_Percent);
	function "+" is new Add_Integer_Percent(Short_Integer, Short_Percent);
	function "+" is new Add_Integer_Percent(Integer, Percent);
	function "+" is new Add_Integer_Percent(Long_Integer, Long_Percent);
	function "+" is new Add_Integer_Percent(Long_Long_Integer, Long_Long_Percent);

	function "-" is new Subtract_Integer_Percent(Short_Short_Integer, Short_Short_Percent);
	function "-" is new Subtract_Integer_Percent(Short_Integer, Short_Percent);
	function "-" is new Subtract_Integer_Percent(Integer, Percent);
	function "-" is new Subtract_Integer_Percent(Long_Integer, Long_Percent);
	function "-" is new Subtract_Integer_Percent(Long_Long_Integer, Long_Long_Percent);

	function "+" is new Add_Fixed_Percent(Short_Short_Fixed, Short_Short_Percent);
	function "+" is new Add_Fixed_Percent(Short_Fixed, Short_Percent);
	function "+" is new Add_Fixed_Percent(Fixed, Percent);
	function "+" is new Add_Fixed_Percent(Long_Fixed, Long_Percent);

	function "-" is new Subtract_Fixed_Percent(Short_Short_Fixed, Short_Short_Percent);
	function "-" is new Subtract_Fixed_Percent(Short_Fixed, Short_Percent);
	function "-" is new Subtract_Fixed_Percent(Fixed, Percent);
	function "-" is new Subtract_Fixed_Percent(Long_Fixed, Long_Percent);

	function "+" is new Add_Decimal_Percent(Short_Decimal, Short_Percent);
	function "+" is new Add_Decimal_Percent(Decimal, Percent);
	function "+" is new Add_Decimal_Percent(Long_Decimal, Long_Percent);
	function "+" is new Add_Decimal_Percent(Long_Long_Decimal, Long_Long_Percent);

	function "-" is new Subtract_Decimal_Percent(Short_Decimal, Short_Percent);
	function "-" is new Subtract_Decimal_Percent(Decimal, Percent);
	function "-" is new Subtract_Decimal_Percent(Long_Decimal, Long_Percent);
	function "-" is new Subtract_Decimal_Percent(Long_Long_Decimal, Long_Long_Percent);

	function "+" is new Add_Float_Percent(Short_Float, Short_Percent);
	function "+" is new Add_Float_Percent(Float, Percent);
	function "+" is new Add_Float_Percent(Long_Float, Long_Percent);
	function "+" is new Add_Float_Percent(Long_Long_Float, Long_Long_Percent);

	function "-" is new Subtract_Float_Percent(Short_Float, Short_Percent);
	function "-" is new Subtract_Float_Percent(Float, Percent);
	function "-" is new Subtract_Float_Percent(Long_Float, Long_Percent);
	function "-" is new Subtract_Float_Percent(Long_Long_Float, Long_Long_Percent);

end Mathematics.Percents;
