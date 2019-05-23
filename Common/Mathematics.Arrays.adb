package body Mathematics.Arrays is

	-------------------------------
	-- Short Short Integer Array --
	-------------------------------

	function "+"(Value : Short_Short_Integer_Array) return Short_Short_Integer_Array is
		function Assert is new Integer_Assert_Array(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Short_Short_Integer_Array) return Short_Short_Integer_Array is
		function Negate is new Integer_Negate_Array(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Short_Short_Integer_Array) return Short_Short_Integer_Array is
		function Absolute_Value is new Integer_Absolute_Value_Array(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer_Array) return Short_Short_Integer_Array is
		function Add is new Integer_Add_Array_Array(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer) return Short_Short_Integer_Array is
		function Add is new Integer_Add_Array_Scalar(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Short_Integer; Right : Short_Short_Integer_Array) return Short_Short_Integer_Array is
		function Add is new Integer_Add_Scalar_Array(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer_Array) return Short_Short_Integer_Array is
		function Subtract is new Integer_Subtract_Array_Array(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer) return Short_Short_Integer_Array is
		function Subtract is new Integer_Subtract_Array_Scalar(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Short_Integer; Right : Short_Short_Integer_Array) return Short_Short_Integer_Array is
		function Subtract is new Integer_Subtract_Scalar_Array(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer_Array) return Short_Short_Integer_Array is
		function Multiply is new Integer_Multiply_Array_Array(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer) return Short_Short_Integer_Array is
		function Multiply is new Integer_Multiply_Array_Scalar(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Short_Integer; Right : Short_Short_Integer_Array) return Short_Short_Integer_Array is
		function Multiply is new Integer_Multiply_Scalar_Array(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer_Array) return Short_Short_Integer_Array is
		function Divide is new Integer_Divide_Array_Array(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer) return Short_Short_Integer_Array is
		function Divide is new Integer_Divide_Array_Scalar(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Short_Integer; Right : Short_Short_Integer_Array) return Short_Short_Integer_Array is
		function Divide is new Integer_Divide_Scalar_Array(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer_Array) return Short_Short_Integer_Array is
		function Remainder is new Integer_Remainder_Array_Array(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer) return Short_Short_Integer_Array is
		function Remainder is new Integer_Remainder_Array_Scalar(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Short_Integer; Right : Short_Short_Integer_Array) return Short_Short_Integer_Array is
		function Remainder is new Integer_Remainder_Scalar_Array(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer_Array) return Short_Short_Integer_Array is
		function Modulus is new Integer_Modulus_Array_Array(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer) return Short_Short_Integer_Array is
		function Modulus is new Integer_Modulus_Array_Scalar(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Short_Integer; Right : Short_Short_Integer_Array) return Short_Short_Integer_Array is
		function Modulus is new Integer_Modulus_Scalar_Array(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Short_Short_Integer_Array; Right : Short_Short_Integer_Array) return Boolean is
		function Equal is new Integer_Equal_Array_Array(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Short_Integer_Array; Right : Short_Short_Integer) return Boolean is
		function Equal is new Integer_Equal_Array_Scalar(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Short_Integer; Right : Short_Short_Integer_Array) return Boolean is
		function Equal is new Integer_Equal_Scalar_Array(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer_Array) return Boolean is
		function Lesser is new Integer_Lesser_Array_Array(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer) return Boolean is
		function Lesser is new Integer_Lesser_Array_Scalar(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Short_Integer; Right : Short_Short_Integer_Array) return Boolean is
		function Lesser is new Integer_Lesser_Scalar_Array(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer_Array) return Boolean is
		function Greater is new Integer_Greater_Array_Array(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer) return Boolean is
		function Greater is new Integer_Greater_Array_Scalar(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Short_Integer; Right : Short_Short_Integer_Array) return Boolean is
		function Greater is new Integer_Greater_Scalar_Array(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Short_Short_Integer_Array; Right : Short_Short_Integer_Array) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Array_Array(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Short_Integer_Array; Right : Short_Short_Integer) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Array_Scalar(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Short_Integer; Right : Short_Short_Integer_Array) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Scalar_Array(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Short_Short_Integer_Array; Right : Short_Short_Integer_Array) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Array_Array(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Short_Integer_Array; Right : Short_Short_Integer) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Array_Scalar(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Short_Integer; Right : Short_Short_Integer_Array) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Scalar_Array(Short_Short_Integer, Short_Short_Integer_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-------------------------
	-- Short Integer Array --
	-------------------------

	function "+"(Value : Short_Integer_Array) return Short_Integer_Array is
		function Assert is new Integer_Assert_Array(Short_Integer, Short_Integer_Array);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Short_Integer_Array) return Short_Integer_Array is
		function Negate is new Integer_Negate_Array(Short_Integer, Short_Integer_Array);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Short_Integer_Array) return Short_Integer_Array is
		function Absolute_Value is new Integer_Absolute_Value_Array(Short_Integer, Short_Integer_Array);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Short_Integer_Array; Right : Short_Integer_Array) return Short_Integer_Array is
		function Add is new Integer_Add_Array_Array(Short_Integer, Short_Integer_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Integer_Array; Right : Short_Integer) return Short_Integer_Array is
		function Add is new Integer_Add_Array_Scalar(Short_Integer, Short_Integer_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Integer; Right : Short_Integer_Array) return Short_Integer_Array is
		function Add is new Integer_Add_Scalar_Array(Short_Integer, Short_Integer_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Short_Integer_Array; Right : Short_Integer_Array) return Short_Integer_Array is
		function Subtract is new Integer_Subtract_Array_Array(Short_Integer, Short_Integer_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Integer_Array; Right : Short_Integer) return Short_Integer_Array is
		function Subtract is new Integer_Subtract_Array_Scalar(Short_Integer, Short_Integer_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Integer; Right : Short_Integer_Array) return Short_Integer_Array is
		function Subtract is new Integer_Subtract_Scalar_Array(Short_Integer, Short_Integer_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Short_Integer_Array; Right : Short_Integer_Array) return Short_Integer_Array is
		function Multiply is new Integer_Multiply_Array_Array(Short_Integer, Short_Integer_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Integer_Array; Right : Short_Integer) return Short_Integer_Array is
		function Multiply is new Integer_Multiply_Array_Scalar(Short_Integer, Short_Integer_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Integer; Right : Short_Integer_Array) return Short_Integer_Array is
		function Multiply is new Integer_Multiply_Scalar_Array(Short_Integer, Short_Integer_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Short_Integer_Array; Right : Short_Integer_Array) return Short_Integer_Array is
		function Divide is new Integer_Divide_Array_Array(Short_Integer, Short_Integer_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Integer_Array; Right : Short_Integer) return Short_Integer_Array is
		function Divide is new Integer_Divide_Array_Scalar(Short_Integer, Short_Integer_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Integer; Right : Short_Integer_Array) return Short_Integer_Array is
		function Divide is new Integer_Divide_Scalar_Array(Short_Integer, Short_Integer_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Short_Integer_Array; Right : Short_Integer_Array) return Short_Integer_Array is
		function Remainder is new Integer_Remainder_Array_Array(Short_Integer, Short_Integer_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Integer_Array; Right : Short_Integer) return Short_Integer_Array is
		function Remainder is new Integer_Remainder_Array_Scalar(Short_Integer, Short_Integer_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Integer; Right : Short_Integer_Array) return Short_Integer_Array is
		function Remainder is new Integer_Remainder_Scalar_Array(Short_Integer, Short_Integer_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Short_Integer_Array; Right : Short_Integer_Array) return Short_Integer_Array is
		function Modulus is new Integer_Modulus_Array_Array(Short_Integer, Short_Integer_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Integer_Array; Right : Short_Integer) return Short_Integer_Array is
		function Modulus is new Integer_Modulus_Array_Scalar(Short_Integer, Short_Integer_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Integer; Right : Short_Integer_Array) return Short_Integer_Array is
		function Modulus is new Integer_Modulus_Scalar_Array(Short_Integer, Short_Integer_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Short_Integer_Array; Right : Short_Integer_Array) return Boolean is
		function Equal is new Integer_Equal_Array_Array(Short_Integer, Short_Integer_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Integer_Array; Right : Short_Integer) return Boolean is
		function Equal is new Integer_Equal_Array_Scalar(Short_Integer, Short_Integer_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Integer; Right : Short_Integer_Array) return Boolean is
		function Equal is new Integer_Equal_Scalar_Array(Short_Integer, Short_Integer_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Short_Integer_Array; Right : Short_Integer_Array) return Boolean is
		function Lesser is new Integer_Lesser_Array_Array(Short_Integer, Short_Integer_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Integer_Array; Right : Short_Integer) return Boolean is
		function Lesser is new Integer_Lesser_Array_Scalar(Short_Integer, Short_Integer_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Integer; Right : Short_Integer_Array) return Boolean is
		function Lesser is new Integer_Lesser_Scalar_Array(Short_Integer, Short_Integer_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Short_Integer_Array; Right : Short_Integer_Array) return Boolean is
		function Greater is new Integer_Greater_Array_Array(Short_Integer, Short_Integer_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Integer_Array; Right : Short_Integer) return Boolean is
		function Greater is new Integer_Greater_Array_Scalar(Short_Integer, Short_Integer_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Integer; Right : Short_Integer_Array) return Boolean is
		function Greater is new Integer_Greater_Scalar_Array(Short_Integer, Short_Integer_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Short_Integer_Array; Right : Short_Integer_Array) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Array_Array(Short_Integer, Short_Integer_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Integer_Array; Right : Short_Integer) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Array_Scalar(Short_Integer, Short_Integer_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Integer; Right : Short_Integer_Array) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Scalar_Array(Short_Integer, Short_Integer_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Short_Integer_Array; Right : Short_Integer_Array) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Array_Array(Short_Integer, Short_Integer_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Integer_Array; Right : Short_Integer) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Array_Scalar(Short_Integer, Short_Integer_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Integer; Right : Short_Integer_Array) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Scalar_Array(Short_Integer, Short_Integer_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-------------------
	-- Integer Array --
	-------------------

	function "+"(Value : Integer_Array) return Integer_Array is
		function Assert is new Integer_Assert_Array(Integer, Integer_Array);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Integer_Array) return Integer_Array is
		function Negate is new Integer_Negate_Array(Integer, Integer_Array);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Integer_Array) return Integer_Array is
		function Absolute_Value is new Integer_Absolute_Value_Array(Integer, Integer_Array);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Integer_Array; Right : Integer_Array) return Integer_Array is
		function Add is new Integer_Add_Array_Array(Integer, Integer_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Integer_Array; Right : Integer) return Integer_Array is
		function Add is new Integer_Add_Array_Scalar(Integer, Integer_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Integer; Right : Integer_Array) return Integer_Array is
		function Add is new Integer_Add_Scalar_Array(Integer, Integer_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Integer_Array; Right : Integer_Array) return Integer_Array is
		function Subtract is new Integer_Subtract_Array_Array(Integer, Integer_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Integer_Array; Right : Integer) return Integer_Array is
		function Subtract is new Integer_Subtract_Array_Scalar(Integer, Integer_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Integer; Right : Integer_Array) return Integer_Array is
		function Subtract is new Integer_Subtract_Scalar_Array(Integer, Integer_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Integer_Array; Right : Integer_Array) return Integer_Array is
		function Multiply is new Integer_Multiply_Array_Array(Integer, Integer_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Integer_Array; Right : Integer) return Integer_Array is
		function Multiply is new Integer_Multiply_Array_Scalar(Integer, Integer_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Integer; Right : Integer_Array) return Integer_Array is
		function Multiply is new Integer_Multiply_Scalar_Array(Integer, Integer_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Integer_Array; Right : Integer_Array) return Integer_Array is
		function Divide is new Integer_Divide_Array_Array(Integer, Integer_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Integer_Array; Right : Integer) return Integer_Array is
		function Divide is new Integer_Divide_Array_Scalar(Integer, Integer_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Integer; Right : Integer_Array) return Integer_Array is
		function Divide is new Integer_Divide_Scalar_Array(Integer, Integer_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Integer_Array; Right : Integer_Array) return Integer_Array is
		function Remainder is new Integer_Remainder_Array_Array(Integer, Integer_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Integer_Array; Right : Integer) return Integer_Array is
		function Remainder is new Integer_Remainder_Array_Scalar(Integer, Integer_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Integer; Right : Integer_Array) return Integer_Array is
		function Remainder is new Integer_Remainder_Scalar_Array(Integer, Integer_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Integer_Array; Right : Integer_Array) return Integer_Array is
		function Modulus is new Integer_Modulus_Array_Array(Integer, Integer_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Integer_Array; Right : Integer) return Integer_Array is
		function Modulus is new Integer_Modulus_Array_Scalar(Integer, Integer_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Integer; Right : Integer_Array) return Integer_Array is
		function Modulus is new Integer_Modulus_Scalar_Array(Integer, Integer_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Integer_Array; Right : Integer_Array) return Boolean is
		function Equal is new Integer_Equal_Array_Array(Integer, Integer_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Integer_Array; Right : Integer) return Boolean is
		function Equal is new Integer_Equal_Array_Scalar(Integer, Integer_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Integer; Right : Integer_Array) return Boolean is
		function Equal is new Integer_Equal_Scalar_Array(Integer, Integer_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Integer_Array; Right : Integer_Array) return Boolean is
		function Lesser is new Integer_Lesser_Array_Array(Integer, Integer_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Integer_Array; Right : Integer) return Boolean is
		function Lesser is new Integer_Lesser_Array_Scalar(Integer, Integer_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Integer; Right : Integer_Array) return Boolean is
		function Lesser is new Integer_Lesser_Scalar_Array(Integer, Integer_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Integer_Array; Right : Integer_Array) return Boolean is
		function Greater is new Integer_Greater_Array_Array(Integer, Integer_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Integer_Array; Right : Integer) return Boolean is
		function Greater is new Integer_Greater_Array_Scalar(Integer, Integer_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Integer; Right : Integer_Array) return Boolean is
		function Greater is new Integer_Greater_Scalar_Array(Integer, Integer_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Integer_Array; Right : Integer_Array) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Array_Array(Integer, Integer_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Integer_Array; Right : Integer) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Array_Scalar(Integer, Integer_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Integer; Right : Integer_Array) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Scalar_Array(Integer, Integer_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Integer_Array; Right : Integer_Array) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Array_Array(Integer, Integer_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Integer_Array; Right : Integer) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Array_Scalar(Integer, Integer_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Integer; Right : Integer_Array) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Scalar_Array(Integer, Integer_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	------------------------
	-- Long Integer Array --
	------------------------

	function "+"(Value : Long_Integer_Array) return Long_Integer_Array is
		function Assert is new Integer_Assert_Array(Long_Integer, Long_Integer_Array);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Long_Integer_Array) return Long_Integer_Array is
		function Negate is new Integer_Negate_Array(Long_Integer, Long_Integer_Array);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Long_Integer_Array) return Long_Integer_Array is
		function Absolute_Value is new Integer_Absolute_Value_Array(Long_Integer, Long_Integer_Array);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Long_Integer_Array; Right : Long_Integer_Array) return Long_Integer_Array is
		function Add is new Integer_Add_Array_Array(Long_Integer, Long_Integer_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Integer_Array; Right : Long_Integer) return Long_Integer_Array is
		function Add is new Integer_Add_Array_Scalar(Long_Integer, Long_Integer_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Integer; Right : Long_Integer_Array) return Long_Integer_Array is
		function Add is new Integer_Add_Scalar_Array(Long_Integer, Long_Integer_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Long_Integer_Array; Right : Long_Integer_Array) return Long_Integer_Array is
		function Subtract is new Integer_Subtract_Array_Array(Long_Integer, Long_Integer_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Integer_Array; Right : Long_Integer) return Long_Integer_Array is
		function Subtract is new Integer_Subtract_Array_Scalar(Long_Integer, Long_Integer_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Integer; Right : Long_Integer_Array) return Long_Integer_Array is
		function Subtract is new Integer_Subtract_Scalar_Array(Long_Integer, Long_Integer_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Long_Integer_Array; Right : Long_Integer_Array) return Long_Integer_Array is
		function Multiply is new Integer_Multiply_Array_Array(Long_Integer, Long_Integer_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Integer_Array; Right : Long_Integer) return Long_Integer_Array is
		function Multiply is new Integer_Multiply_Array_Scalar(Long_Integer, Long_Integer_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Integer; Right : Long_Integer_Array) return Long_Integer_Array is
		function Multiply is new Integer_Multiply_Scalar_Array(Long_Integer, Long_Integer_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Long_Integer_Array; Right : Long_Integer_Array) return Long_Integer_Array is
		function Divide is new Integer_Divide_Array_Array(Long_Integer, Long_Integer_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Integer_Array; Right : Long_Integer) return Long_Integer_Array is
		function Divide is new Integer_Divide_Array_Scalar(Long_Integer, Long_Integer_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Integer; Right : Long_Integer_Array) return Long_Integer_Array is
		function Divide is new Integer_Divide_Scalar_Array(Long_Integer, Long_Integer_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Long_Integer_Array; Right : Long_Integer_Array) return Long_Integer_Array is
		function Remainder is new Integer_Remainder_Array_Array(Long_Integer, Long_Integer_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Integer_Array; Right : Long_Integer) return Long_Integer_Array is
		function Remainder is new Integer_Remainder_Array_Scalar(Long_Integer, Long_Integer_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Integer; Right : Long_Integer_Array) return Long_Integer_Array is
		function Remainder is new Integer_Remainder_Scalar_Array(Long_Integer, Long_Integer_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Long_Integer_Array; Right : Long_Integer_Array) return Long_Integer_Array is
		function Modulus is new Integer_Modulus_Array_Array(Long_Integer, Long_Integer_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Integer_Array; Right : Long_Integer) return Long_Integer_Array is
		function Modulus is new Integer_Modulus_Array_Scalar(Long_Integer, Long_Integer_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Integer; Right : Long_Integer_Array) return Long_Integer_Array is
		function Modulus is new Integer_Modulus_Scalar_Array(Long_Integer, Long_Integer_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Long_Integer_Array; Right : Long_Integer_Array) return Boolean is
		function Equal is new Integer_Equal_Array_Array(Long_Integer, Long_Integer_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Integer_Array; Right : Long_Integer) return Boolean is
		function Equal is new Integer_Equal_Array_Scalar(Long_Integer, Long_Integer_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Integer; Right : Long_Integer_Array) return Boolean is
		function Equal is new Integer_Equal_Scalar_Array(Long_Integer, Long_Integer_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Long_Integer_Array; Right : Long_Integer_Array) return Boolean is
		function Lesser is new Integer_Lesser_Array_Array(Long_Integer, Long_Integer_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Integer_Array; Right : Long_Integer) return Boolean is
		function Lesser is new Integer_Lesser_Array_Scalar(Long_Integer, Long_Integer_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Integer; Right : Long_Integer_Array) return Boolean is
		function Lesser is new Integer_Lesser_Scalar_Array(Long_Integer, Long_Integer_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Long_Integer_Array; Right : Long_Integer_Array) return Boolean is
		function Greater is new Integer_Greater_Array_Array(Long_Integer, Long_Integer_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Integer_Array; Right : Long_Integer) return Boolean is
		function Greater is new Integer_Greater_Array_Scalar(Long_Integer, Long_Integer_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Integer; Right : Long_Integer_Array) return Boolean is
		function Greater is new Integer_Greater_Scalar_Array(Long_Integer, Long_Integer_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Long_Integer_Array; Right : Long_Integer_Array) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Array_Array(Long_Integer, Long_Integer_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Integer_Array; Right : Long_Integer) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Array_Scalar(Long_Integer, Long_Integer_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Integer; Right : Long_Integer_Array) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Scalar_Array(Long_Integer, Long_Integer_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Long_Integer_Array; Right : Long_Integer_Array) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Array_Array(Long_Integer, Long_Integer_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Integer_Array; Right : Long_Integer) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Array_Scalar(Long_Integer, Long_Integer_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Integer; Right : Long_Integer_Array) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Scalar_Array(Long_Integer, Long_Integer_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-----------------------------
	-- Long Long Integer Array --
	-----------------------------

	function "+"(Value : Long_Long_Integer_Array) return Long_Long_Integer_Array is
		function Assert is new Integer_Assert_Array(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Long_Long_Integer_Array) return Long_Long_Integer_Array is
		function Negate is new Integer_Negate_Array(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Long_Long_Integer_Array) return Long_Long_Integer_Array is
		function Absolute_Value is new Integer_Absolute_Value_Array(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer_Array) return Long_Long_Integer_Array is
		function Add is new Integer_Add_Array_Array(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer) return Long_Long_Integer_Array is
		function Add is new Integer_Add_Array_Scalar(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Long_Integer; Right : Long_Long_Integer_Array) return Long_Long_Integer_Array is
		function Add is new Integer_Add_Scalar_Array(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer_Array) return Long_Long_Integer_Array is
		function Subtract is new Integer_Subtract_Array_Array(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer) return Long_Long_Integer_Array is
		function Subtract is new Integer_Subtract_Array_Scalar(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Long_Integer; Right : Long_Long_Integer_Array) return Long_Long_Integer_Array is
		function Subtract is new Integer_Subtract_Scalar_Array(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer_Array) return Long_Long_Integer_Array is
		function Multiply is new Integer_Multiply_Array_Array(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer) return Long_Long_Integer_Array is
		function Multiply is new Integer_Multiply_Array_Scalar(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Long_Integer; Right : Long_Long_Integer_Array) return Long_Long_Integer_Array is
		function Multiply is new Integer_Multiply_Scalar_Array(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer_Array) return Long_Long_Integer_Array is
		function Divide is new Integer_Divide_Array_Array(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer) return Long_Long_Integer_Array is
		function Divide is new Integer_Divide_Array_Scalar(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Long_Integer; Right : Long_Long_Integer_Array) return Long_Long_Integer_Array is
		function Divide is new Integer_Divide_Scalar_Array(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer_Array) return Long_Long_Integer_Array is
		function Remainder is new Integer_Remainder_Array_Array(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer) return Long_Long_Integer_Array is
		function Remainder is new Integer_Remainder_Array_Scalar(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Long_Integer; Right : Long_Long_Integer_Array) return Long_Long_Integer_Array is
		function Remainder is new Integer_Remainder_Scalar_Array(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer_Array) return Long_Long_Integer_Array is
		function Modulus is new Integer_Modulus_Array_Array(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer) return Long_Long_Integer_Array is
		function Modulus is new Integer_Modulus_Array_Scalar(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Long_Integer; Right : Long_Long_Integer_Array) return Long_Long_Integer_Array is
		function Modulus is new Integer_Modulus_Scalar_Array(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Long_Long_Integer_Array; Right : Long_Long_Integer_Array) return Boolean is
		function Equal is new Integer_Equal_Array_Array(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Long_Integer_Array; Right : Long_Long_Integer) return Boolean is
		function Equal is new Integer_Equal_Array_Scalar(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Long_Integer; Right : Long_Long_Integer_Array) return Boolean is
		function Equal is new Integer_Equal_Scalar_Array(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer_Array) return Boolean is
		function Lesser is new Integer_Lesser_Array_Array(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer) return Boolean is
		function Lesser is new Integer_Lesser_Array_Scalar(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Long_Integer; Right : Long_Long_Integer_Array) return Boolean is
		function Lesser is new Integer_Lesser_Scalar_Array(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer_Array) return Boolean is
		function Greater is new Integer_Greater_Array_Array(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer) return Boolean is
		function Greater is new Integer_Greater_Array_Scalar(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Long_Integer; Right : Long_Long_Integer_Array) return Boolean is
		function Greater is new Integer_Greater_Scalar_Array(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Long_Long_Integer_Array; Right : Long_Long_Integer_Array) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Array_Array(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Long_Integer_Array; Right : Long_Long_Integer) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Array_Scalar(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Long_Integer; Right : Long_Long_Integer_Array) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Scalar_Array(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Long_Long_Integer_Array; Right : Long_Long_Integer_Array) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Array_Array(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Long_Integer_Array; Right : Long_Long_Integer) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Array_Scalar(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Long_Integer; Right : Long_Long_Integer_Array) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Scalar_Array(Long_Long_Integer, Long_Long_Integer_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-------------------------------
	-- Short Short Modular Array --
	-------------------------------

	function "+"(Value : Short_Short_Modular_Array) return Short_Short_Modular_Array is
		function Assert is new Modular_Assert_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Assert(Value);
	end "+";

	function "abs"(Value : Short_Short_Modular_Array) return Short_Short_Modular_Array is
		function Absolute_Value is new Modular_Absolute_Value_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array is
		function Add is new Modular_Add_Array_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Short_Short_Modular_Array is
		function Add is new Modular_Add_Array_Scalar(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array is
		function Add is new Modular_Add_Scalar_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array is
		function Subtract is new Modular_Subtract_Array_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Short_Short_Modular_Array is
		function Subtract is new Modular_Subtract_Array_Scalar(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array is
		function Subtract is new Modular_Subtract_Scalar_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array is
		function Multiply is new Modular_Multiply_Array_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Short_Short_Modular_Array is
		function Multiply is new Modular_Multiply_Array_Scalar(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array is
		function Multiply is new Modular_Multiply_Scalar_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array is
		function Divide is new Modular_Divide_Array_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Short_Short_Modular_Array is
		function Divide is new Modular_Divide_Array_Scalar(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array is
		function Divide is new Modular_Divide_Scalar_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array is
		function Remainder is new Modular_Remainder_Array_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Short_Short_Modular_Array is
		function Remainder is new Modular_Remainder_Array_Scalar(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array is
		function Remainder is new Modular_Remainder_Scalar_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array is
		function Modulus is new Modular_Modulus_Array_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Short_Short_Modular_Array is
		function Modulus is new Modular_Modulus_Array_Scalar(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array is
		function Modulus is new Modular_Modulus_Scalar_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "not"(Value : Short_Short_Modular_Array) return Short_Short_Modular_Array is
		function "not" is new Modular_Not_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return not Value;
	end "not";

	function "and"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array is
		function "and" is new Modular_And_Array_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Left and Right;
	end "and";

	function "and"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Short_Short_Modular_Array is
		function "and" is new Modular_And_Array_Scalar(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Left and Right;
	end "and";

	function "and"(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array is
		function "and" is new Modular_And_Scalar_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Left and Right;
	end "and";

	function "or"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array is
		function "or" is new Modular_Or_Array_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Left or Right;
	end "or";

	function "or"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Short_Short_Modular_Array is
		function "or" is new Modular_Or_Array_Scalar(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Left or Right;
	end "or";

	function "or"(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array is
		function "or" is new Modular_Or_Scalar_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Left or Right;
	end "or";

	function "xor"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array is
		function "xor" is new Modular_Xor_Array_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Left xor Right;
	end "xor";

	function "xor"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Short_Short_Modular_Array is
		function "xor" is new Modular_Xor_Array_Scalar(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Left xor Right;
	end "xor";

	function "xor"(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array is
		function "xor" is new Modular_Xor_Scalar_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Left xor Right;
	end "xor";

	function "="(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Boolean is
		function Equal is new Modular_Equal_Array_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Boolean is
		function Equal is new Modular_Equal_Array_Scalar(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Boolean is
		function Equal is new Modular_Equal_Scalar_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Boolean is
		function Lesser is new Modular_Lesser_Array_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Boolean is
		function Lesser is new Modular_Lesser_Array_Scalar(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Boolean is
		function Lesser is new Modular_Lesser_Scalar_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Boolean is
		function Greater is new Modular_Greater_Array_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Boolean is
		function Greater is new Modular_Greater_Array_Scalar(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Boolean is
		function Greater is new Modular_Greater_Scalar_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Array_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Array_Scalar(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Scalar_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Array_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Array_Scalar(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Scalar_Array(Short_Short_Modular, Short_Short_Modular_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-------------------------
	-- Short Modular Array --
	-------------------------

	function "+"(Value : Short_Modular_Array) return Short_Modular_Array is
		function Assert is new Modular_Assert_Array(Short_Modular, Short_Modular_Array);
	begin
		return Assert(Value);
	end "+";

	function "abs"(Value : Short_Modular_Array) return Short_Modular_Array is
		function Absolute_Value is new Modular_Absolute_Value_Array(Short_Modular, Short_Modular_Array);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Short_Modular_Array; Right : Short_Modular_Array) return Short_Modular_Array is
		function Add is new Modular_Add_Array_Array(Short_Modular, Short_Modular_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Modular_Array; Right : Short_Modular) return Short_Modular_Array is
		function Add is new Modular_Add_Array_Scalar(Short_Modular, Short_Modular_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Modular; Right : Short_Modular_Array) return Short_Modular_Array is
		function Add is new Modular_Add_Scalar_Array(Short_Modular, Short_Modular_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Short_Modular_Array; Right : Short_Modular_Array) return Short_Modular_Array is
		function Subtract is new Modular_Subtract_Array_Array(Short_Modular, Short_Modular_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Modular_Array; Right : Short_Modular) return Short_Modular_Array is
		function Subtract is new Modular_Subtract_Array_Scalar(Short_Modular, Short_Modular_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Modular; Right : Short_Modular_Array) return Short_Modular_Array is
		function Subtract is new Modular_Subtract_Scalar_Array(Short_Modular, Short_Modular_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Short_Modular_Array; Right : Short_Modular_Array) return Short_Modular_Array is
		function Multiply is new Modular_Multiply_Array_Array(Short_Modular, Short_Modular_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Modular_Array; Right : Short_Modular) return Short_Modular_Array is
		function Multiply is new Modular_Multiply_Array_Scalar(Short_Modular, Short_Modular_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Modular; Right : Short_Modular_Array) return Short_Modular_Array is
		function Multiply is new Modular_Multiply_Scalar_Array(Short_Modular, Short_Modular_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Short_Modular_Array; Right : Short_Modular_Array) return Short_Modular_Array is
		function Divide is new Modular_Divide_Array_Array(Short_Modular, Short_Modular_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Modular_Array; Right : Short_Modular) return Short_Modular_Array is
		function Divide is new Modular_Divide_Array_Scalar(Short_Modular, Short_Modular_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Modular; Right : Short_Modular_Array) return Short_Modular_Array is
		function Divide is new Modular_Divide_Scalar_Array(Short_Modular, Short_Modular_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Short_Modular_Array; Right : Short_Modular_Array) return Short_Modular_Array is
		function Remainder is new Modular_Remainder_Array_Array(Short_Modular, Short_Modular_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Modular_Array; Right : Short_Modular) return Short_Modular_Array is
		function Remainder is new Modular_Remainder_Array_Scalar(Short_Modular, Short_Modular_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Modular; Right : Short_Modular_Array) return Short_Modular_Array is
		function Remainder is new Modular_Remainder_Scalar_Array(Short_Modular, Short_Modular_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Short_Modular_Array; Right : Short_Modular_Array) return Short_Modular_Array is
		function Modulus is new Modular_Modulus_Array_Array(Short_Modular, Short_Modular_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Modular_Array; Right : Short_Modular) return Short_Modular_Array is
		function Modulus is new Modular_Modulus_Array_Scalar(Short_Modular, Short_Modular_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Modular; Right : Short_Modular_Array) return Short_Modular_Array is
		function Modulus is new Modular_Modulus_Scalar_Array(Short_Modular, Short_Modular_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "not"(Value : Short_Modular_Array) return Short_Modular_Array is
		function "not" is new Modular_Not_Array(Short_Modular, Short_Modular_Array);
	begin
		return not Value;
	end "not";

	function "and"(Left : Short_Modular_Array; Right : Short_Modular_Array) return Short_Modular_Array is
		function "and" is new Modular_And_Array_Array(Short_Modular, Short_Modular_Array);
	begin
		return Left and Right;
	end "and";

	function "and"(Left : Short_Modular_Array; Right : Short_Modular) return Short_Modular_Array is
		function "and" is new Modular_And_Array_Scalar(Short_Modular, Short_Modular_Array);
	begin
		return Left and Right;
	end "and";

	function "and"(Left : Short_Modular; Right : Short_Modular_Array) return Short_Modular_Array is
		function "and" is new Modular_And_Scalar_Array(Short_Modular, Short_Modular_Array);
	begin
		return Left and Right;
	end "and";

	function "or"(Left : Short_Modular_Array; Right : Short_Modular_Array) return Short_Modular_Array is
		function "or" is new Modular_Or_Array_Array(Short_Modular, Short_Modular_Array);
	begin
		return Left or Right;
	end "or";

	function "or"(Left : Short_Modular_Array; Right : Short_Modular) return Short_Modular_Array is
		function "or" is new Modular_Or_Array_Scalar(Short_Modular, Short_Modular_Array);
	begin
		return Left or Right;
	end "or";

	function "or"(Left : Short_Modular; Right : Short_Modular_Array) return Short_Modular_Array is
		function "or" is new Modular_Or_Scalar_Array(Short_Modular, Short_Modular_Array);
	begin
		return Left or Right;
	end "or";

	function "xor"(Left : Short_Modular_Array; Right : Short_Modular_Array) return Short_Modular_Array is
		function "xor" is new Modular_Xor_Array_Array(Short_Modular, Short_Modular_Array);
	begin
		return Left xor Right;
	end "xor";

	function "xor"(Left : Short_Modular_Array; Right : Short_Modular) return Short_Modular_Array is
		function "xor" is new Modular_Xor_Array_Scalar(Short_Modular, Short_Modular_Array);
	begin
		return Left xor Right;
	end "xor";

	function "xor"(Left : Short_Modular; Right : Short_Modular_Array) return Short_Modular_Array is
		function "xor" is new Modular_Xor_Scalar_Array(Short_Modular, Short_Modular_Array);
	begin
		return Left xor Right;
	end "xor";

	function "="(Left : Short_Modular_Array; Right : Short_Modular_Array) return Boolean is
		function Equal is new Modular_Equal_Array_Array(Short_Modular, Short_Modular_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Modular_Array; Right : Short_Modular) return Boolean is
		function Equal is new Modular_Equal_Array_Scalar(Short_Modular, Short_Modular_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Modular; Right : Short_Modular_Array) return Boolean is
		function Equal is new Modular_Equal_Scalar_Array(Short_Modular, Short_Modular_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Short_Modular_Array; Right : Short_Modular_Array) return Boolean is
		function Lesser is new Modular_Lesser_Array_Array(Short_Modular, Short_Modular_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Modular_Array; Right : Short_Modular) return Boolean is
		function Lesser is new Modular_Lesser_Array_Scalar(Short_Modular, Short_Modular_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Modular; Right : Short_Modular_Array) return Boolean is
		function Lesser is new Modular_Lesser_Scalar_Array(Short_Modular, Short_Modular_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Short_Modular_Array; Right : Short_Modular_Array) return Boolean is
		function Greater is new Modular_Greater_Array_Array(Short_Modular, Short_Modular_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Modular_Array; Right : Short_Modular) return Boolean is
		function Greater is new Modular_Greater_Array_Scalar(Short_Modular, Short_Modular_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Modular; Right : Short_Modular_Array) return Boolean is
		function Greater is new Modular_Greater_Scalar_Array(Short_Modular, Short_Modular_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Short_Modular_Array; Right : Short_Modular_Array) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Array_Array(Short_Modular, Short_Modular_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Modular_Array; Right : Short_Modular) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Array_Scalar(Short_Modular, Short_Modular_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Modular; Right : Short_Modular_Array) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Scalar_Array(Short_Modular, Short_Modular_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Short_Modular_Array; Right : Short_Modular_Array) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Array_Array(Short_Modular, Short_Modular_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Modular_Array; Right : Short_Modular) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Array_Scalar(Short_Modular, Short_Modular_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Modular; Right : Short_Modular_Array) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Scalar_Array(Short_Modular, Short_Modular_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-------------------
	-- Modular Array --
	-------------------

	function "+"(Value : Modular_Array) return Modular_Array is
		function Assert is new Modular_Assert_Array(Modular, Modular_Array);
	begin
		return Assert(Value);
	end "+";

	function "abs"(Value : Modular_Array) return Modular_Array is
		function Absolute_Value is new Modular_Absolute_Value_Array(Modular, Modular_Array);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Modular_Array; Right : Modular_Array) return Modular_Array is
		function Add is new Modular_Add_Array_Array(Modular, Modular_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Modular_Array; Right : Modular) return Modular_Array is
		function Add is new Modular_Add_Array_Scalar(Modular, Modular_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Modular; Right : Modular_Array) return Modular_Array is
		function Add is new Modular_Add_Scalar_Array(Modular, Modular_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Modular_Array; Right : Modular_Array) return Modular_Array is
		function Subtract is new Modular_Subtract_Array_Array(Modular, Modular_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Modular_Array; Right : Modular) return Modular_Array is
		function Subtract is new Modular_Subtract_Array_Scalar(Modular, Modular_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Modular; Right : Modular_Array) return Modular_Array is
		function Subtract is new Modular_Subtract_Scalar_Array(Modular, Modular_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Modular_Array; Right : Modular_Array) return Modular_Array is
		function Multiply is new Modular_Multiply_Array_Array(Modular, Modular_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Modular_Array; Right : Modular) return Modular_Array is
		function Multiply is new Modular_Multiply_Array_Scalar(Modular, Modular_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Modular; Right : Modular_Array) return Modular_Array is
		function Multiply is new Modular_Multiply_Scalar_Array(Modular, Modular_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Modular_Array; Right : Modular_Array) return Modular_Array is
		function Divide is new Modular_Divide_Array_Array(Modular, Modular_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Modular_Array; Right : Modular) return Modular_Array is
		function Divide is new Modular_Divide_Array_Scalar(Modular, Modular_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Modular; Right : Modular_Array) return Modular_Array is
		function Divide is new Modular_Divide_Scalar_Array(Modular, Modular_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Modular_Array; Right : Modular_Array) return Modular_Array is
		function Remainder is new Modular_Remainder_Array_Array(Modular, Modular_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Modular_Array; Right : Modular) return Modular_Array is
		function Remainder is new Modular_Remainder_Array_Scalar(Modular, Modular_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Modular; Right : Modular_Array) return Modular_Array is
		function Remainder is new Modular_Remainder_Scalar_Array(Modular, Modular_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Modular_Array; Right : Modular_Array) return Modular_Array is
		function Modulus is new Modular_Modulus_Array_Array(Modular, Modular_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Modular_Array; Right : Modular) return Modular_Array is
		function Modulus is new Modular_Modulus_Array_Scalar(Modular, Modular_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Modular; Right : Modular_Array) return Modular_Array is
		function Modulus is new Modular_Modulus_Scalar_Array(Modular, Modular_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "not"(Value : Modular_Array) return Modular_Array is
		function "not" is new Modular_Not_Array(Modular, Modular_Array);
	begin
		return not Value;
	end "not";

	function "and"(Left : Modular_Array; Right : Modular_Array) return Modular_Array is
		function "and" is new Modular_And_Array_Array(Modular, Modular_Array);
	begin
		return Left and Right;
	end "and";

	function "and"(Left : Modular_Array; Right : Modular) return Modular_Array is
		function "and" is new Modular_And_Array_Scalar(Modular, Modular_Array);
	begin
		return Left and Right;
	end "and";

	function "and"(Left : Modular; Right : Modular_Array) return Modular_Array is
		function "and" is new Modular_And_Scalar_Array(Modular, Modular_Array);
	begin
		return Left and Right;
	end "and";

	function "or"(Left : Modular_Array; Right : Modular_Array) return Modular_Array is
		function "or" is new Modular_Or_Array_Array(Modular, Modular_Array);
	begin
		return Left or Right;
	end "or";

	function "or"(Left : Modular_Array; Right : Modular) return Modular_Array is
		function "or" is new Modular_Or_Array_Scalar(Modular, Modular_Array);
	begin
		return Left or Right;
	end "or";

	function "or"(Left : Modular; Right : Modular_Array) return Modular_Array is
		function "or" is new Modular_Or_Scalar_Array(Modular, Modular_Array);
	begin
		return Left or Right;
	end "or";

	function "xor"(Left : Modular_Array; Right : Modular_Array) return Modular_Array is
		function "xor" is new Modular_Xor_Array_Array(Modular, Modular_Array);
	begin
		return Left xor Right;
	end "xor";

	function "xor"(Left : Modular_Array; Right : Modular) return Modular_Array is
		function "xor" is new Modular_Xor_Array_Scalar(Modular, Modular_Array);
	begin
		return Left xor Right;
	end "xor";

	function "xor"(Left : Modular; Right : Modular_Array) return Modular_Array is
		function "xor" is new Modular_Xor_Scalar_Array(Modular, Modular_Array);
	begin
		return Left xor Right;
	end "xor";

	function "="(Left : Modular_Array; Right : Modular_Array) return Boolean is
		function Equal is new Modular_Equal_Array_Array(Modular, Modular_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Modular_Array; Right : Modular) return Boolean is
		function Equal is new Modular_Equal_Array_Scalar(Modular, Modular_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Modular; Right : Modular_Array) return Boolean is
		function Equal is new Modular_Equal_Scalar_Array(Modular, Modular_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Modular_Array; Right : Modular_Array) return Boolean is
		function Lesser is new Modular_Lesser_Array_Array(Modular, Modular_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Modular_Array; Right : Modular) return Boolean is
		function Lesser is new Modular_Lesser_Array_Scalar(Modular, Modular_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Modular; Right : Modular_Array) return Boolean is
		function Lesser is new Modular_Lesser_Scalar_Array(Modular, Modular_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Modular_Array; Right : Modular_Array) return Boolean is
		function Greater is new Modular_Greater_Array_Array(Modular, Modular_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Modular_Array; Right : Modular) return Boolean is
		function Greater is new Modular_Greater_Array_Scalar(Modular, Modular_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Modular; Right : Modular_Array) return Boolean is
		function Greater is new Modular_Greater_Scalar_Array(Modular, Modular_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Modular_Array; Right : Modular_Array) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Array_Array(Modular, Modular_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Modular_Array; Right : Modular) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Array_Scalar(Modular, Modular_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Modular; Right : Modular_Array) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Scalar_Array(Modular, Modular_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Modular_Array; Right : Modular_Array) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Array_Array(Modular, Modular_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Modular_Array; Right : Modular) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Array_Scalar(Modular, Modular_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Modular; Right : Modular_Array) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Scalar_Array(Modular, Modular_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	------------------------
	-- Long Modular Array --
	------------------------

	function "+"(Value : Long_Modular_Array) return Long_Modular_Array is
		function Assert is new Modular_Assert_Array(Long_Modular, Long_Modular_Array);
	begin
		return Assert(Value);
	end "+";

	function "abs"(Value : Long_Modular_Array) return Long_Modular_Array is
		function Absolute_Value is new Modular_Absolute_Value_Array(Long_Modular, Long_Modular_Array);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Long_Modular_Array; Right : Long_Modular_Array) return Long_Modular_Array is
		function Add is new Modular_Add_Array_Array(Long_Modular, Long_Modular_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Modular_Array; Right : Long_Modular) return Long_Modular_Array is
		function Add is new Modular_Add_Array_Scalar(Long_Modular, Long_Modular_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Modular; Right : Long_Modular_Array) return Long_Modular_Array is
		function Add is new Modular_Add_Scalar_Array(Long_Modular, Long_Modular_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Long_Modular_Array; Right : Long_Modular_Array) return Long_Modular_Array is
		function Subtract is new Modular_Subtract_Array_Array(Long_Modular, Long_Modular_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Modular_Array; Right : Long_Modular) return Long_Modular_Array is
		function Subtract is new Modular_Subtract_Array_Scalar(Long_Modular, Long_Modular_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Modular; Right : Long_Modular_Array) return Long_Modular_Array is
		function Subtract is new Modular_Subtract_Scalar_Array(Long_Modular, Long_Modular_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Long_Modular_Array; Right : Long_Modular_Array) return Long_Modular_Array is
		function Multiply is new Modular_Multiply_Array_Array(Long_Modular, Long_Modular_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Modular_Array; Right : Long_Modular) return Long_Modular_Array is
		function Multiply is new Modular_Multiply_Array_Scalar(Long_Modular, Long_Modular_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Modular; Right : Long_Modular_Array) return Long_Modular_Array is
		function Multiply is new Modular_Multiply_Scalar_Array(Long_Modular, Long_Modular_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Long_Modular_Array; Right : Long_Modular_Array) return Long_Modular_Array is
		function Divide is new Modular_Divide_Array_Array(Long_Modular, Long_Modular_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Modular_Array; Right : Long_Modular) return Long_Modular_Array is
		function Divide is new Modular_Divide_Array_Scalar(Long_Modular, Long_Modular_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Modular; Right : Long_Modular_Array) return Long_Modular_Array is
		function Divide is new Modular_Divide_Scalar_Array(Long_Modular, Long_Modular_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Long_Modular_Array; Right : Long_Modular_Array) return Long_Modular_Array is
		function Remainder is new Modular_Remainder_Array_Array(Long_Modular, Long_Modular_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Modular_Array; Right : Long_Modular) return Long_Modular_Array is
		function Remainder is new Modular_Remainder_Array_Scalar(Long_Modular, Long_Modular_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Modular; Right : Long_Modular_Array) return Long_Modular_Array is
		function Remainder is new Modular_Remainder_Scalar_Array(Long_Modular, Long_Modular_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Long_Modular_Array; Right : Long_Modular_Array) return Long_Modular_Array is
		function Modulus is new Modular_Modulus_Array_Array(Long_Modular, Long_Modular_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Modular_Array; Right : Long_Modular) return Long_Modular_Array is
		function Modulus is new Modular_Modulus_Array_Scalar(Long_Modular, Long_Modular_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Modular; Right : Long_Modular_Array) return Long_Modular_Array is
		function Modulus is new Modular_Modulus_Scalar_Array(Long_Modular, Long_Modular_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "not"(Value : Long_Modular_Array) return Long_Modular_Array is
		function "not" is new Modular_Not_Array(Long_Modular, Long_Modular_Array);
	begin
		return not Value;
	end "not";

	function "and"(Left : Long_Modular_Array; Right : Long_Modular_Array) return Long_Modular_Array is
		function "and" is new Modular_And_Array_Array(Long_Modular, Long_Modular_Array);
	begin
		return Left and Right;
	end "and";

	function "and"(Left : Long_Modular_Array; Right : Long_Modular) return Long_Modular_Array is
		function "and" is new Modular_And_Array_Scalar(Long_Modular, Long_Modular_Array);
	begin
		return Left and Right;
	end "and";

	function "and"(Left : Long_Modular; Right : Long_Modular_Array) return Long_Modular_Array is
		function "and" is new Modular_And_Scalar_Array(Long_Modular, Long_Modular_Array);
	begin
		return Left and Right;
	end "and";

	function "or"(Left : Long_Modular_Array; Right : Long_Modular_Array) return Long_Modular_Array is
		function "or" is new Modular_Or_Array_Array(Long_Modular, Long_Modular_Array);
	begin
		return Left or Right;
	end "or";

	function "or"(Left : Long_Modular_Array; Right : Long_Modular) return Long_Modular_Array is
		function "or" is new Modular_Or_Array_Scalar(Long_Modular, Long_Modular_Array);
	begin
		return Left or Right;
	end "or";

	function "or"(Left : Long_Modular; Right : Long_Modular_Array) return Long_Modular_Array is
		function "or" is new Modular_Or_Scalar_Array(Long_Modular, Long_Modular_Array);
	begin
		return Left or Right;
	end "or";

	function "xor"(Left : Long_Modular_Array; Right : Long_Modular_Array) return Long_Modular_Array is
		function "xor" is new Modular_Xor_Array_Array(Long_Modular, Long_Modular_Array);
	begin
		return Left xor Right;
	end "xor";

	function "xor"(Left : Long_Modular_Array; Right : Long_Modular) return Long_Modular_Array is
		function "xor" is new Modular_Xor_Array_Scalar(Long_Modular, Long_Modular_Array);
	begin
		return Left xor Right;
	end "xor";

	function "xor"(Left : Long_Modular; Right : Long_Modular_Array) return Long_Modular_Array is
		function "xor" is new Modular_Xor_Scalar_Array(Long_Modular, Long_Modular_Array);
	begin
		return Left xor Right;
	end "xor";

	function "="(Left : Long_Modular_Array; Right : Long_Modular_Array) return Boolean is
		function Equal is new Modular_Equal_Array_Array(Long_Modular, Long_Modular_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Modular_Array; Right : Long_Modular) return Boolean is
		function Equal is new Modular_Equal_Array_Scalar(Long_Modular, Long_Modular_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Modular; Right : Long_Modular_Array) return Boolean is
		function Equal is new Modular_Equal_Scalar_Array(Long_Modular, Long_Modular_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Long_Modular_Array; Right : Long_Modular_Array) return Boolean is
		function Lesser is new Modular_Lesser_Array_Array(Long_Modular, Long_Modular_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Modular_Array; Right : Long_Modular) return Boolean is
		function Lesser is new Modular_Lesser_Array_Scalar(Long_Modular, Long_Modular_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Modular; Right : Long_Modular_Array) return Boolean is
		function Lesser is new Modular_Lesser_Scalar_Array(Long_Modular, Long_Modular_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Long_Modular_Array; Right : Long_Modular_Array) return Boolean is
		function Greater is new Modular_Greater_Array_Array(Long_Modular, Long_Modular_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Modular_Array; Right : Long_Modular) return Boolean is
		function Greater is new Modular_Greater_Array_Scalar(Long_Modular, Long_Modular_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Modular; Right : Long_Modular_Array) return Boolean is
		function Greater is new Modular_Greater_Scalar_Array(Long_Modular, Long_Modular_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Long_Modular_Array; Right : Long_Modular_Array) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Array_Array(Long_Modular, Long_Modular_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Modular_Array; Right : Long_Modular) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Array_Scalar(Long_Modular, Long_Modular_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Modular; Right : Long_Modular_Array) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Scalar_Array(Long_Modular, Long_Modular_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Long_Modular_Array; Right : Long_Modular_Array) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Array_Array(Long_Modular, Long_Modular_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Modular_Array; Right : Long_Modular) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Array_Scalar(Long_Modular, Long_Modular_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Modular; Right : Long_Modular_Array) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Scalar_Array(Long_Modular, Long_Modular_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-----------------------------
	-- Long Long Modular Array --
	-----------------------------

	function "+"(Value : Long_Long_Modular_Array) return Long_Long_Modular_Array is
		function Assert is new Modular_Assert_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Assert(Value);
	end "+";

	function "abs"(Value : Long_Long_Modular_Array) return Long_Long_Modular_Array is
		function Absolute_Value is new Modular_Absolute_Value_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array is
		function Add is new Modular_Add_Array_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Long_Long_Modular_Array is
		function Add is new Modular_Add_Array_Scalar(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array is
		function Add is new Modular_Add_Scalar_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array is
		function Subtract is new Modular_Subtract_Array_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Long_Long_Modular_Array is
		function Subtract is new Modular_Subtract_Array_Scalar(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array is
		function Subtract is new Modular_Subtract_Scalar_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array is
		function Multiply is new Modular_Multiply_Array_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Long_Long_Modular_Array is
		function Multiply is new Modular_Multiply_Array_Scalar(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array is
		function Multiply is new Modular_Multiply_Scalar_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array is
		function Divide is new Modular_Divide_Array_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Long_Long_Modular_Array is
		function Divide is new Modular_Divide_Array_Scalar(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array is
		function Divide is new Modular_Divide_Scalar_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array is
		function Remainder is new Modular_Remainder_Array_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Long_Long_Modular_Array is
		function Remainder is new Modular_Remainder_Array_Scalar(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array is
		function Remainder is new Modular_Remainder_Scalar_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array is
		function Modulus is new Modular_Modulus_Array_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Long_Long_Modular_Array is
		function Modulus is new Modular_Modulus_Array_Scalar(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array is
		function Modulus is new Modular_Modulus_Scalar_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "not"(Value : Long_Long_Modular_Array) return Long_Long_Modular_Array is
		function "not" is new Modular_Not_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return not Value;
	end "not";

	function "and"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array is
		function "and" is new Modular_And_Array_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Left and Right;
	end "and";

	function "and"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Long_Long_Modular_Array is
		function "and" is new Modular_And_Array_Scalar(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Left and Right;
	end "and";

	function "and"(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array is
		function "and" is new Modular_And_Scalar_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Left and Right;
	end "and";

	function "or"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array is
		function "or" is new Modular_Or_Array_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Left or Right;
	end "or";

	function "or"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Long_Long_Modular_Array is
		function "or" is new Modular_Or_Array_Scalar(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Left or Right;
	end "or";

	function "or"(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array is
		function "or" is new Modular_Or_Scalar_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Left or Right;
	end "or";

	function "xor"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array is
		function "xor" is new Modular_Xor_Array_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Left xor Right;
	end "xor";

	function "xor"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Long_Long_Modular_Array is
		function "xor" is new Modular_Xor_Array_Scalar(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Left xor Right;
	end "xor";

	function "xor"(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array is
		function "xor" is new Modular_Xor_Scalar_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Left xor Right;
	end "xor";

	function "="(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Boolean is
		function Equal is new Modular_Equal_Array_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Boolean is
		function Equal is new Modular_Equal_Array_Scalar(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Boolean is
		function Equal is new Modular_Equal_Scalar_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Boolean is
		function Lesser is new Modular_Lesser_Array_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Boolean is
		function Lesser is new Modular_Lesser_Array_Scalar(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Boolean is
		function Lesser is new Modular_Lesser_Scalar_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Boolean is
		function Greater is new Modular_Greater_Array_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Boolean is
		function Greater is new Modular_Greater_Array_Scalar(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Boolean is
		function Greater is new Modular_Greater_Scalar_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Array_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Array_Scalar(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Scalar_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Array_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Array_Scalar(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Scalar_Array(Long_Long_Modular, Long_Long_Modular_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-----------------------------
	-- Short Short Fixed Array --
	-----------------------------

	function "+"(Value : Short_Short_Fixed_Array) return Short_Short_Fixed_Array is
		function Assert is new Fixed_Assert_Array(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Short_Short_Fixed_Array) return Short_Short_Fixed_Array is
		function Negate is new Fixed_Negate_Array(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Short_Short_Fixed_Array) return Short_Short_Fixed_Array is
		function Absolute_Value is new Fixed_Absolute_Value_Array(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed_Array) return Short_Short_Fixed_Array is
		function Add is new Fixed_Add_Array_Array(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed) return Short_Short_Fixed_Array is
		function Add is new Fixed_Add_Array_Scalar(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Array) return Short_Short_Fixed_Array is
		function Add is new Fixed_Add_Scalar_Array(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed_Array) return Short_Short_Fixed_Array is
		function Subtract is new Fixed_Subtract_Array_Array(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed) return Short_Short_Fixed_Array is
		function Subtract is new Fixed_Subtract_Array_Scalar(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Array) return Short_Short_Fixed_Array is
		function Subtract is new Fixed_Subtract_Scalar_Array(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed_Array) return Short_Short_Fixed_Array is
		function Multiply is new Fixed_Multiply_Array_Array(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed) return Short_Short_Fixed_Array is
		function Multiply is new Fixed_Multiply_Array_Scalar(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Array) return Short_Short_Fixed_Array is
		function Multiply is new Fixed_Multiply_Scalar_Array(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed_Array) return Short_Short_Fixed_Array is
		function Divide is new Fixed_Divide_Array_Array(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed) return Short_Short_Fixed_Array is
		function Divide is new Fixed_Divide_Array_Scalar(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Array) return Short_Short_Fixed_Array is
		function Divide is new Fixed_Divide_Scalar_Array(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed_Array) return Short_Short_Fixed_Array is
		function Remainder is new Fixed_Remainder_Array_Array(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed) return Short_Short_Fixed_Array is
		function Remainder is new Fixed_Remainder_Array_Scalar(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Array) return Short_Short_Fixed_Array is
		function Remainder is new Fixed_Remainder_Scalar_Array(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed_Array) return Short_Short_Fixed_Array is
		function Modulus is new Fixed_Modulus_Array_Array(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed) return Short_Short_Fixed_Array is
		function Modulus is new Fixed_Modulus_Array_Scalar(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Array) return Short_Short_Fixed_Array is
		function Modulus is new Fixed_Modulus_Scalar_Array(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed_Array) return Boolean is
		function Equal is new Fixed_Equal_Array_Array(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed) return Boolean is
		function Equal is new Fixed_Equal_Array_Scalar(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Array) return Boolean is
		function Equal is new Fixed_Equal_Scalar_Array(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed_Array) return Boolean is
		function Lesser is new Fixed_Lesser_Array_Array(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed) return Boolean is
		function Lesser is new Fixed_Lesser_Array_Scalar(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Array) return Boolean is
		function Lesser is new Fixed_Lesser_Scalar_Array(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed_Array) return Boolean is
		function Greater is new Fixed_Greater_Array_Array(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed) return Boolean is
		function Greater is new Fixed_Greater_Array_Scalar(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Array) return Boolean is
		function Greater is new Fixed_Greater_Scalar_Array(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed_Array) return Boolean is
		function Lesser_Or_Equal is new Fixed_Lesser_Or_Equal_Array_Array(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed) return Boolean is
		function Lesser_Or_Equal is new Fixed_Lesser_Or_Equal_Array_Scalar(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Array) return Boolean is
		function Lesser_Or_Equal is new Fixed_Lesser_Or_Equal_Scalar_Array(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed_Array) return Boolean is
		function Greater_Or_Equal is new Fixed_Greater_Or_Equal_Array_Array(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed) return Boolean is
		function Greater_Or_Equal is new Fixed_Greater_Or_Equal_Array_Scalar(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Array) return Boolean is
		function Greater_Or_Equal is new Fixed_Greater_Or_Equal_Scalar_Array(Short_Short_Fixed, Short_Short_Fixed_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-----------------------
	-- Short Fixed Array --
	-----------------------

	function "+"(Value : Short_Fixed_Array) return Short_Fixed_Array is
		function Assert is new Fixed_Assert_Array(Short_Fixed, Short_Fixed_Array);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Short_Fixed_Array) return Short_Fixed_Array is
		function Negate is new Fixed_Negate_Array(Short_Fixed, Short_Fixed_Array);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Short_Fixed_Array) return Short_Fixed_Array is
		function Absolute_Value is new Fixed_Absolute_Value_Array(Short_Fixed, Short_Fixed_Array);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Short_Fixed_Array; Right : Short_Fixed_Array) return Short_Fixed_Array is
		function Add is new Fixed_Add_Array_Array(Short_Fixed, Short_Fixed_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Fixed_Array; Right : Short_Fixed) return Short_Fixed_Array is
		function Add is new Fixed_Add_Array_Scalar(Short_Fixed, Short_Fixed_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Fixed; Right : Short_Fixed_Array) return Short_Fixed_Array is
		function Add is new Fixed_Add_Scalar_Array(Short_Fixed, Short_Fixed_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Short_Fixed_Array; Right : Short_Fixed_Array) return Short_Fixed_Array is
		function Subtract is new Fixed_Subtract_Array_Array(Short_Fixed, Short_Fixed_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Fixed_Array; Right : Short_Fixed) return Short_Fixed_Array is
		function Subtract is new Fixed_Subtract_Array_Scalar(Short_Fixed, Short_Fixed_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Fixed; Right : Short_Fixed_Array) return Short_Fixed_Array is
		function Subtract is new Fixed_Subtract_Scalar_Array(Short_Fixed, Short_Fixed_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Short_Fixed_Array; Right : Short_Fixed_Array) return Short_Fixed_Array is
		function Multiply is new Fixed_Multiply_Array_Array(Short_Fixed, Short_Fixed_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Fixed_Array; Right : Short_Fixed) return Short_Fixed_Array is
		function Multiply is new Fixed_Multiply_Array_Scalar(Short_Fixed, Short_Fixed_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Fixed; Right : Short_Fixed_Array) return Short_Fixed_Array is
		function Multiply is new Fixed_Multiply_Scalar_Array(Short_Fixed, Short_Fixed_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Short_Fixed_Array; Right : Short_Fixed_Array) return Short_Fixed_Array is
		function Divide is new Fixed_Divide_Array_Array(Short_Fixed, Short_Fixed_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Fixed_Array; Right : Short_Fixed) return Short_Fixed_Array is
		function Divide is new Fixed_Divide_Array_Scalar(Short_Fixed, Short_Fixed_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Fixed; Right : Short_Fixed_Array) return Short_Fixed_Array is
		function Divide is new Fixed_Divide_Scalar_Array(Short_Fixed, Short_Fixed_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Short_Fixed_Array; Right : Short_Fixed_Array) return Short_Fixed_Array is
		function Remainder is new Fixed_Remainder_Array_Array(Short_Fixed, Short_Fixed_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Fixed_Array; Right : Short_Fixed) return Short_Fixed_Array is
		function Remainder is new Fixed_Remainder_Array_Scalar(Short_Fixed, Short_Fixed_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Fixed; Right : Short_Fixed_Array) return Short_Fixed_Array is
		function Remainder is new Fixed_Remainder_Scalar_Array(Short_Fixed, Short_Fixed_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Short_Fixed_Array; Right : Short_Fixed_Array) return Short_Fixed_Array is
		function Modulus is new Fixed_Modulus_Array_Array(Short_Fixed, Short_Fixed_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Fixed_Array; Right : Short_Fixed) return Short_Fixed_Array is
		function Modulus is new Fixed_Modulus_Array_Scalar(Short_Fixed, Short_Fixed_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Fixed; Right : Short_Fixed_Array) return Short_Fixed_Array is
		function Modulus is new Fixed_Modulus_Scalar_Array(Short_Fixed, Short_Fixed_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Short_Fixed_Array; Right : Short_Fixed_Array) return Boolean is
		function Equal is new Fixed_Equal_Array_Array(Short_Fixed, Short_Fixed_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Fixed_Array; Right : Short_Fixed) return Boolean is
		function Equal is new Fixed_Equal_Array_Scalar(Short_Fixed, Short_Fixed_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Fixed; Right : Short_Fixed_Array) return Boolean is
		function Equal is new Fixed_Equal_Scalar_Array(Short_Fixed, Short_Fixed_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Short_Fixed_Array; Right : Short_Fixed_Array) return Boolean is
		function Lesser is new Fixed_Lesser_Array_Array(Short_Fixed, Short_Fixed_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Fixed_Array; Right : Short_Fixed) return Boolean is
		function Lesser is new Fixed_Lesser_Array_Scalar(Short_Fixed, Short_Fixed_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Fixed; Right : Short_Fixed_Array) return Boolean is
		function Lesser is new Fixed_Lesser_Scalar_Array(Short_Fixed, Short_Fixed_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Short_Fixed_Array; Right : Short_Fixed_Array) return Boolean is
		function Greater is new Fixed_Greater_Array_Array(Short_Fixed, Short_Fixed_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Fixed_Array; Right : Short_Fixed) return Boolean is
		function Greater is new Fixed_Greater_Array_Scalar(Short_Fixed, Short_Fixed_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Fixed; Right : Short_Fixed_Array) return Boolean is
		function Greater is new Fixed_Greater_Scalar_Array(Short_Fixed, Short_Fixed_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Short_Fixed_Array; Right : Short_Fixed_Array) return Boolean is
		function Lesser_Or_Equal is new Fixed_Lesser_Or_Equal_Array_Array(Short_Fixed, Short_Fixed_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Fixed_Array; Right : Short_Fixed) return Boolean is
		function Lesser_Or_Equal is new Fixed_Lesser_Or_Equal_Array_Scalar(Short_Fixed, Short_Fixed_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Fixed; Right : Short_Fixed_Array) return Boolean is
		function Lesser_Or_Equal is new Fixed_Lesser_Or_Equal_Scalar_Array(Short_Fixed, Short_Fixed_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Short_Fixed_Array; Right : Short_Fixed_Array) return Boolean is
		function Greater_Or_Equal is new Fixed_Greater_Or_Equal_Array_Array(Short_Fixed, Short_Fixed_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Fixed_Array; Right : Short_Fixed) return Boolean is
		function Greater_Or_Equal is new Fixed_Greater_Or_Equal_Array_Scalar(Short_Fixed, Short_Fixed_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Fixed; Right : Short_Fixed_Array) return Boolean is
		function Greater_Or_Equal is new Fixed_Greater_Or_Equal_Scalar_Array(Short_Fixed, Short_Fixed_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-----------------
	-- Fixed Array --
	-----------------

	function "+"(Value : Fixed_Array) return Fixed_Array is
		function Assert is new Fixed_Assert_Array(Fixed, Fixed_Array);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Fixed_Array) return Fixed_Array is
		function Negate is new Fixed_Negate_Array(Fixed, Fixed_Array);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Fixed_Array) return Fixed_Array is
		function Absolute_Value is new Fixed_Absolute_Value_Array(Fixed, Fixed_Array);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Fixed_Array; Right : Fixed_Array) return Fixed_Array is
		function Add is new Fixed_Add_Array_Array(Fixed, Fixed_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Fixed_Array; Right : Fixed) return Fixed_Array is
		function Add is new Fixed_Add_Array_Scalar(Fixed, Fixed_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Fixed; Right : Fixed_Array) return Fixed_Array is
		function Add is new Fixed_Add_Scalar_Array(Fixed, Fixed_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Fixed_Array; Right : Fixed_Array) return Fixed_Array is
		function Subtract is new Fixed_Subtract_Array_Array(Fixed, Fixed_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Fixed_Array; Right : Fixed) return Fixed_Array is
		function Subtract is new Fixed_Subtract_Array_Scalar(Fixed, Fixed_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Fixed; Right : Fixed_Array) return Fixed_Array is
		function Subtract is new Fixed_Subtract_Scalar_Array(Fixed, Fixed_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Fixed_Array; Right : Fixed_Array) return Fixed_Array is
		function Multiply is new Fixed_Multiply_Array_Array(Fixed, Fixed_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Fixed_Array; Right : Fixed) return Fixed_Array is
		function Multiply is new Fixed_Multiply_Array_Scalar(Fixed, Fixed_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Fixed; Right : Fixed_Array) return Fixed_Array is
		function Multiply is new Fixed_Multiply_Scalar_Array(Fixed, Fixed_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Fixed_Array; Right : Fixed_Array) return Fixed_Array is
		function Divide is new Fixed_Divide_Array_Array(Fixed, Fixed_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Fixed_Array; Right : Fixed) return Fixed_Array is
		function Divide is new Fixed_Divide_Array_Scalar(Fixed, Fixed_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Fixed; Right : Fixed_Array) return Fixed_Array is
		function Divide is new Fixed_Divide_Scalar_Array(Fixed, Fixed_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Fixed_Array; Right : Fixed_Array) return Fixed_Array is
		function Remainder is new Fixed_Remainder_Array_Array(Fixed, Fixed_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Fixed_Array; Right : Fixed) return Fixed_Array is
		function Remainder is new Fixed_Remainder_Array_Scalar(Fixed, Fixed_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Fixed; Right : Fixed_Array) return Fixed_Array is
		function Remainder is new Fixed_Remainder_Scalar_Array(Fixed, Fixed_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Fixed_Array; Right : Fixed_Array) return Fixed_Array is
		function Modulus is new Fixed_Modulus_Array_Array(Fixed, Fixed_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Fixed_Array; Right : Fixed) return Fixed_Array is
		function Modulus is new Fixed_Modulus_Array_Scalar(Fixed, Fixed_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Fixed; Right : Fixed_Array) return Fixed_Array is
		function Modulus is new Fixed_Modulus_Scalar_Array(Fixed, Fixed_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Fixed_Array; Right : Fixed_Array) return Boolean is
		function Equal is new Fixed_Equal_Array_Array(Fixed, Fixed_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Fixed_Array; Right : Fixed) return Boolean is
		function Equal is new Fixed_Equal_Array_Scalar(Fixed, Fixed_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Fixed; Right : Fixed_Array) return Boolean is
		function Equal is new Fixed_Equal_Scalar_Array(Fixed, Fixed_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Fixed_Array; Right : Fixed_Array) return Boolean is
		function Lesser is new Fixed_Lesser_Array_Array(Fixed, Fixed_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Fixed_Array; Right : Fixed) return Boolean is
		function Lesser is new Fixed_Lesser_Array_Scalar(Fixed, Fixed_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Fixed; Right : Fixed_Array) return Boolean is
		function Lesser is new Fixed_Lesser_Scalar_Array(Fixed, Fixed_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Fixed_Array; Right : Fixed_Array) return Boolean is
		function Greater is new Fixed_Greater_Array_Array(Fixed, Fixed_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Fixed_Array; Right : Fixed) return Boolean is
		function Greater is new Fixed_Greater_Array_Scalar(Fixed, Fixed_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Fixed; Right : Fixed_Array) return Boolean is
		function Greater is new Fixed_Greater_Scalar_Array(Fixed, Fixed_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Fixed_Array; Right : Fixed_Array) return Boolean is
		function Lesser_Or_Equal is new Fixed_Lesser_Or_Equal_Array_Array(Fixed, Fixed_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Fixed_Array; Right : Fixed) return Boolean is
		function Lesser_Or_Equal is new Fixed_Lesser_Or_Equal_Array_Scalar(Fixed, Fixed_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Fixed; Right : Fixed_Array) return Boolean is
		function Lesser_Or_Equal is new Fixed_Lesser_Or_Equal_Scalar_Array(Fixed, Fixed_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Fixed_Array; Right : Fixed_Array) return Boolean is
		function Greater_Or_Equal is new Fixed_Greater_Or_Equal_Array_Array(Fixed, Fixed_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Fixed_Array; Right : Fixed) return Boolean is
		function Greater_Or_Equal is new Fixed_Greater_Or_Equal_Array_Scalar(Fixed, Fixed_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Fixed; Right : Fixed_Array) return Boolean is
		function Greater_Or_Equal is new Fixed_Greater_Or_Equal_Scalar_Array(Fixed, Fixed_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	----------------------
	-- Long Fixed Array --
	----------------------

	function "+"(Value : Long_Fixed_Array) return Long_Fixed_Array is
		function Assert is new Fixed_Assert_Array(Long_Fixed, Long_Fixed_Array);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Long_Fixed_Array) return Long_Fixed_Array is
		function Negate is new Fixed_Negate_Array(Long_Fixed, Long_Fixed_Array);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Long_Fixed_Array) return Long_Fixed_Array is
		function Absolute_Value is new Fixed_Absolute_Value_Array(Long_Fixed, Long_Fixed_Array);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Long_Fixed_Array; Right : Long_Fixed_Array) return Long_Fixed_Array is
		function Add is new Fixed_Add_Array_Array(Long_Fixed, Long_Fixed_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Fixed_Array; Right : Long_Fixed) return Long_Fixed_Array is
		function Add is new Fixed_Add_Array_Scalar(Long_Fixed, Long_Fixed_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Fixed; Right : Long_Fixed_Array) return Long_Fixed_Array is
		function Add is new Fixed_Add_Scalar_Array(Long_Fixed, Long_Fixed_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Long_Fixed_Array; Right : Long_Fixed_Array) return Long_Fixed_Array is
		function Subtract is new Fixed_Subtract_Array_Array(Long_Fixed, Long_Fixed_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Fixed_Array; Right : Long_Fixed) return Long_Fixed_Array is
		function Subtract is new Fixed_Subtract_Array_Scalar(Long_Fixed, Long_Fixed_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Fixed; Right : Long_Fixed_Array) return Long_Fixed_Array is
		function Subtract is new Fixed_Subtract_Scalar_Array(Long_Fixed, Long_Fixed_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Long_Fixed_Array; Right : Long_Fixed_Array) return Long_Fixed_Array is
		function Multiply is new Fixed_Multiply_Array_Array(Long_Fixed, Long_Fixed_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Fixed_Array; Right : Long_Fixed) return Long_Fixed_Array is
		function Multiply is new Fixed_Multiply_Array_Scalar(Long_Fixed, Long_Fixed_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Fixed; Right : Long_Fixed_Array) return Long_Fixed_Array is
		function Multiply is new Fixed_Multiply_Scalar_Array(Long_Fixed, Long_Fixed_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Long_Fixed_Array; Right : Long_Fixed_Array) return Long_Fixed_Array is
		function Divide is new Fixed_Divide_Array_Array(Long_Fixed, Long_Fixed_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Fixed_Array; Right : Long_Fixed) return Long_Fixed_Array is
		function Divide is new Fixed_Divide_Array_Scalar(Long_Fixed, Long_Fixed_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Fixed; Right : Long_Fixed_Array) return Long_Fixed_Array is
		function Divide is new Fixed_Divide_Scalar_Array(Long_Fixed, Long_Fixed_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Long_Fixed_Array; Right : Long_Fixed_Array) return Long_Fixed_Array is
		function Remainder is new Fixed_Remainder_Array_Array(Long_Fixed, Long_Fixed_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Fixed_Array; Right : Long_Fixed) return Long_Fixed_Array is
		function Remainder is new Fixed_Remainder_Array_Scalar(Long_Fixed, Long_Fixed_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Fixed; Right : Long_Fixed_Array) return Long_Fixed_Array is
		function Remainder is new Fixed_Remainder_Scalar_Array(Long_Fixed, Long_Fixed_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Long_Fixed_Array; Right : Long_Fixed_Array) return Long_Fixed_Array is
		function Modulus is new Fixed_Modulus_Array_Array(Long_Fixed, Long_Fixed_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Fixed_Array; Right : Long_Fixed) return Long_Fixed_Array is
		function Modulus is new Fixed_Modulus_Array_Scalar(Long_Fixed, Long_Fixed_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Fixed; Right : Long_Fixed_Array) return Long_Fixed_Array is
		function Modulus is new Fixed_Modulus_Scalar_Array(Long_Fixed, Long_Fixed_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Long_Fixed_Array; Right : Long_Fixed_Array) return Boolean is
		function Equal is new Fixed_Equal_Array_Array(Long_Fixed, Long_Fixed_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Fixed_Array; Right : Long_Fixed) return Boolean is
		function Equal is new Fixed_Equal_Array_Scalar(Long_Fixed, Long_Fixed_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Fixed; Right : Long_Fixed_Array) return Boolean is
		function Equal is new Fixed_Equal_Scalar_Array(Long_Fixed, Long_Fixed_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Long_Fixed_Array; Right : Long_Fixed_Array) return Boolean is
		function Lesser is new Fixed_Lesser_Array_Array(Long_Fixed, Long_Fixed_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Fixed_Array; Right : Long_Fixed) return Boolean is
		function Lesser is new Fixed_Lesser_Array_Scalar(Long_Fixed, Long_Fixed_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Fixed; Right : Long_Fixed_Array) return Boolean is
		function Lesser is new Fixed_Lesser_Scalar_Array(Long_Fixed, Long_Fixed_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Long_Fixed_Array; Right : Long_Fixed_Array) return Boolean is
		function Greater is new Fixed_Greater_Array_Array(Long_Fixed, Long_Fixed_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Fixed_Array; Right : Long_Fixed) return Boolean is
		function Greater is new Fixed_Greater_Array_Scalar(Long_Fixed, Long_Fixed_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Fixed; Right : Long_Fixed_Array) return Boolean is
		function Greater is new Fixed_Greater_Scalar_Array(Long_Fixed, Long_Fixed_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Long_Fixed_Array; Right : Long_Fixed_Array) return Boolean is
		function Lesser_Or_Equal is new Fixed_Lesser_Or_Equal_Array_Array(Long_Fixed, Long_Fixed_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Fixed_Array; Right : Long_Fixed) return Boolean is
		function Lesser_Or_Equal is new Fixed_Lesser_Or_Equal_Array_Scalar(Long_Fixed, Long_Fixed_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Fixed; Right : Long_Fixed_Array) return Boolean is
		function Lesser_Or_Equal is new Fixed_Lesser_Or_Equal_Scalar_Array(Long_Fixed, Long_Fixed_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Long_Fixed_Array; Right : Long_Fixed_Array) return Boolean is
		function Greater_Or_Equal is new Fixed_Greater_Or_Equal_Array_Array(Long_Fixed, Long_Fixed_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Fixed_Array; Right : Long_Fixed) return Boolean is
		function Greater_Or_Equal is new Fixed_Greater_Or_Equal_Array_Scalar(Long_Fixed, Long_Fixed_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Fixed; Right : Long_Fixed_Array) return Boolean is
		function Greater_Or_Equal is new Fixed_Greater_Or_Equal_Scalar_Array(Long_Fixed, Long_Fixed_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-------------------------
	-- Short Decimal Array --
	-------------------------

	function "+"(Value : Short_Decimal_Array) return Short_Decimal_Array is
		function Assert is new Decimal_Assert_Array(Short_Decimal, Short_Decimal_Array);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Short_Decimal_Array) return Short_Decimal_Array is
		function Negate is new Decimal_Negate_Array(Short_Decimal, Short_Decimal_Array);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Short_Decimal_Array) return Short_Decimal_Array is
		function Absolute_Value is new Decimal_Absolute_Value_Array(Short_Decimal, Short_Decimal_Array);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Short_Decimal_Array; Right : Short_Decimal_Array) return Short_Decimal_Array is
		function Add is new Decimal_Add_Array_Array(Short_Decimal, Short_Decimal_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Decimal_Array; Right : Short_Decimal) return Short_Decimal_Array is
		function Add is new Decimal_Add_Array_Scalar(Short_Decimal, Short_Decimal_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Decimal; Right : Short_Decimal_Array) return Short_Decimal_Array is
		function Add is new Decimal_Add_Scalar_Array(Short_Decimal, Short_Decimal_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Short_Decimal_Array; Right : Short_Decimal_Array) return Short_Decimal_Array is
		function Subtract is new Decimal_Subtract_Array_Array(Short_Decimal, Short_Decimal_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Decimal_Array; Right : Short_Decimal) return Short_Decimal_Array is
		function Subtract is new Decimal_Subtract_Array_Scalar(Short_Decimal, Short_Decimal_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Decimal; Right : Short_Decimal_Array) return Short_Decimal_Array is
		function Subtract is new Decimal_Subtract_Scalar_Array(Short_Decimal, Short_Decimal_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Short_Decimal_Array; Right : Short_Decimal_Array) return Short_Decimal_Array is
		function Multiply is new Decimal_Multiply_Array_Array(Short_Decimal, Short_Decimal_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Decimal_Array; Right : Short_Decimal) return Short_Decimal_Array is
		function Multiply is new Decimal_Multiply_Array_Scalar(Short_Decimal, Short_Decimal_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Decimal; Right : Short_Decimal_Array) return Short_Decimal_Array is
		function Multiply is new Decimal_Multiply_Scalar_Array(Short_Decimal, Short_Decimal_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Short_Decimal_Array; Right : Short_Decimal_Array) return Short_Decimal_Array is
		function Divide is new Decimal_Divide_Array_Array(Short_Decimal, Short_Decimal_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Decimal_Array; Right : Short_Decimal) return Short_Decimal_Array is
		function Divide is new Decimal_Divide_Array_Scalar(Short_Decimal, Short_Decimal_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Decimal; Right : Short_Decimal_Array) return Short_Decimal_Array is
		function Divide is new Decimal_Divide_Scalar_Array(Short_Decimal, Short_Decimal_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Short_Decimal_Array; Right : Short_Decimal_Array) return Short_Decimal_Array is
		function Remainder is new Decimal_Remainder_Array_Array(Short_Decimal, Short_Decimal_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Decimal_Array; Right : Short_Decimal) return Short_Decimal_Array is
		function Remainder is new Decimal_Remainder_Array_Scalar(Short_Decimal, Short_Decimal_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Decimal; Right : Short_Decimal_Array) return Short_Decimal_Array is
		function Remainder is new Decimal_Remainder_Scalar_Array(Short_Decimal, Short_Decimal_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Short_Decimal_Array; Right : Short_Decimal_Array) return Short_Decimal_Array is
		function Modulus is new Decimal_Modulus_Array_Array(Short_Decimal, Short_Decimal_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Decimal_Array; Right : Short_Decimal) return Short_Decimal_Array is
		function Modulus is new Decimal_Modulus_Array_Scalar(Short_Decimal, Short_Decimal_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Decimal; Right : Short_Decimal_Array) return Short_Decimal_Array is
		function Modulus is new Decimal_Modulus_Scalar_Array(Short_Decimal, Short_Decimal_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Short_Decimal_Array; Right : Short_Decimal_Array) return Boolean is
		function Equal is new Decimal_Equal_Array_Array(Short_Decimal, Short_Decimal_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Decimal_Array; Right : Short_Decimal) return Boolean is
		function Equal is new Decimal_Equal_Array_Scalar(Short_Decimal, Short_Decimal_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Decimal; Right : Short_Decimal_Array) return Boolean is
		function Equal is new Decimal_Equal_Scalar_Array(Short_Decimal, Short_Decimal_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Short_Decimal_Array; Right : Short_Decimal_Array) return Boolean is
		function Lesser is new Decimal_Lesser_Array_Array(Short_Decimal, Short_Decimal_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Decimal_Array; Right : Short_Decimal) return Boolean is
		function Lesser is new Decimal_Lesser_Array_Scalar(Short_Decimal, Short_Decimal_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Decimal; Right : Short_Decimal_Array) return Boolean is
		function Lesser is new Decimal_Lesser_Scalar_Array(Short_Decimal, Short_Decimal_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Short_Decimal_Array; Right : Short_Decimal_Array) return Boolean is
		function Greater is new Decimal_Greater_Array_Array(Short_Decimal, Short_Decimal_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Decimal_Array; Right : Short_Decimal) return Boolean is
		function Greater is new Decimal_Greater_Array_Scalar(Short_Decimal, Short_Decimal_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Decimal; Right : Short_Decimal_Array) return Boolean is
		function Greater is new Decimal_Greater_Scalar_Array(Short_Decimal, Short_Decimal_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Short_Decimal_Array; Right : Short_Decimal_Array) return Boolean is
		function Lesser_Or_Equal is new Decimal_Lesser_Or_Equal_Array_Array(Short_Decimal, Short_Decimal_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Decimal_Array; Right : Short_Decimal) return Boolean is
		function Lesser_Or_Equal is new Decimal_Lesser_Or_Equal_Array_Scalar(Short_Decimal, Short_Decimal_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Decimal; Right : Short_Decimal_Array) return Boolean is
		function Lesser_Or_Equal is new Decimal_Lesser_Or_Equal_Scalar_Array(Short_Decimal, Short_Decimal_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Short_Decimal_Array; Right : Short_Decimal_Array) return Boolean is
		function Greater_Or_Equal is new Decimal_Greater_Or_Equal_Array_Array(Short_Decimal, Short_Decimal_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Decimal_Array; Right : Short_Decimal) return Boolean is
		function Greater_Or_Equal is new Decimal_Greater_Or_Equal_Array_Scalar(Short_Decimal, Short_Decimal_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Decimal; Right : Short_Decimal_Array) return Boolean is
		function Greater_Or_Equal is new Decimal_Greater_Or_Equal_Scalar_Array(Short_Decimal, Short_Decimal_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-------------------
	-- Decimal Array --
	-------------------

	function "+"(Value : Decimal_Array) return Decimal_Array is
		function Assert is new Decimal_Assert_Array(Decimal, Decimal_Array);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Decimal_Array) return Decimal_Array is
		function Negate is new Decimal_Negate_Array(Decimal, Decimal_Array);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Decimal_Array) return Decimal_Array is
		function Absolute_Value is new Decimal_Absolute_Value_Array(Decimal, Decimal_Array);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Decimal_Array; Right : Decimal_Array) return Decimal_Array is
		function Add is new Decimal_Add_Array_Array(Decimal, Decimal_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Decimal_Array; Right : Decimal) return Decimal_Array is
		function Add is new Decimal_Add_Array_Scalar(Decimal, Decimal_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Decimal; Right : Decimal_Array) return Decimal_Array is
		function Add is new Decimal_Add_Scalar_Array(Decimal, Decimal_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Decimal_Array; Right : Decimal_Array) return Decimal_Array is
		function Subtract is new Decimal_Subtract_Array_Array(Decimal, Decimal_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Decimal_Array; Right : Decimal) return Decimal_Array is
		function Subtract is new Decimal_Subtract_Array_Scalar(Decimal, Decimal_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Decimal; Right : Decimal_Array) return Decimal_Array is
		function Subtract is new Decimal_Subtract_Scalar_Array(Decimal, Decimal_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Decimal_Array; Right : Decimal_Array) return Decimal_Array is
		function Multiply is new Decimal_Multiply_Array_Array(Decimal, Decimal_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Decimal_Array; Right : Decimal) return Decimal_Array is
		function Multiply is new Decimal_Multiply_Array_Scalar(Decimal, Decimal_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Decimal; Right : Decimal_Array) return Decimal_Array is
		function Multiply is new Decimal_Multiply_Scalar_Array(Decimal, Decimal_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Decimal_Array; Right : Decimal_Array) return Decimal_Array is
		function Divide is new Decimal_Divide_Array_Array(Decimal, Decimal_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Decimal_Array; Right : Decimal) return Decimal_Array is
		function Divide is new Decimal_Divide_Array_Scalar(Decimal, Decimal_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Decimal; Right : Decimal_Array) return Decimal_Array is
		function Divide is new Decimal_Divide_Scalar_Array(Decimal, Decimal_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Decimal_Array; Right : Decimal_Array) return Decimal_Array is
		function Remainder is new Decimal_Remainder_Array_Array(Decimal, Decimal_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Decimal_Array; Right : Decimal) return Decimal_Array is
		function Remainder is new Decimal_Remainder_Array_Scalar(Decimal, Decimal_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Decimal; Right : Decimal_Array) return Decimal_Array is
		function Remainder is new Decimal_Remainder_Scalar_Array(Decimal, Decimal_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Decimal_Array; Right : Decimal_Array) return Decimal_Array is
		function Modulus is new Decimal_Modulus_Array_Array(Decimal, Decimal_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Decimal_Array; Right : Decimal) return Decimal_Array is
		function Modulus is new Decimal_Modulus_Array_Scalar(Decimal, Decimal_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Decimal; Right : Decimal_Array) return Decimal_Array is
		function Modulus is new Decimal_Modulus_Scalar_Array(Decimal, Decimal_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Decimal_Array; Right : Decimal_Array) return Boolean is
		function Equal is new Decimal_Equal_Array_Array(Decimal, Decimal_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Decimal_Array; Right : Decimal) return Boolean is
		function Equal is new Decimal_Equal_Array_Scalar(Decimal, Decimal_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Decimal; Right : Decimal_Array) return Boolean is
		function Equal is new Decimal_Equal_Scalar_Array(Decimal, Decimal_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Decimal_Array; Right : Decimal_Array) return Boolean is
		function Lesser is new Decimal_Lesser_Array_Array(Decimal, Decimal_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Decimal_Array; Right : Decimal) return Boolean is
		function Lesser is new Decimal_Lesser_Array_Scalar(Decimal, Decimal_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Decimal; Right : Decimal_Array) return Boolean is
		function Lesser is new Decimal_Lesser_Scalar_Array(Decimal, Decimal_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Decimal_Array; Right : Decimal_Array) return Boolean is
		function Greater is new Decimal_Greater_Array_Array(Decimal, Decimal_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Decimal_Array; Right : Decimal) return Boolean is
		function Greater is new Decimal_Greater_Array_Scalar(Decimal, Decimal_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Decimal; Right : Decimal_Array) return Boolean is
		function Greater is new Decimal_Greater_Scalar_Array(Decimal, Decimal_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Decimal_Array; Right : Decimal_Array) return Boolean is
		function Lesser_Or_Equal is new Decimal_Lesser_Or_Equal_Array_Array(Decimal, Decimal_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Decimal_Array; Right : Decimal) return Boolean is
		function Lesser_Or_Equal is new Decimal_Lesser_Or_Equal_Array_Scalar(Decimal, Decimal_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Decimal; Right : Decimal_Array) return Boolean is
		function Lesser_Or_Equal is new Decimal_Lesser_Or_Equal_Scalar_Array(Decimal, Decimal_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Decimal_Array; Right : Decimal_Array) return Boolean is
		function Greater_Or_Equal is new Decimal_Greater_Or_Equal_Array_Array(Decimal, Decimal_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Decimal_Array; Right : Decimal) return Boolean is
		function Greater_Or_Equal is new Decimal_Greater_Or_Equal_Array_Scalar(Decimal, Decimal_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Decimal; Right : Decimal_Array) return Boolean is
		function Greater_Or_Equal is new Decimal_Greater_Or_Equal_Scalar_Array(Decimal, Decimal_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	------------------------
	-- Long Decimal Array --
	------------------------

	function "+"(Value : Long_Decimal_Array) return Long_Decimal_Array is
		function Assert is new Decimal_Assert_Array(Long_Decimal, Long_Decimal_Array);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Long_Decimal_Array) return Long_Decimal_Array is
		function Negate is new Decimal_Negate_Array(Long_Decimal, Long_Decimal_Array);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Long_Decimal_Array) return Long_Decimal_Array is
		function Absolute_Value is new Decimal_Absolute_Value_Array(Long_Decimal, Long_Decimal_Array);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Long_Decimal_Array; Right : Long_Decimal_Array) return Long_Decimal_Array is
		function Add is new Decimal_Add_Array_Array(Long_Decimal, Long_Decimal_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Decimal_Array; Right : Long_Decimal) return Long_Decimal_Array is
		function Add is new Decimal_Add_Array_Scalar(Long_Decimal, Long_Decimal_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Decimal; Right : Long_Decimal_Array) return Long_Decimal_Array is
		function Add is new Decimal_Add_Scalar_Array(Long_Decimal, Long_Decimal_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Long_Decimal_Array; Right : Long_Decimal_Array) return Long_Decimal_Array is
		function Subtract is new Decimal_Subtract_Array_Array(Long_Decimal, Long_Decimal_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Decimal_Array; Right : Long_Decimal) return Long_Decimal_Array is
		function Subtract is new Decimal_Subtract_Array_Scalar(Long_Decimal, Long_Decimal_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Decimal; Right : Long_Decimal_Array) return Long_Decimal_Array is
		function Subtract is new Decimal_Subtract_Scalar_Array(Long_Decimal, Long_Decimal_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Long_Decimal_Array; Right : Long_Decimal_Array) return Long_Decimal_Array is
		function Multiply is new Decimal_Multiply_Array_Array(Long_Decimal, Long_Decimal_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Decimal_Array; Right : Long_Decimal) return Long_Decimal_Array is
		function Multiply is new Decimal_Multiply_Array_Scalar(Long_Decimal, Long_Decimal_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Decimal; Right : Long_Decimal_Array) return Long_Decimal_Array is
		function Multiply is new Decimal_Multiply_Scalar_Array(Long_Decimal, Long_Decimal_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Long_Decimal_Array; Right : Long_Decimal_Array) return Long_Decimal_Array is
		function Divide is new Decimal_Divide_Array_Array(Long_Decimal, Long_Decimal_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Decimal_Array; Right : Long_Decimal) return Long_Decimal_Array is
		function Divide is new Decimal_Divide_Array_Scalar(Long_Decimal, Long_Decimal_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Decimal; Right : Long_Decimal_Array) return Long_Decimal_Array is
		function Divide is new Decimal_Divide_Scalar_Array(Long_Decimal, Long_Decimal_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Long_Decimal_Array; Right : Long_Decimal_Array) return Long_Decimal_Array is
		function Remainder is new Decimal_Remainder_Array_Array(Long_Decimal, Long_Decimal_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Decimal_Array; Right : Long_Decimal) return Long_Decimal_Array is
		function Remainder is new Decimal_Remainder_Array_Scalar(Long_Decimal, Long_Decimal_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Decimal; Right : Long_Decimal_Array) return Long_Decimal_Array is
		function Remainder is new Decimal_Remainder_Scalar_Array(Long_Decimal, Long_Decimal_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Long_Decimal_Array; Right : Long_Decimal_Array) return Long_Decimal_Array is
		function Modulus is new Decimal_Modulus_Array_Array(Long_Decimal, Long_Decimal_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Decimal_Array; Right : Long_Decimal) return Long_Decimal_Array is
		function Modulus is new Decimal_Modulus_Array_Scalar(Long_Decimal, Long_Decimal_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Decimal; Right : Long_Decimal_Array) return Long_Decimal_Array is
		function Modulus is new Decimal_Modulus_Scalar_Array(Long_Decimal, Long_Decimal_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Long_Decimal_Array; Right : Long_Decimal_Array) return Boolean is
		function Equal is new Decimal_Equal_Array_Array(Long_Decimal, Long_Decimal_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Decimal_Array; Right : Long_Decimal) return Boolean is
		function Equal is new Decimal_Equal_Array_Scalar(Long_Decimal, Long_Decimal_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Decimal; Right : Long_Decimal_Array) return Boolean is
		function Equal is new Decimal_Equal_Scalar_Array(Long_Decimal, Long_Decimal_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Long_Decimal_Array; Right : Long_Decimal_Array) return Boolean is
		function Lesser is new Decimal_Lesser_Array_Array(Long_Decimal, Long_Decimal_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Decimal_Array; Right : Long_Decimal) return Boolean is
		function Lesser is new Decimal_Lesser_Array_Scalar(Long_Decimal, Long_Decimal_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Decimal; Right : Long_Decimal_Array) return Boolean is
		function Lesser is new Decimal_Lesser_Scalar_Array(Long_Decimal, Long_Decimal_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Long_Decimal_Array; Right : Long_Decimal_Array) return Boolean is
		function Greater is new Decimal_Greater_Array_Array(Long_Decimal, Long_Decimal_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Decimal_Array; Right : Long_Decimal) return Boolean is
		function Greater is new Decimal_Greater_Array_Scalar(Long_Decimal, Long_Decimal_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Decimal; Right : Long_Decimal_Array) return Boolean is
		function Greater is new Decimal_Greater_Scalar_Array(Long_Decimal, Long_Decimal_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Long_Decimal_Array; Right : Long_Decimal_Array) return Boolean is
		function Lesser_Or_Equal is new Decimal_Lesser_Or_Equal_Array_Array(Long_Decimal, Long_Decimal_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Decimal_Array; Right : Long_Decimal) return Boolean is
		function Lesser_Or_Equal is new Decimal_Lesser_Or_Equal_Array_Scalar(Long_Decimal, Long_Decimal_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Decimal; Right : Long_Decimal_Array) return Boolean is
		function Lesser_Or_Equal is new Decimal_Lesser_Or_Equal_Scalar_Array(Long_Decimal, Long_Decimal_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Long_Decimal_Array; Right : Long_Decimal_Array) return Boolean is
		function Greater_Or_Equal is new Decimal_Greater_Or_Equal_Array_Array(Long_Decimal, Long_Decimal_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Decimal_Array; Right : Long_Decimal) return Boolean is
		function Greater_Or_Equal is new Decimal_Greater_Or_Equal_Array_Scalar(Long_Decimal, Long_Decimal_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Decimal; Right : Long_Decimal_Array) return Boolean is
		function Greater_Or_Equal is new Decimal_Greater_Or_Equal_Scalar_Array(Long_Decimal, Long_Decimal_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-----------------------------
	-- Long Long Decimal Array --
	-----------------------------

	function "+"(Value : Long_Long_Decimal_Array) return Long_Long_Decimal_Array is
		function Assert is new Decimal_Assert_Array(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Long_Long_Decimal_Array) return Long_Long_Decimal_Array is
		function Negate is new Decimal_Negate_Array(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Long_Long_Decimal_Array) return Long_Long_Decimal_Array is
		function Absolute_Value is new Decimal_Absolute_Value_Array(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal_Array) return Long_Long_Decimal_Array is
		function Add is new Decimal_Add_Array_Array(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal) return Long_Long_Decimal_Array is
		function Add is new Decimal_Add_Array_Scalar(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Array) return Long_Long_Decimal_Array is
		function Add is new Decimal_Add_Scalar_Array(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal_Array) return Long_Long_Decimal_Array is
		function Subtract is new Decimal_Subtract_Array_Array(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal) return Long_Long_Decimal_Array is
		function Subtract is new Decimal_Subtract_Array_Scalar(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Array) return Long_Long_Decimal_Array is
		function Subtract is new Decimal_Subtract_Scalar_Array(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal_Array) return Long_Long_Decimal_Array is
		function Multiply is new Decimal_Multiply_Array_Array(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal) return Long_Long_Decimal_Array is
		function Multiply is new Decimal_Multiply_Array_Scalar(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Array) return Long_Long_Decimal_Array is
		function Multiply is new Decimal_Multiply_Scalar_Array(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal_Array) return Long_Long_Decimal_Array is
		function Divide is new Decimal_Divide_Array_Array(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal) return Long_Long_Decimal_Array is
		function Divide is new Decimal_Divide_Array_Scalar(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Array) return Long_Long_Decimal_Array is
		function Divide is new Decimal_Divide_Scalar_Array(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal_Array) return Long_Long_Decimal_Array is
		function Remainder is new Decimal_Remainder_Array_Array(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal) return Long_Long_Decimal_Array is
		function Remainder is new Decimal_Remainder_Array_Scalar(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Array) return Long_Long_Decimal_Array is
		function Remainder is new Decimal_Remainder_Scalar_Array(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal_Array) return Long_Long_Decimal_Array is
		function Modulus is new Decimal_Modulus_Array_Array(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal) return Long_Long_Decimal_Array is
		function Modulus is new Decimal_Modulus_Array_Scalar(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Array) return Long_Long_Decimal_Array is
		function Modulus is new Decimal_Modulus_Scalar_Array(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal_Array) return Boolean is
		function Equal is new Decimal_Equal_Array_Array(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal) return Boolean is
		function Equal is new Decimal_Equal_Array_Scalar(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Array) return Boolean is
		function Equal is new Decimal_Equal_Scalar_Array(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal_Array) return Boolean is
		function Lesser is new Decimal_Lesser_Array_Array(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal) return Boolean is
		function Lesser is new Decimal_Lesser_Array_Scalar(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Array) return Boolean is
		function Lesser is new Decimal_Lesser_Scalar_Array(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal_Array) return Boolean is
		function Greater is new Decimal_Greater_Array_Array(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal) return Boolean is
		function Greater is new Decimal_Greater_Array_Scalar(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Array) return Boolean is
		function Greater is new Decimal_Greater_Scalar_Array(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal_Array) return Boolean is
		function Lesser_Or_Equal is new Decimal_Lesser_Or_Equal_Array_Array(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal) return Boolean is
		function Lesser_Or_Equal is new Decimal_Lesser_Or_Equal_Array_Scalar(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Array) return Boolean is
		function Lesser_Or_Equal is new Decimal_Lesser_Or_Equal_Scalar_Array(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal_Array) return Boolean is
		function Greater_Or_Equal is new Decimal_Greater_Or_Equal_Array_Array(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal) return Boolean is
		function Greater_Or_Equal is new Decimal_Greater_Or_Equal_Array_Scalar(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Array) return Boolean is
		function Greater_Or_Equal is new Decimal_Greater_Or_Equal_Scalar_Array(Long_Long_Decimal, Long_Long_Decimal_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-------------------------
	-- Short Float Array --
	-------------------------

	function "+"(Value : Short_Float_Array) return Short_Float_Array is
		function Assert is new Float_Assert_Array(Short_Float, Short_Float_Array);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Short_Float_Array) return Short_Float_Array is
		function Negate is new Float_Negate_Array(Short_Float, Short_Float_Array);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Short_Float_Array) return Short_Float_Array is
		function Absolute_Value is new Float_Absolute_Value_Array(Short_Float, Short_Float_Array);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Short_Float_Array; Right : Short_Float_Array) return Short_Float_Array is
		function Add is new Float_Add_Array_Array(Short_Float, Short_Float_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Float_Array; Right : Short_Float) return Short_Float_Array is
		function Add is new Float_Add_Array_Scalar(Short_Float, Short_Float_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Float; Right : Short_Float_Array) return Short_Float_Array is
		function Add is new Float_Add_Scalar_Array(Short_Float, Short_Float_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Short_Float_Array; Right : Short_Float_Array) return Short_Float_Array is
		function Subtract is new Float_Subtract_Array_Array(Short_Float, Short_Float_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Float_Array; Right : Short_Float) return Short_Float_Array is
		function Subtract is new Float_Subtract_Array_Scalar(Short_Float, Short_Float_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Float; Right : Short_Float_Array) return Short_Float_Array is
		function Subtract is new Float_Subtract_Scalar_Array(Short_Float, Short_Float_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Short_Float_Array; Right : Short_Float_Array) return Short_Float_Array is
		function Multiply is new Float_Multiply_Array_Array(Short_Float, Short_Float_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Float_Array; Right : Short_Float) return Short_Float_Array is
		function Multiply is new Float_Multiply_Array_Scalar(Short_Float, Short_Float_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Float; Right : Short_Float_Array) return Short_Float_Array is
		function Multiply is new Float_Multiply_Scalar_Array(Short_Float, Short_Float_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Short_Float_Array; Right : Short_Float_Array) return Short_Float_Array is
		function Divide is new Float_Divide_Array_Array(Short_Float, Short_Float_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Float_Array; Right : Short_Float) return Short_Float_Array is
		function Divide is new Float_Divide_Array_Scalar(Short_Float, Short_Float_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Float; Right : Short_Float_Array) return Short_Float_Array is
		function Divide is new Float_Divide_Scalar_Array(Short_Float, Short_Float_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Short_Float_Array; Right : Short_Float_Array) return Short_Float_Array is
		function Remainder is new Float_Remainder_Array_Array(Short_Float, Short_Float_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Float_Array; Right : Short_Float) return Short_Float_Array is
		function Remainder is new Float_Remainder_Array_Scalar(Short_Float, Short_Float_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Float; Right : Short_Float_Array) return Short_Float_Array is
		function Remainder is new Float_Remainder_Scalar_Array(Short_Float, Short_Float_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Short_Float_Array; Right : Short_Float_Array) return Short_Float_Array is
		function Modulus is new Float_Modulus_Array_Array(Short_Float, Short_Float_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Float_Array; Right : Short_Float) return Short_Float_Array is
		function Modulus is new Float_Modulus_Array_Scalar(Short_Float, Short_Float_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Float; Right : Short_Float_Array) return Short_Float_Array is
		function Modulus is new Float_Modulus_Scalar_Array(Short_Float, Short_Float_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Short_Float_Array; Right : Short_Float_Array) return Boolean is
		function Equal is new Float_Equal_Array_Array(Short_Float, Short_Float_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Float_Array; Right : Short_Float) return Boolean is
		function Equal is new Float_Equal_Array_Scalar(Short_Float, Short_Float_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Float; Right : Short_Float_Array) return Boolean is
		function Equal is new Float_Equal_Scalar_Array(Short_Float, Short_Float_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Short_Float_Array; Right : Short_Float_Array) return Boolean is
		function Lesser is new Float_Lesser_Array_Array(Short_Float, Short_Float_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Float_Array; Right : Short_Float) return Boolean is
		function Lesser is new Float_Lesser_Array_Scalar(Short_Float, Short_Float_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Float; Right : Short_Float_Array) return Boolean is
		function Lesser is new Float_Lesser_Scalar_Array(Short_Float, Short_Float_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Short_Float_Array; Right : Short_Float_Array) return Boolean is
		function Greater is new Float_Greater_Array_Array(Short_Float, Short_Float_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Float_Array; Right : Short_Float) return Boolean is
		function Greater is new Float_Greater_Array_Scalar(Short_Float, Short_Float_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Float; Right : Short_Float_Array) return Boolean is
		function Greater is new Float_Greater_Scalar_Array(Short_Float, Short_Float_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Short_Float_Array; Right : Short_Float_Array) return Boolean is
		function Lesser_Or_Equal is new Float_Lesser_Or_Equal_Array_Array(Short_Float, Short_Float_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Float_Array; Right : Short_Float) return Boolean is
		function Lesser_Or_Equal is new Float_Lesser_Or_Equal_Array_Scalar(Short_Float, Short_Float_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Float; Right : Short_Float_Array) return Boolean is
		function Lesser_Or_Equal is new Float_Lesser_Or_Equal_Scalar_Array(Short_Float, Short_Float_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Short_Float_Array; Right : Short_Float_Array) return Boolean is
		function Greater_Or_Equal is new Float_Greater_Or_Equal_Array_Array(Short_Float, Short_Float_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Float_Array; Right : Short_Float) return Boolean is
		function Greater_Or_Equal is new Float_Greater_Or_Equal_Array_Scalar(Short_Float, Short_Float_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Float; Right : Short_Float_Array) return Boolean is
		function Greater_Or_Equal is new Float_Greater_Or_Equal_Scalar_Array(Short_Float, Short_Float_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-------------------
	-- Float Array --
	-------------------

	function "+"(Value : Float_Array) return Float_Array is
		function Assert is new Float_Assert_Array(Float, Float_Array);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Float_Array) return Float_Array is
		function Negate is new Float_Negate_Array(Float, Float_Array);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Float_Array) return Float_Array is
		function Absolute_Value is new Float_Absolute_Value_Array(Float, Float_Array);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Float_Array; Right : Float_Array) return Float_Array is
		function Add is new Float_Add_Array_Array(Float, Float_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Float_Array; Right : Float) return Float_Array is
		function Add is new Float_Add_Array_Scalar(Float, Float_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Float; Right : Float_Array) return Float_Array is
		function Add is new Float_Add_Scalar_Array(Float, Float_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Float_Array; Right : Float_Array) return Float_Array is
		function Subtract is new Float_Subtract_Array_Array(Float, Float_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Float_Array; Right : Float) return Float_Array is
		function Subtract is new Float_Subtract_Array_Scalar(Float, Float_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Float; Right : Float_Array) return Float_Array is
		function Subtract is new Float_Subtract_Scalar_Array(Float, Float_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Float_Array; Right : Float_Array) return Float_Array is
		function Multiply is new Float_Multiply_Array_Array(Float, Float_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Float_Array; Right : Float) return Float_Array is
		function Multiply is new Float_Multiply_Array_Scalar(Float, Float_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Float; Right : Float_Array) return Float_Array is
		function Multiply is new Float_Multiply_Scalar_Array(Float, Float_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Float_Array; Right : Float_Array) return Float_Array is
		function Divide is new Float_Divide_Array_Array(Float, Float_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Float_Array; Right : Float) return Float_Array is
		function Divide is new Float_Divide_Array_Scalar(Float, Float_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Float; Right : Float_Array) return Float_Array is
		function Divide is new Float_Divide_Scalar_Array(Float, Float_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Float_Array; Right : Float_Array) return Float_Array is
		function Remainder is new Float_Remainder_Array_Array(Float, Float_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Float_Array; Right : Float) return Float_Array is
		function Remainder is new Float_Remainder_Array_Scalar(Float, Float_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Float; Right : Float_Array) return Float_Array is
		function Remainder is new Float_Remainder_Scalar_Array(Float, Float_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Float_Array; Right : Float_Array) return Float_Array is
		function Modulus is new Float_Modulus_Array_Array(Float, Float_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Float_Array; Right : Float) return Float_Array is
		function Modulus is new Float_Modulus_Array_Scalar(Float, Float_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Float; Right : Float_Array) return Float_Array is
		function Modulus is new Float_Modulus_Scalar_Array(Float, Float_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Float_Array; Right : Float_Array) return Boolean is
		function Equal is new Float_Equal_Array_Array(Float, Float_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Float_Array; Right : Float) return Boolean is
		function Equal is new Float_Equal_Array_Scalar(Float, Float_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Float; Right : Float_Array) return Boolean is
		function Equal is new Float_Equal_Scalar_Array(Float, Float_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Float_Array; Right : Float_Array) return Boolean is
		function Lesser is new Float_Lesser_Array_Array(Float, Float_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Float_Array; Right : Float) return Boolean is
		function Lesser is new Float_Lesser_Array_Scalar(Float, Float_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Float; Right : Float_Array) return Boolean is
		function Lesser is new Float_Lesser_Scalar_Array(Float, Float_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Float_Array; Right : Float_Array) return Boolean is
		function Greater is new Float_Greater_Array_Array(Float, Float_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Float_Array; Right : Float) return Boolean is
		function Greater is new Float_Greater_Array_Scalar(Float, Float_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Float; Right : Float_Array) return Boolean is
		function Greater is new Float_Greater_Scalar_Array(Float, Float_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Float_Array; Right : Float_Array) return Boolean is
		function Lesser_Or_Equal is new Float_Lesser_Or_Equal_Array_Array(Float, Float_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Float_Array; Right : Float) return Boolean is
		function Lesser_Or_Equal is new Float_Lesser_Or_Equal_Array_Scalar(Float, Float_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Float; Right : Float_Array) return Boolean is
		function Lesser_Or_Equal is new Float_Lesser_Or_Equal_Scalar_Array(Float, Float_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Float_Array; Right : Float_Array) return Boolean is
		function Greater_Or_Equal is new Float_Greater_Or_Equal_Array_Array(Float, Float_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Float_Array; Right : Float) return Boolean is
		function Greater_Or_Equal is new Float_Greater_Or_Equal_Array_Scalar(Float, Float_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Float; Right : Float_Array) return Boolean is
		function Greater_Or_Equal is new Float_Greater_Or_Equal_Scalar_Array(Float, Float_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	------------------------
	-- Long Float Array --
	------------------------

	function "+"(Value : Long_Float_Array) return Long_Float_Array is
		function Assert is new Float_Assert_Array(Long_Float, Long_Float_Array);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Long_Float_Array) return Long_Float_Array is
		function Negate is new Float_Negate_Array(Long_Float, Long_Float_Array);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Long_Float_Array) return Long_Float_Array is
		function Absolute_Value is new Float_Absolute_Value_Array(Long_Float, Long_Float_Array);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Long_Float_Array; Right : Long_Float_Array) return Long_Float_Array is
		function Add is new Float_Add_Array_Array(Long_Float, Long_Float_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Float_Array; Right : Long_Float) return Long_Float_Array is
		function Add is new Float_Add_Array_Scalar(Long_Float, Long_Float_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Float; Right : Long_Float_Array) return Long_Float_Array is
		function Add is new Float_Add_Scalar_Array(Long_Float, Long_Float_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Long_Float_Array; Right : Long_Float_Array) return Long_Float_Array is
		function Subtract is new Float_Subtract_Array_Array(Long_Float, Long_Float_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Float_Array; Right : Long_Float) return Long_Float_Array is
		function Subtract is new Float_Subtract_Array_Scalar(Long_Float, Long_Float_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Float; Right : Long_Float_Array) return Long_Float_Array is
		function Subtract is new Float_Subtract_Scalar_Array(Long_Float, Long_Float_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Long_Float_Array; Right : Long_Float_Array) return Long_Float_Array is
		function Multiply is new Float_Multiply_Array_Array(Long_Float, Long_Float_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Float_Array; Right : Long_Float) return Long_Float_Array is
		function Multiply is new Float_Multiply_Array_Scalar(Long_Float, Long_Float_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Float; Right : Long_Float_Array) return Long_Float_Array is
		function Multiply is new Float_Multiply_Scalar_Array(Long_Float, Long_Float_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Long_Float_Array; Right : Long_Float_Array) return Long_Float_Array is
		function Divide is new Float_Divide_Array_Array(Long_Float, Long_Float_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Float_Array; Right : Long_Float) return Long_Float_Array is
		function Divide is new Float_Divide_Array_Scalar(Long_Float, Long_Float_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Float; Right : Long_Float_Array) return Long_Float_Array is
		function Divide is new Float_Divide_Scalar_Array(Long_Float, Long_Float_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Long_Float_Array; Right : Long_Float_Array) return Long_Float_Array is
		function Remainder is new Float_Remainder_Array_Array(Long_Float, Long_Float_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Float_Array; Right : Long_Float) return Long_Float_Array is
		function Remainder is new Float_Remainder_Array_Scalar(Long_Float, Long_Float_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Float; Right : Long_Float_Array) return Long_Float_Array is
		function Remainder is new Float_Remainder_Scalar_Array(Long_Float, Long_Float_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Long_Float_Array; Right : Long_Float_Array) return Long_Float_Array is
		function Modulus is new Float_Modulus_Array_Array(Long_Float, Long_Float_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Float_Array; Right : Long_Float) return Long_Float_Array is
		function Modulus is new Float_Modulus_Array_Scalar(Long_Float, Long_Float_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Float; Right : Long_Float_Array) return Long_Float_Array is
		function Modulus is new Float_Modulus_Scalar_Array(Long_Float, Long_Float_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Long_Float_Array; Right : Long_Float_Array) return Boolean is
		function Equal is new Float_Equal_Array_Array(Long_Float, Long_Float_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Float_Array; Right : Long_Float) return Boolean is
		function Equal is new Float_Equal_Array_Scalar(Long_Float, Long_Float_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Float; Right : Long_Float_Array) return Boolean is
		function Equal is new Float_Equal_Scalar_Array(Long_Float, Long_Float_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Long_Float_Array; Right : Long_Float_Array) return Boolean is
		function Lesser is new Float_Lesser_Array_Array(Long_Float, Long_Float_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Float_Array; Right : Long_Float) return Boolean is
		function Lesser is new Float_Lesser_Array_Scalar(Long_Float, Long_Float_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Float; Right : Long_Float_Array) return Boolean is
		function Lesser is new Float_Lesser_Scalar_Array(Long_Float, Long_Float_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Long_Float_Array; Right : Long_Float_Array) return Boolean is
		function Greater is new Float_Greater_Array_Array(Long_Float, Long_Float_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Float_Array; Right : Long_Float) return Boolean is
		function Greater is new Float_Greater_Array_Scalar(Long_Float, Long_Float_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Float; Right : Long_Float_Array) return Boolean is
		function Greater is new Float_Greater_Scalar_Array(Long_Float, Long_Float_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Long_Float_Array; Right : Long_Float_Array) return Boolean is
		function Lesser_Or_Equal is new Float_Lesser_Or_Equal_Array_Array(Long_Float, Long_Float_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Float_Array; Right : Long_Float) return Boolean is
		function Lesser_Or_Equal is new Float_Lesser_Or_Equal_Array_Scalar(Long_Float, Long_Float_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Float; Right : Long_Float_Array) return Boolean is
		function Lesser_Or_Equal is new Float_Lesser_Or_Equal_Scalar_Array(Long_Float, Long_Float_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Long_Float_Array; Right : Long_Float_Array) return Boolean is
		function Greater_Or_Equal is new Float_Greater_Or_Equal_Array_Array(Long_Float, Long_Float_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Float_Array; Right : Long_Float) return Boolean is
		function Greater_Or_Equal is new Float_Greater_Or_Equal_Array_Scalar(Long_Float, Long_Float_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Float; Right : Long_Float_Array) return Boolean is
		function Greater_Or_Equal is new Float_Greater_Or_Equal_Scalar_Array(Long_Float, Long_Float_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-----------------------------
	-- Long Long Float Array --
	-----------------------------

	function "+"(Value : Long_Long_Float_Array) return Long_Long_Float_Array is
		function Assert is new Float_Assert_Array(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Long_Long_Float_Array) return Long_Long_Float_Array is
		function Negate is new Float_Negate_Array(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Long_Long_Float_Array) return Long_Long_Float_Array is
		function Absolute_Value is new Float_Absolute_Value_Array(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Long_Long_Float_Array; Right : Long_Long_Float_Array) return Long_Long_Float_Array is
		function Add is new Float_Add_Array_Array(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Long_Float_Array; Right : Long_Long_Float) return Long_Long_Float_Array is
		function Add is new Float_Add_Array_Scalar(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Long_Float; Right : Long_Long_Float_Array) return Long_Long_Float_Array is
		function Add is new Float_Add_Scalar_Array(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Long_Long_Float_Array; Right : Long_Long_Float_Array) return Long_Long_Float_Array is
		function Subtract is new Float_Subtract_Array_Array(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Long_Float_Array; Right : Long_Long_Float) return Long_Long_Float_Array is
		function Subtract is new Float_Subtract_Array_Scalar(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Long_Float; Right : Long_Long_Float_Array) return Long_Long_Float_Array is
		function Subtract is new Float_Subtract_Scalar_Array(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Long_Long_Float_Array; Right : Long_Long_Float_Array) return Long_Long_Float_Array is
		function Multiply is new Float_Multiply_Array_Array(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Long_Float_Array; Right : Long_Long_Float) return Long_Long_Float_Array is
		function Multiply is new Float_Multiply_Array_Scalar(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Long_Float; Right : Long_Long_Float_Array) return Long_Long_Float_Array is
		function Multiply is new Float_Multiply_Scalar_Array(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Long_Long_Float_Array; Right : Long_Long_Float_Array) return Long_Long_Float_Array is
		function Divide is new Float_Divide_Array_Array(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Long_Float_Array; Right : Long_Long_Float) return Long_Long_Float_Array is
		function Divide is new Float_Divide_Array_Scalar(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Long_Float; Right : Long_Long_Float_Array) return Long_Long_Float_Array is
		function Divide is new Float_Divide_Scalar_Array(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Long_Long_Float_Array; Right : Long_Long_Float_Array) return Long_Long_Float_Array is
		function Remainder is new Float_Remainder_Array_Array(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Long_Float_Array; Right : Long_Long_Float) return Long_Long_Float_Array is
		function Remainder is new Float_Remainder_Array_Scalar(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Long_Float; Right : Long_Long_Float_Array) return Long_Long_Float_Array is
		function Remainder is new Float_Remainder_Scalar_Array(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Long_Long_Float_Array; Right : Long_Long_Float_Array) return Long_Long_Float_Array is
		function Modulus is new Float_Modulus_Array_Array(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Long_Float_Array; Right : Long_Long_Float) return Long_Long_Float_Array is
		function Modulus is new Float_Modulus_Array_Scalar(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Long_Float; Right : Long_Long_Float_Array) return Long_Long_Float_Array is
		function Modulus is new Float_Modulus_Scalar_Array(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Long_Long_Float_Array; Right : Long_Long_Float_Array) return Boolean is
		function Equal is new Float_Equal_Array_Array(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Long_Float_Array; Right : Long_Long_Float) return Boolean is
		function Equal is new Float_Equal_Array_Scalar(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Long_Float; Right : Long_Long_Float_Array) return Boolean is
		function Equal is new Float_Equal_Scalar_Array(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Long_Long_Float_Array; Right : Long_Long_Float_Array) return Boolean is
		function Lesser is new Float_Lesser_Array_Array(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Long_Float_Array; Right : Long_Long_Float) return Boolean is
		function Lesser is new Float_Lesser_Array_Scalar(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Long_Float; Right : Long_Long_Float_Array) return Boolean is
		function Lesser is new Float_Lesser_Scalar_Array(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Long_Long_Float_Array; Right : Long_Long_Float_Array) return Boolean is
		function Greater is new Float_Greater_Array_Array(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Long_Float_Array; Right : Long_Long_Float) return Boolean is
		function Greater is new Float_Greater_Array_Scalar(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Long_Float; Right : Long_Long_Float_Array) return Boolean is
		function Greater is new Float_Greater_Scalar_Array(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Long_Long_Float_Array; Right : Long_Long_Float_Array) return Boolean is
		function Lesser_Or_Equal is new Float_Lesser_Or_Equal_Array_Array(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Long_Float_Array; Right : Long_Long_Float) return Boolean is
		function Lesser_Or_Equal is new Float_Lesser_Or_Equal_Array_Scalar(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Long_Float; Right : Long_Long_Float_Array) return Boolean is
		function Lesser_Or_Equal is new Float_Lesser_Or_Equal_Scalar_Array(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Long_Long_Float_Array; Right : Long_Long_Float_Array) return Boolean is
		function Greater_Or_Equal is new Float_Greater_Or_Equal_Array_Array(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Long_Float_Array; Right : Long_Long_Float) return Boolean is
		function Greater_Or_Equal is new Float_Greater_Or_Equal_Array_Scalar(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Long_Float; Right : Long_Long_Float_Array) return Boolean is
		function Greater_Or_Equal is new Float_Greater_Or_Equal_Scalar_Array(Long_Long_Float, Long_Long_Float_Array);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

end Mathematics.Arrays;
