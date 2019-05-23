with Generics.Mathematics.Matrices;
use Generics.Mathematics.Matrices;

package body Mathematics.Matrices is

	--------------------------------
	-- Short Short Integer Matrix --
	--------------------------------

	function "+"(Value : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix is
		function Assert is new Integer_Assert_Matrix(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix is
		function Negate is new Integer_Negate_Matrix(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix is
		function Absolute_Value is new Integer_Absolute_Value_Matrix(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix is
		function Add is new Integer_Add_Matrix_Matrix(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer) return Short_Short_Integer_Matrix is
		function Add is new Integer_Add_Matrix_Scalar(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Short_Integer; Right : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix is
		function Add is new Integer_Add_Scalar_Matrix(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix is
		function Subtract is new Integer_Subtract_Matrix_Matrix(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer) return Short_Short_Integer_Matrix is
		function Subtract is new Integer_Subtract_Matrix_Scalar(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Short_Integer; Right : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix is
		function Subtract is new Integer_Subtract_Scalar_Matrix(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix is
		function Multiply is new Integer_Multiply_Matrix_Matrix(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer) return Short_Short_Integer_Matrix is
		function Multiply is new Integer_Multiply_Matrix_Scalar(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Short_Integer; Right : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix is
		function Multiply is new Integer_Multiply_Scalar_Matrix(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix is
		function Divide is new Integer_Divide_Matrix_Matrix(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer) return Short_Short_Integer_Matrix is
		function Divide is new Integer_Divide_Matrix_Scalar(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Short_Integer; Right : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix is
		function Divide is new Integer_Divide_Scalar_Matrix(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix is
		function Remainder is new Integer_Remainder_Matrix_Matrix(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer) return Short_Short_Integer_Matrix is
		function Remainder is new Integer_Remainder_Matrix_Scalar(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Short_Integer; Right : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix is
		function Remainder is new Integer_Remainder_Scalar_Matrix(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix is
		function Modulus is new Integer_Modulus_Matrix_Matrix(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer) return Short_Short_Integer_Matrix is
		function Modulus is new Integer_Modulus_Matrix_Scalar(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Short_Integer; Right : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix is
		function Modulus is new Integer_Modulus_Scalar_Matrix(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer_Matrix) return Boolean is
		function Equal is new Integer_Equal_Matrix_Matrix(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer) return Boolean is
		function Equal is new Integer_Equal_Matrix_Scalar(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Short_Integer; Right : Short_Short_Integer_Matrix) return Boolean is
		function Equal is new Integer_Equal_Scalar_Matrix(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer_Matrix) return Boolean is
		function Lesser is new Integer_Lesser_Matrix_Matrix(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer) return Boolean is
		function Lesser is new Integer_Lesser_Matrix_Scalar(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Short_Integer; Right : Short_Short_Integer_Matrix) return Boolean is
		function Lesser is new Integer_Lesser_Scalar_Matrix(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer_Matrix) return Boolean is
		function Greater is new Integer_Greater_Matrix_Matrix(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer) return Boolean is
		function Greater is new Integer_Greater_Matrix_Scalar(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Short_Integer; Right : Short_Short_Integer_Matrix) return Boolean is
		function Greater is new Integer_Greater_Scalar_Matrix(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer_Matrix) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Matrix_Matrix(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Matrix_Scalar(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Short_Integer; Right : Short_Short_Integer_Matrix) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Scalar_Matrix(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer_Matrix) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Matrix_Matrix(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Matrix_Scalar(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Short_Integer; Right : Short_Short_Integer_Matrix) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Scalar_Matrix(Short_Short_Integer, Short_Short_Integer_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	--------------------------
	-- Short Integer Matrix --
	--------------------------

	function "+"(Value : Short_Integer_Matrix) return Short_Integer_Matrix is
		function Assert is new Integer_Assert_Matrix(Short_Integer, Short_Integer_Matrix);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Short_Integer_Matrix) return Short_Integer_Matrix is
		function Negate is new Integer_Negate_Matrix(Short_Integer, Short_Integer_Matrix);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Short_Integer_Matrix) return Short_Integer_Matrix is
		function Absolute_Value is new Integer_Absolute_Value_Matrix(Short_Integer, Short_Integer_Matrix);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Short_Integer_Matrix; Right : Short_Integer_Matrix) return Short_Integer_Matrix is
		function Add is new Integer_Add_Matrix_Matrix(Short_Integer, Short_Integer_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Integer_Matrix; Right : Short_Integer) return Short_Integer_Matrix is
		function Add is new Integer_Add_Matrix_Scalar(Short_Integer, Short_Integer_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Integer; Right : Short_Integer_Matrix) return Short_Integer_Matrix is
		function Add is new Integer_Add_Scalar_Matrix(Short_Integer, Short_Integer_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Short_Integer_Matrix; Right : Short_Integer_Matrix) return Short_Integer_Matrix is
		function Subtract is new Integer_Subtract_Matrix_Matrix(Short_Integer, Short_Integer_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Integer_Matrix; Right : Short_Integer) return Short_Integer_Matrix is
		function Subtract is new Integer_Subtract_Matrix_Scalar(Short_Integer, Short_Integer_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Integer; Right : Short_Integer_Matrix) return Short_Integer_Matrix is
		function Subtract is new Integer_Subtract_Scalar_Matrix(Short_Integer, Short_Integer_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Short_Integer_Matrix; Right : Short_Integer_Matrix) return Short_Integer_Matrix is
		function Multiply is new Integer_Multiply_Matrix_Matrix(Short_Integer, Short_Integer_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Integer_Matrix; Right : Short_Integer) return Short_Integer_Matrix is
		function Multiply is new Integer_Multiply_Matrix_Scalar(Short_Integer, Short_Integer_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Integer; Right : Short_Integer_Matrix) return Short_Integer_Matrix is
		function Multiply is new Integer_Multiply_Scalar_Matrix(Short_Integer, Short_Integer_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Short_Integer_Matrix; Right : Short_Integer_Matrix) return Short_Integer_Matrix is
		function Divide is new Integer_Divide_Matrix_Matrix(Short_Integer, Short_Integer_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Integer_Matrix; Right : Short_Integer) return Short_Integer_Matrix is
		function Divide is new Integer_Divide_Matrix_Scalar(Short_Integer, Short_Integer_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Integer; Right : Short_Integer_Matrix) return Short_Integer_Matrix is
		function Divide is new Integer_Divide_Scalar_Matrix(Short_Integer, Short_Integer_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Short_Integer_Matrix; Right : Short_Integer_Matrix) return Short_Integer_Matrix is
		function Remainder is new Integer_Remainder_Matrix_Matrix(Short_Integer, Short_Integer_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Integer_Matrix; Right : Short_Integer) return Short_Integer_Matrix is
		function Remainder is new Integer_Remainder_Matrix_Scalar(Short_Integer, Short_Integer_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Integer; Right : Short_Integer_Matrix) return Short_Integer_Matrix is
		function Remainder is new Integer_Remainder_Scalar_Matrix(Short_Integer, Short_Integer_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Short_Integer_Matrix; Right : Short_Integer_Matrix) return Short_Integer_Matrix is
		function Modulus is new Integer_Modulus_Matrix_Matrix(Short_Integer, Short_Integer_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Integer_Matrix; Right : Short_Integer) return Short_Integer_Matrix is
		function Modulus is new Integer_Modulus_Matrix_Scalar(Short_Integer, Short_Integer_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Integer; Right : Short_Integer_Matrix) return Short_Integer_Matrix is
		function Modulus is new Integer_Modulus_Scalar_Matrix(Short_Integer, Short_Integer_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Short_Integer_Matrix; Right : Short_Integer_Matrix) return Boolean is
		function Equal is new Integer_Equal_Matrix_Matrix(Short_Integer, Short_Integer_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Integer_Matrix; Right : Short_Integer) return Boolean is
		function Equal is new Integer_Equal_Matrix_Scalar(Short_Integer, Short_Integer_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Integer; Right : Short_Integer_Matrix) return Boolean is
		function Equal is new Integer_Equal_Scalar_Matrix(Short_Integer, Short_Integer_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Short_Integer_Matrix; Right : Short_Integer_Matrix) return Boolean is
		function Lesser is new Integer_Lesser_Matrix_Matrix(Short_Integer, Short_Integer_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Integer_Matrix; Right : Short_Integer) return Boolean is
		function Lesser is new Integer_Lesser_Matrix_Scalar(Short_Integer, Short_Integer_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Integer; Right : Short_Integer_Matrix) return Boolean is
		function Lesser is new Integer_Lesser_Scalar_Matrix(Short_Integer, Short_Integer_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Short_Integer_Matrix; Right : Short_Integer_Matrix) return Boolean is
		function Greater is new Integer_Greater_Matrix_Matrix(Short_Integer, Short_Integer_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Integer_Matrix; Right : Short_Integer) return Boolean is
		function Greater is new Integer_Greater_Matrix_Scalar(Short_Integer, Short_Integer_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Integer; Right : Short_Integer_Matrix) return Boolean is
		function Greater is new Integer_Greater_Scalar_Matrix(Short_Integer, Short_Integer_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Short_Integer_Matrix; Right : Short_Integer_Matrix) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Matrix_Matrix(Short_Integer, Short_Integer_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Integer_Matrix; Right : Short_Integer) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Matrix_Scalar(Short_Integer, Short_Integer_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Integer; Right : Short_Integer_Matrix) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Scalar_Matrix(Short_Integer, Short_Integer_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Short_Integer_Matrix; Right : Short_Integer_Matrix) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Matrix_Matrix(Short_Integer, Short_Integer_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Integer_Matrix; Right : Short_Integer) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Matrix_Scalar(Short_Integer, Short_Integer_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Integer; Right : Short_Integer_Matrix) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Scalar_Matrix(Short_Integer, Short_Integer_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	--------------------
	-- Integer Matrix --
	--------------------

	function "+"(Value : Integer_Matrix) return Integer_Matrix is
		function Assert is new Integer_Assert_Matrix(Integer, Integer_Matrix);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Integer_Matrix) return Integer_Matrix is
		function Negate is new Integer_Negate_Matrix(Integer, Integer_Matrix);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Integer_Matrix) return Integer_Matrix is
		function Absolute_Value is new Integer_Absolute_Value_Matrix(Integer, Integer_Matrix);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Integer_Matrix; Right : Integer_Matrix) return Integer_Matrix is
		function Add is new Integer_Add_Matrix_Matrix(Integer, Integer_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Integer_Matrix; Right : Integer) return Integer_Matrix is
		function Add is new Integer_Add_Matrix_Scalar(Integer, Integer_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Integer; Right : Integer_Matrix) return Integer_Matrix is
		function Add is new Integer_Add_Scalar_Matrix(Integer, Integer_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Integer_Matrix; Right : Integer_Matrix) return Integer_Matrix is
		function Subtract is new Integer_Subtract_Matrix_Matrix(Integer, Integer_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Integer_Matrix; Right : Integer) return Integer_Matrix is
		function Subtract is new Integer_Subtract_Matrix_Scalar(Integer, Integer_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Integer; Right : Integer_Matrix) return Integer_Matrix is
		function Subtract is new Integer_Subtract_Scalar_Matrix(Integer, Integer_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Integer_Matrix; Right : Integer_Matrix) return Integer_Matrix is
		function Multiply is new Integer_Multiply_Matrix_Matrix(Integer, Integer_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Integer_Matrix; Right : Integer) return Integer_Matrix is
		function Multiply is new Integer_Multiply_Matrix_Scalar(Integer, Integer_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Integer; Right : Integer_Matrix) return Integer_Matrix is
		function Multiply is new Integer_Multiply_Scalar_Matrix(Integer, Integer_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Integer_Matrix; Right : Integer_Matrix) return Integer_Matrix is
		function Divide is new Integer_Divide_Matrix_Matrix(Integer, Integer_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Integer_Matrix; Right : Integer) return Integer_Matrix is
		function Divide is new Integer_Divide_Matrix_Scalar(Integer, Integer_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Integer; Right : Integer_Matrix) return Integer_Matrix is
		function Divide is new Integer_Divide_Scalar_Matrix(Integer, Integer_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Integer_Matrix; Right : Integer_Matrix) return Integer_Matrix is
		function Remainder is new Integer_Remainder_Matrix_Matrix(Integer, Integer_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Integer_Matrix; Right : Integer) return Integer_Matrix is
		function Remainder is new Integer_Remainder_Matrix_Scalar(Integer, Integer_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Integer; Right : Integer_Matrix) return Integer_Matrix is
		function Remainder is new Integer_Remainder_Scalar_Matrix(Integer, Integer_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Integer_Matrix; Right : Integer_Matrix) return Integer_Matrix is
		function Modulus is new Integer_Modulus_Matrix_Matrix(Integer, Integer_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Integer_Matrix; Right : Integer) return Integer_Matrix is
		function Modulus is new Integer_Modulus_Matrix_Scalar(Integer, Integer_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Integer; Right : Integer_Matrix) return Integer_Matrix is
		function Modulus is new Integer_Modulus_Scalar_Matrix(Integer, Integer_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Integer_Matrix; Right : Integer_Matrix) return Boolean is
		function Equal is new Integer_Equal_Matrix_Matrix(Integer, Integer_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Integer_Matrix; Right : Integer) return Boolean is
		function Equal is new Integer_Equal_Matrix_Scalar(Integer, Integer_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Integer; Right : Integer_Matrix) return Boolean is
		function Equal is new Integer_Equal_Scalar_Matrix(Integer, Integer_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Integer_Matrix; Right : Integer_Matrix) return Boolean is
		function Lesser is new Integer_Lesser_Matrix_Matrix(Integer, Integer_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Integer_Matrix; Right : Integer) return Boolean is
		function Lesser is new Integer_Lesser_Matrix_Scalar(Integer, Integer_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Integer; Right : Integer_Matrix) return Boolean is
		function Lesser is new Integer_Lesser_Scalar_Matrix(Integer, Integer_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Integer_Matrix; Right : Integer_Matrix) return Boolean is
		function Greater is new Integer_Greater_Matrix_Matrix(Integer, Integer_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Integer_Matrix; Right : Integer) return Boolean is
		function Greater is new Integer_Greater_Matrix_Scalar(Integer, Integer_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Integer; Right : Integer_Matrix) return Boolean is
		function Greater is new Integer_Greater_Scalar_Matrix(Integer, Integer_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Integer_Matrix; Right : Integer_Matrix) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Matrix_Matrix(Integer, Integer_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Integer_Matrix; Right : Integer) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Matrix_Scalar(Integer, Integer_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Integer; Right : Integer_Matrix) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Scalar_Matrix(Integer, Integer_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Integer_Matrix; Right : Integer_Matrix) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Matrix_Matrix(Integer, Integer_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Integer_Matrix; Right : Integer) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Matrix_Scalar(Integer, Integer_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Integer; Right : Integer_Matrix) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Scalar_Matrix(Integer, Integer_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-------------------------
	-- Long Integer Matrix --
	-------------------------

	function "+"(Value : Long_Integer_Matrix) return Long_Integer_Matrix is
		function Assert is new Integer_Assert_Matrix(Long_Integer, Long_Integer_Matrix);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Long_Integer_Matrix) return Long_Integer_Matrix is
		function Negate is new Integer_Negate_Matrix(Long_Integer, Long_Integer_Matrix);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Long_Integer_Matrix) return Long_Integer_Matrix is
		function Absolute_Value is new Integer_Absolute_Value_Matrix(Long_Integer, Long_Integer_Matrix);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Long_Integer_Matrix; Right : Long_Integer_Matrix) return Long_Integer_Matrix is
		function Add is new Integer_Add_Matrix_Matrix(Long_Integer, Long_Integer_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Integer_Matrix; Right : Long_Integer) return Long_Integer_Matrix is
		function Add is new Integer_Add_Matrix_Scalar(Long_Integer, Long_Integer_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Integer; Right : Long_Integer_Matrix) return Long_Integer_Matrix is
		function Add is new Integer_Add_Scalar_Matrix(Long_Integer, Long_Integer_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Long_Integer_Matrix; Right : Long_Integer_Matrix) return Long_Integer_Matrix is
		function Subtract is new Integer_Subtract_Matrix_Matrix(Long_Integer, Long_Integer_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Integer_Matrix; Right : Long_Integer) return Long_Integer_Matrix is
		function Subtract is new Integer_Subtract_Matrix_Scalar(Long_Integer, Long_Integer_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Integer; Right : Long_Integer_Matrix) return Long_Integer_Matrix is
		function Subtract is new Integer_Subtract_Scalar_Matrix(Long_Integer, Long_Integer_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Long_Integer_Matrix; Right : Long_Integer_Matrix) return Long_Integer_Matrix is
		function Multiply is new Integer_Multiply_Matrix_Matrix(Long_Integer, Long_Integer_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Integer_Matrix; Right : Long_Integer) return Long_Integer_Matrix is
		function Multiply is new Integer_Multiply_Matrix_Scalar(Long_Integer, Long_Integer_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Integer; Right : Long_Integer_Matrix) return Long_Integer_Matrix is
		function Multiply is new Integer_Multiply_Scalar_Matrix(Long_Integer, Long_Integer_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Long_Integer_Matrix; Right : Long_Integer_Matrix) return Long_Integer_Matrix is
		function Divide is new Integer_Divide_Matrix_Matrix(Long_Integer, Long_Integer_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Integer_Matrix; Right : Long_Integer) return Long_Integer_Matrix is
		function Divide is new Integer_Divide_Matrix_Scalar(Long_Integer, Long_Integer_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Integer; Right : Long_Integer_Matrix) return Long_Integer_Matrix is
		function Divide is new Integer_Divide_Scalar_Matrix(Long_Integer, Long_Integer_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Long_Integer_Matrix; Right : Long_Integer_Matrix) return Long_Integer_Matrix is
		function Remainder is new Integer_Remainder_Matrix_Matrix(Long_Integer, Long_Integer_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Integer_Matrix; Right : Long_Integer) return Long_Integer_Matrix is
		function Remainder is new Integer_Remainder_Matrix_Scalar(Long_Integer, Long_Integer_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Integer; Right : Long_Integer_Matrix) return Long_Integer_Matrix is
		function Remainder is new Integer_Remainder_Scalar_Matrix(Long_Integer, Long_Integer_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Long_Integer_Matrix; Right : Long_Integer_Matrix) return Long_Integer_Matrix is
		function Modulus is new Integer_Modulus_Matrix_Matrix(Long_Integer, Long_Integer_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Integer_Matrix; Right : Long_Integer) return Long_Integer_Matrix is
		function Modulus is new Integer_Modulus_Matrix_Scalar(Long_Integer, Long_Integer_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Integer; Right : Long_Integer_Matrix) return Long_Integer_Matrix is
		function Modulus is new Integer_Modulus_Scalar_Matrix(Long_Integer, Long_Integer_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Long_Integer_Matrix; Right : Long_Integer_Matrix) return Boolean is
		function Equal is new Integer_Equal_Matrix_Matrix(Long_Integer, Long_Integer_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Integer_Matrix; Right : Long_Integer) return Boolean is
		function Equal is new Integer_Equal_Matrix_Scalar(Long_Integer, Long_Integer_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Integer; Right : Long_Integer_Matrix) return Boolean is
		function Equal is new Integer_Equal_Scalar_Matrix(Long_Integer, Long_Integer_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Long_Integer_Matrix; Right : Long_Integer_Matrix) return Boolean is
		function Lesser is new Integer_Lesser_Matrix_Matrix(Long_Integer, Long_Integer_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Integer_Matrix; Right : Long_Integer) return Boolean is
		function Lesser is new Integer_Lesser_Matrix_Scalar(Long_Integer, Long_Integer_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Integer; Right : Long_Integer_Matrix) return Boolean is
		function Lesser is new Integer_Lesser_Scalar_Matrix(Long_Integer, Long_Integer_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Long_Integer_Matrix; Right : Long_Integer_Matrix) return Boolean is
		function Greater is new Integer_Greater_Matrix_Matrix(Long_Integer, Long_Integer_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Integer_Matrix; Right : Long_Integer) return Boolean is
		function Greater is new Integer_Greater_Matrix_Scalar(Long_Integer, Long_Integer_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Integer; Right : Long_Integer_Matrix) return Boolean is
		function Greater is new Integer_Greater_Scalar_Matrix(Long_Integer, Long_Integer_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Long_Integer_Matrix; Right : Long_Integer_Matrix) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Matrix_Matrix(Long_Integer, Long_Integer_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Integer_Matrix; Right : Long_Integer) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Matrix_Scalar(Long_Integer, Long_Integer_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Integer; Right : Long_Integer_Matrix) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Scalar_Matrix(Long_Integer, Long_Integer_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Long_Integer_Matrix; Right : Long_Integer_Matrix) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Matrix_Matrix(Long_Integer, Long_Integer_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Integer_Matrix; Right : Long_Integer) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Matrix_Scalar(Long_Integer, Long_Integer_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Integer; Right : Long_Integer_Matrix) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Scalar_Matrix(Long_Integer, Long_Integer_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	------------------------------
	-- Long Long Integer Matrix --
	------------------------------

	function "+"(Value : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix is
		function Assert is new Integer_Assert_Matrix(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix is
		function Negate is new Integer_Negate_Matrix(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix is
		function Absolute_Value is new Integer_Absolute_Value_Matrix(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix is
		function Add is new Integer_Add_Matrix_Matrix(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer) return Long_Long_Integer_Matrix is
		function Add is new Integer_Add_Matrix_Scalar(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Long_Integer; Right : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix is
		function Add is new Integer_Add_Scalar_Matrix(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix is
		function Subtract is new Integer_Subtract_Matrix_Matrix(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer) return Long_Long_Integer_Matrix is
		function Subtract is new Integer_Subtract_Matrix_Scalar(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Long_Integer; Right : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix is
		function Subtract is new Integer_Subtract_Scalar_Matrix(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix is
		function Multiply is new Integer_Multiply_Matrix_Matrix(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer) return Long_Long_Integer_Matrix is
		function Multiply is new Integer_Multiply_Matrix_Scalar(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Long_Integer; Right : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix is
		function Multiply is new Integer_Multiply_Scalar_Matrix(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix is
		function Divide is new Integer_Divide_Matrix_Matrix(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer) return Long_Long_Integer_Matrix is
		function Divide is new Integer_Divide_Matrix_Scalar(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Long_Integer; Right : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix is
		function Divide is new Integer_Divide_Scalar_Matrix(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix is
		function Remainder is new Integer_Remainder_Matrix_Matrix(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer) return Long_Long_Integer_Matrix is
		function Remainder is new Integer_Remainder_Matrix_Scalar(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Long_Integer; Right : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix is
		function Remainder is new Integer_Remainder_Scalar_Matrix(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix is
		function Modulus is new Integer_Modulus_Matrix_Matrix(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer) return Long_Long_Integer_Matrix is
		function Modulus is new Integer_Modulus_Matrix_Scalar(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Long_Integer; Right : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix is
		function Modulus is new Integer_Modulus_Scalar_Matrix(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer_Matrix) return Boolean is
		function Equal is new Integer_Equal_Matrix_Matrix(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer) return Boolean is
		function Equal is new Integer_Equal_Matrix_Scalar(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Long_Integer; Right : Long_Long_Integer_Matrix) return Boolean is
		function Equal is new Integer_Equal_Scalar_Matrix(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer_Matrix) return Boolean is
		function Lesser is new Integer_Lesser_Matrix_Matrix(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer) return Boolean is
		function Lesser is new Integer_Lesser_Matrix_Scalar(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Long_Integer; Right : Long_Long_Integer_Matrix) return Boolean is
		function Lesser is new Integer_Lesser_Scalar_Matrix(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer_Matrix) return Boolean is
		function Greater is new Integer_Greater_Matrix_Matrix(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer) return Boolean is
		function Greater is new Integer_Greater_Matrix_Scalar(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Long_Integer; Right : Long_Long_Integer_Matrix) return Boolean is
		function Greater is new Integer_Greater_Scalar_Matrix(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer_Matrix) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Matrix_Matrix(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Matrix_Scalar(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Long_Integer; Right : Long_Long_Integer_Matrix) return Boolean is
		function Lesser_Or_Equal is new Integer_Lesser_Or_Equal_Scalar_Matrix(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer_Matrix) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Matrix_Matrix(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Matrix_Scalar(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Long_Integer; Right : Long_Long_Integer_Matrix) return Boolean is
		function Greater_Or_Equal is new Integer_Greater_Or_Equal_Scalar_Matrix(Long_Long_Integer, Long_Long_Integer_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-------------------------------
	-- Short Short Modular Matrix --
	-------------------------------

	function "+"(Value : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix is
		function Assert is new Modular_Assert_Matrix(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Assert(Value);
	end "+";

	function "abs"(Value : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix is
		function Absolute_Value is new Modular_Absolute_Value_Matrix(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix is
		function Add is new Modular_Add_Matrix_Matrix(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular) return Short_Short_Modular_Matrix is
		function Add is new Modular_Add_Matrix_Scalar(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Short_Modular; Right : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix is
		function Add is new Modular_Add_Scalar_Matrix(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix is
		function Subtract is new Modular_Subtract_Matrix_Matrix(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular) return Short_Short_Modular_Matrix is
		function Subtract is new Modular_Subtract_Matrix_Scalar(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Short_Modular; Right : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix is
		function Subtract is new Modular_Subtract_Scalar_Matrix(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix is
		function Multiply is new Modular_Multiply_Matrix_Matrix(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular) return Short_Short_Modular_Matrix is
		function Multiply is new Modular_Multiply_Matrix_Scalar(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Short_Modular; Right : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix is
		function Multiply is new Modular_Multiply_Scalar_Matrix(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix is
		function Divide is new Modular_Divide_Matrix_Matrix(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular) return Short_Short_Modular_Matrix is
		function Divide is new Modular_Divide_Matrix_Scalar(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Short_Modular; Right : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix is
		function Divide is new Modular_Divide_Scalar_Matrix(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix is
		function Remainder is new Modular_Remainder_Matrix_Matrix(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular) return Short_Short_Modular_Matrix is
		function Remainder is new Modular_Remainder_Matrix_Scalar(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Short_Modular; Right : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix is
		function Remainder is new Modular_Remainder_Scalar_Matrix(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix is
		function Modulus is new Modular_Modulus_Matrix_Matrix(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular) return Short_Short_Modular_Matrix is
		function Modulus is new Modular_Modulus_Matrix_Scalar(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Short_Modular; Right : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix is
		function Modulus is new Modular_Modulus_Scalar_Matrix(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular_Matrix) return Boolean is
		function Equal is new Modular_Equal_Matrix_Matrix(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular) return Boolean is
		function Equal is new Modular_Equal_Matrix_Scalar(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Short_Modular; Right : Short_Short_Modular_Matrix) return Boolean is
		function Equal is new Modular_Equal_Scalar_Matrix(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular_Matrix) return Boolean is
		function Lesser is new Modular_Lesser_Matrix_Matrix(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular) return Boolean is
		function Lesser is new Modular_Lesser_Matrix_Scalar(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Short_Modular; Right : Short_Short_Modular_Matrix) return Boolean is
		function Lesser is new Modular_Lesser_Scalar_Matrix(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular_Matrix) return Boolean is
		function Greater is new Modular_Greater_Matrix_Matrix(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular) return Boolean is
		function Greater is new Modular_Greater_Matrix_Scalar(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Short_Modular; Right : Short_Short_Modular_Matrix) return Boolean is
		function Greater is new Modular_Greater_Scalar_Matrix(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular_Matrix) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Matrix_Matrix(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Matrix_Scalar(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Short_Modular; Right : Short_Short_Modular_Matrix) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Scalar_Matrix(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular_Matrix) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Matrix_Matrix(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Matrix_Scalar(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Short_Modular; Right : Short_Short_Modular_Matrix) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Scalar_Matrix(Short_Short_Modular, Short_Short_Modular_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-------------------------
	-- Short Modular Matrix --
	-------------------------

	function "+"(Value : Short_Modular_Matrix) return Short_Modular_Matrix is
		function Assert is new Modular_Assert_Matrix(Short_Modular, Short_Modular_Matrix);
	begin
		return Assert(Value);
	end "+";

	function "abs"(Value : Short_Modular_Matrix) return Short_Modular_Matrix is
		function Absolute_Value is new Modular_Absolute_Value_Matrix(Short_Modular, Short_Modular_Matrix);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Short_Modular_Matrix; Right : Short_Modular_Matrix) return Short_Modular_Matrix is
		function Add is new Modular_Add_Matrix_Matrix(Short_Modular, Short_Modular_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Modular_Matrix; Right : Short_Modular) return Short_Modular_Matrix is
		function Add is new Modular_Add_Matrix_Scalar(Short_Modular, Short_Modular_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Modular; Right : Short_Modular_Matrix) return Short_Modular_Matrix is
		function Add is new Modular_Add_Scalar_Matrix(Short_Modular, Short_Modular_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Short_Modular_Matrix; Right : Short_Modular_Matrix) return Short_Modular_Matrix is
		function Subtract is new Modular_Subtract_Matrix_Matrix(Short_Modular, Short_Modular_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Modular_Matrix; Right : Short_Modular) return Short_Modular_Matrix is
		function Subtract is new Modular_Subtract_Matrix_Scalar(Short_Modular, Short_Modular_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Modular; Right : Short_Modular_Matrix) return Short_Modular_Matrix is
		function Subtract is new Modular_Subtract_Scalar_Matrix(Short_Modular, Short_Modular_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Short_Modular_Matrix; Right : Short_Modular_Matrix) return Short_Modular_Matrix is
		function Multiply is new Modular_Multiply_Matrix_Matrix(Short_Modular, Short_Modular_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Modular_Matrix; Right : Short_Modular) return Short_Modular_Matrix is
		function Multiply is new Modular_Multiply_Matrix_Scalar(Short_Modular, Short_Modular_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Modular; Right : Short_Modular_Matrix) return Short_Modular_Matrix is
		function Multiply is new Modular_Multiply_Scalar_Matrix(Short_Modular, Short_Modular_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Short_Modular_Matrix; Right : Short_Modular_Matrix) return Short_Modular_Matrix is
		function Divide is new Modular_Divide_Matrix_Matrix(Short_Modular, Short_Modular_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Modular_Matrix; Right : Short_Modular) return Short_Modular_Matrix is
		function Divide is new Modular_Divide_Matrix_Scalar(Short_Modular, Short_Modular_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Modular; Right : Short_Modular_Matrix) return Short_Modular_Matrix is
		function Divide is new Modular_Divide_Scalar_Matrix(Short_Modular, Short_Modular_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Short_Modular_Matrix; Right : Short_Modular_Matrix) return Short_Modular_Matrix is
		function Remainder is new Modular_Remainder_Matrix_Matrix(Short_Modular, Short_Modular_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Modular_Matrix; Right : Short_Modular) return Short_Modular_Matrix is
		function Remainder is new Modular_Remainder_Matrix_Scalar(Short_Modular, Short_Modular_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Modular; Right : Short_Modular_Matrix) return Short_Modular_Matrix is
		function Remainder is new Modular_Remainder_Scalar_Matrix(Short_Modular, Short_Modular_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Short_Modular_Matrix; Right : Short_Modular_Matrix) return Short_Modular_Matrix is
		function Modulus is new Modular_Modulus_Matrix_Matrix(Short_Modular, Short_Modular_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Modular_Matrix; Right : Short_Modular) return Short_Modular_Matrix is
		function Modulus is new Modular_Modulus_Matrix_Scalar(Short_Modular, Short_Modular_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Modular; Right : Short_Modular_Matrix) return Short_Modular_Matrix is
		function Modulus is new Modular_Modulus_Scalar_Matrix(Short_Modular, Short_Modular_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Short_Modular_Matrix; Right : Short_Modular_Matrix) return Boolean is
		function Equal is new Modular_Equal_Matrix_Matrix(Short_Modular, Short_Modular_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Modular_Matrix; Right : Short_Modular) return Boolean is
		function Equal is new Modular_Equal_Matrix_Scalar(Short_Modular, Short_Modular_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Modular; Right : Short_Modular_Matrix) return Boolean is
		function Equal is new Modular_Equal_Scalar_Matrix(Short_Modular, Short_Modular_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Short_Modular_Matrix; Right : Short_Modular_Matrix) return Boolean is
		function Lesser is new Modular_Lesser_Matrix_Matrix(Short_Modular, Short_Modular_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Modular_Matrix; Right : Short_Modular) return Boolean is
		function Lesser is new Modular_Lesser_Matrix_Scalar(Short_Modular, Short_Modular_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Modular; Right : Short_Modular_Matrix) return Boolean is
		function Lesser is new Modular_Lesser_Scalar_Matrix(Short_Modular, Short_Modular_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Short_Modular_Matrix; Right : Short_Modular_Matrix) return Boolean is
		function Greater is new Modular_Greater_Matrix_Matrix(Short_Modular, Short_Modular_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Modular_Matrix; Right : Short_Modular) return Boolean is
		function Greater is new Modular_Greater_Matrix_Scalar(Short_Modular, Short_Modular_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Modular; Right : Short_Modular_Matrix) return Boolean is
		function Greater is new Modular_Greater_Scalar_Matrix(Short_Modular, Short_Modular_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Short_Modular_Matrix; Right : Short_Modular_Matrix) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Matrix_Matrix(Short_Modular, Short_Modular_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Modular_Matrix; Right : Short_Modular) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Matrix_Scalar(Short_Modular, Short_Modular_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Modular; Right : Short_Modular_Matrix) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Scalar_Matrix(Short_Modular, Short_Modular_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Short_Modular_Matrix; Right : Short_Modular_Matrix) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Matrix_Matrix(Short_Modular, Short_Modular_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Modular_Matrix; Right : Short_Modular) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Matrix_Scalar(Short_Modular, Short_Modular_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Modular; Right : Short_Modular_Matrix) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Scalar_Matrix(Short_Modular, Short_Modular_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-------------------
	-- Modular Matrix --
	-------------------

	function "+"(Value : Modular_Matrix) return Modular_Matrix is
		function Assert is new Modular_Assert_Matrix(Modular, Modular_Matrix);
	begin
		return Assert(Value);
	end "+";

	function "abs"(Value : Modular_Matrix) return Modular_Matrix is
		function Absolute_Value is new Modular_Absolute_Value_Matrix(Modular, Modular_Matrix);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Modular_Matrix; Right : Modular_Matrix) return Modular_Matrix is
		function Add is new Modular_Add_Matrix_Matrix(Modular, Modular_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Modular_Matrix; Right : Modular) return Modular_Matrix is
		function Add is new Modular_Add_Matrix_Scalar(Modular, Modular_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Modular; Right : Modular_Matrix) return Modular_Matrix is
		function Add is new Modular_Add_Scalar_Matrix(Modular, Modular_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Modular_Matrix; Right : Modular_Matrix) return Modular_Matrix is
		function Subtract is new Modular_Subtract_Matrix_Matrix(Modular, Modular_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Modular_Matrix; Right : Modular) return Modular_Matrix is
		function Subtract is new Modular_Subtract_Matrix_Scalar(Modular, Modular_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Modular; Right : Modular_Matrix) return Modular_Matrix is
		function Subtract is new Modular_Subtract_Scalar_Matrix(Modular, Modular_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Modular_Matrix; Right : Modular_Matrix) return Modular_Matrix is
		function Multiply is new Modular_Multiply_Matrix_Matrix(Modular, Modular_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Modular_Matrix; Right : Modular) return Modular_Matrix is
		function Multiply is new Modular_Multiply_Matrix_Scalar(Modular, Modular_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Modular; Right : Modular_Matrix) return Modular_Matrix is
		function Multiply is new Modular_Multiply_Scalar_Matrix(Modular, Modular_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Modular_Matrix; Right : Modular_Matrix) return Modular_Matrix is
		function Divide is new Modular_Divide_Matrix_Matrix(Modular, Modular_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Modular_Matrix; Right : Modular) return Modular_Matrix is
		function Divide is new Modular_Divide_Matrix_Scalar(Modular, Modular_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Modular; Right : Modular_Matrix) return Modular_Matrix is
		function Divide is new Modular_Divide_Scalar_Matrix(Modular, Modular_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Modular_Matrix; Right : Modular_Matrix) return Modular_Matrix is
		function Remainder is new Modular_Remainder_Matrix_Matrix(Modular, Modular_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Modular_Matrix; Right : Modular) return Modular_Matrix is
		function Remainder is new Modular_Remainder_Matrix_Scalar(Modular, Modular_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Modular; Right : Modular_Matrix) return Modular_Matrix is
		function Remainder is new Modular_Remainder_Scalar_Matrix(Modular, Modular_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Modular_Matrix; Right : Modular_Matrix) return Modular_Matrix is
		function Modulus is new Modular_Modulus_Matrix_Matrix(Modular, Modular_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Modular_Matrix; Right : Modular) return Modular_Matrix is
		function Modulus is new Modular_Modulus_Matrix_Scalar(Modular, Modular_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Modular; Right : Modular_Matrix) return Modular_Matrix is
		function Modulus is new Modular_Modulus_Scalar_Matrix(Modular, Modular_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Modular_Matrix; Right : Modular_Matrix) return Boolean is
		function Equal is new Modular_Equal_Matrix_Matrix(Modular, Modular_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Modular_Matrix; Right : Modular) return Boolean is
		function Equal is new Modular_Equal_Matrix_Scalar(Modular, Modular_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Modular; Right : Modular_Matrix) return Boolean is
		function Equal is new Modular_Equal_Scalar_Matrix(Modular, Modular_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Modular_Matrix; Right : Modular_Matrix) return Boolean is
		function Lesser is new Modular_Lesser_Matrix_Matrix(Modular, Modular_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Modular_Matrix; Right : Modular) return Boolean is
		function Lesser is new Modular_Lesser_Matrix_Scalar(Modular, Modular_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Modular; Right : Modular_Matrix) return Boolean is
		function Lesser is new Modular_Lesser_Scalar_Matrix(Modular, Modular_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Modular_Matrix; Right : Modular_Matrix) return Boolean is
		function Greater is new Modular_Greater_Matrix_Matrix(Modular, Modular_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Modular_Matrix; Right : Modular) return Boolean is
		function Greater is new Modular_Greater_Matrix_Scalar(Modular, Modular_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Modular; Right : Modular_Matrix) return Boolean is
		function Greater is new Modular_Greater_Scalar_Matrix(Modular, Modular_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Modular_Matrix; Right : Modular_Matrix) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Matrix_Matrix(Modular, Modular_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Modular_Matrix; Right : Modular) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Matrix_Scalar(Modular, Modular_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Modular; Right : Modular_Matrix) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Scalar_Matrix(Modular, Modular_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Modular_Matrix; Right : Modular_Matrix) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Matrix_Matrix(Modular, Modular_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Modular_Matrix; Right : Modular) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Matrix_Scalar(Modular, Modular_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Modular; Right : Modular_Matrix) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Scalar_Matrix(Modular, Modular_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	------------------------
	-- Long Modular Matrix --
	------------------------

	function "+"(Value : Long_Modular_Matrix) return Long_Modular_Matrix is
		function Assert is new Modular_Assert_Matrix(Long_Modular, Long_Modular_Matrix);
	begin
		return Assert(Value);
	end "+";

	function "abs"(Value : Long_Modular_Matrix) return Long_Modular_Matrix is
		function Absolute_Value is new Modular_Absolute_Value_Matrix(Long_Modular, Long_Modular_Matrix);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Long_Modular_Matrix; Right : Long_Modular_Matrix) return Long_Modular_Matrix is
		function Add is new Modular_Add_Matrix_Matrix(Long_Modular, Long_Modular_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Modular_Matrix; Right : Long_Modular) return Long_Modular_Matrix is
		function Add is new Modular_Add_Matrix_Scalar(Long_Modular, Long_Modular_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Modular; Right : Long_Modular_Matrix) return Long_Modular_Matrix is
		function Add is new Modular_Add_Scalar_Matrix(Long_Modular, Long_Modular_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Long_Modular_Matrix; Right : Long_Modular_Matrix) return Long_Modular_Matrix is
		function Subtract is new Modular_Subtract_Matrix_Matrix(Long_Modular, Long_Modular_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Modular_Matrix; Right : Long_Modular) return Long_Modular_Matrix is
		function Subtract is new Modular_Subtract_Matrix_Scalar(Long_Modular, Long_Modular_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Modular; Right : Long_Modular_Matrix) return Long_Modular_Matrix is
		function Subtract is new Modular_Subtract_Scalar_Matrix(Long_Modular, Long_Modular_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Long_Modular_Matrix; Right : Long_Modular_Matrix) return Long_Modular_Matrix is
		function Multiply is new Modular_Multiply_Matrix_Matrix(Long_Modular, Long_Modular_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Modular_Matrix; Right : Long_Modular) return Long_Modular_Matrix is
		function Multiply is new Modular_Multiply_Matrix_Scalar(Long_Modular, Long_Modular_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Modular; Right : Long_Modular_Matrix) return Long_Modular_Matrix is
		function Multiply is new Modular_Multiply_Scalar_Matrix(Long_Modular, Long_Modular_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Long_Modular_Matrix; Right : Long_Modular_Matrix) return Long_Modular_Matrix is
		function Divide is new Modular_Divide_Matrix_Matrix(Long_Modular, Long_Modular_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Modular_Matrix; Right : Long_Modular) return Long_Modular_Matrix is
		function Divide is new Modular_Divide_Matrix_Scalar(Long_Modular, Long_Modular_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Modular; Right : Long_Modular_Matrix) return Long_Modular_Matrix is
		function Divide is new Modular_Divide_Scalar_Matrix(Long_Modular, Long_Modular_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Long_Modular_Matrix; Right : Long_Modular_Matrix) return Long_Modular_Matrix is
		function Remainder is new Modular_Remainder_Matrix_Matrix(Long_Modular, Long_Modular_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Modular_Matrix; Right : Long_Modular) return Long_Modular_Matrix is
		function Remainder is new Modular_Remainder_Matrix_Scalar(Long_Modular, Long_Modular_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Modular; Right : Long_Modular_Matrix) return Long_Modular_Matrix is
		function Remainder is new Modular_Remainder_Scalar_Matrix(Long_Modular, Long_Modular_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Long_Modular_Matrix; Right : Long_Modular_Matrix) return Long_Modular_Matrix is
		function Modulus is new Modular_Modulus_Matrix_Matrix(Long_Modular, Long_Modular_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Modular_Matrix; Right : Long_Modular) return Long_Modular_Matrix is
		function Modulus is new Modular_Modulus_Matrix_Scalar(Long_Modular, Long_Modular_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Modular; Right : Long_Modular_Matrix) return Long_Modular_Matrix is
		function Modulus is new Modular_Modulus_Scalar_Matrix(Long_Modular, Long_Modular_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Long_Modular_Matrix; Right : Long_Modular_Matrix) return Boolean is
		function Equal is new Modular_Equal_Matrix_Matrix(Long_Modular, Long_Modular_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Modular_Matrix; Right : Long_Modular) return Boolean is
		function Equal is new Modular_Equal_Matrix_Scalar(Long_Modular, Long_Modular_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Modular; Right : Long_Modular_Matrix) return Boolean is
		function Equal is new Modular_Equal_Scalar_Matrix(Long_Modular, Long_Modular_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Long_Modular_Matrix; Right : Long_Modular_Matrix) return Boolean is
		function Lesser is new Modular_Lesser_Matrix_Matrix(Long_Modular, Long_Modular_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Modular_Matrix; Right : Long_Modular) return Boolean is
		function Lesser is new Modular_Lesser_Matrix_Scalar(Long_Modular, Long_Modular_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Modular; Right : Long_Modular_Matrix) return Boolean is
		function Lesser is new Modular_Lesser_Scalar_Matrix(Long_Modular, Long_Modular_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Long_Modular_Matrix; Right : Long_Modular_Matrix) return Boolean is
		function Greater is new Modular_Greater_Matrix_Matrix(Long_Modular, Long_Modular_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Modular_Matrix; Right : Long_Modular) return Boolean is
		function Greater is new Modular_Greater_Matrix_Scalar(Long_Modular, Long_Modular_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Modular; Right : Long_Modular_Matrix) return Boolean is
		function Greater is new Modular_Greater_Scalar_Matrix(Long_Modular, Long_Modular_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Long_Modular_Matrix; Right : Long_Modular_Matrix) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Matrix_Matrix(Long_Modular, Long_Modular_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Modular_Matrix; Right : Long_Modular) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Matrix_Scalar(Long_Modular, Long_Modular_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Modular; Right : Long_Modular_Matrix) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Scalar_Matrix(Long_Modular, Long_Modular_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Long_Modular_Matrix; Right : Long_Modular_Matrix) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Matrix_Matrix(Long_Modular, Long_Modular_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Modular_Matrix; Right : Long_Modular) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Matrix_Scalar(Long_Modular, Long_Modular_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Modular; Right : Long_Modular_Matrix) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Scalar_Matrix(Long_Modular, Long_Modular_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-----------------------------
	-- Long Long Modular Matrix --
	-----------------------------

	function "+"(Value : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix is
		function Assert is new Modular_Assert_Matrix(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Assert(Value);
	end "+";

	function "abs"(Value : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix is
		function Absolute_Value is new Modular_Absolute_Value_Matrix(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix is
		function Add is new Modular_Add_Matrix_Matrix(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular) return Long_Long_Modular_Matrix is
		function Add is new Modular_Add_Matrix_Scalar(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Long_Modular; Right : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix is
		function Add is new Modular_Add_Scalar_Matrix(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix is
		function Subtract is new Modular_Subtract_Matrix_Matrix(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular) return Long_Long_Modular_Matrix is
		function Subtract is new Modular_Subtract_Matrix_Scalar(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Long_Modular; Right : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix is
		function Subtract is new Modular_Subtract_Scalar_Matrix(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix is
		function Multiply is new Modular_Multiply_Matrix_Matrix(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular) return Long_Long_Modular_Matrix is
		function Multiply is new Modular_Multiply_Matrix_Scalar(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Long_Modular; Right : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix is
		function Multiply is new Modular_Multiply_Scalar_Matrix(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix is
		function Divide is new Modular_Divide_Matrix_Matrix(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular) return Long_Long_Modular_Matrix is
		function Divide is new Modular_Divide_Matrix_Scalar(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Long_Modular; Right : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix is
		function Divide is new Modular_Divide_Scalar_Matrix(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix is
		function Remainder is new Modular_Remainder_Matrix_Matrix(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular) return Long_Long_Modular_Matrix is
		function Remainder is new Modular_Remainder_Matrix_Scalar(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Long_Modular; Right : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix is
		function Remainder is new Modular_Remainder_Scalar_Matrix(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix is
		function Modulus is new Modular_Modulus_Matrix_Matrix(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular) return Long_Long_Modular_Matrix is
		function Modulus is new Modular_Modulus_Matrix_Scalar(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Long_Modular; Right : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix is
		function Modulus is new Modular_Modulus_Scalar_Matrix(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular_Matrix) return Boolean is
		function Equal is new Modular_Equal_Matrix_Matrix(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular) return Boolean is
		function Equal is new Modular_Equal_Matrix_Scalar(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Long_Modular; Right : Long_Long_Modular_Matrix) return Boolean is
		function Equal is new Modular_Equal_Scalar_Matrix(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular_Matrix) return Boolean is
		function Lesser is new Modular_Lesser_Matrix_Matrix(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular) return Boolean is
		function Lesser is new Modular_Lesser_Matrix_Scalar(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Long_Modular; Right : Long_Long_Modular_Matrix) return Boolean is
		function Lesser is new Modular_Lesser_Scalar_Matrix(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular_Matrix) return Boolean is
		function Greater is new Modular_Greater_Matrix_Matrix(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular) return Boolean is
		function Greater is new Modular_Greater_Matrix_Scalar(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Long_Modular; Right : Long_Long_Modular_Matrix) return Boolean is
		function Greater is new Modular_Greater_Scalar_Matrix(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular_Matrix) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Matrix_Matrix(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Matrix_Scalar(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Long_Modular; Right : Long_Long_Modular_Matrix) return Boolean is
		function Lesser_Or_Equal is new Modular_Lesser_Or_Equal_Scalar_Matrix(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular_Matrix) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Matrix_Matrix(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Matrix_Scalar(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Long_Modular; Right : Long_Long_Modular_Matrix) return Boolean is
		function Greater_Or_Equal is new Modular_Greater_Or_Equal_Scalar_Matrix(Long_Long_Modular, Long_Long_Modular_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-----------------------------
	-- Short Short Fixed Matrix --
	-----------------------------

	function "+"(Value : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix is
		function Assert is new Fixed_Assert_Matrix(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix is
		function Negate is new Fixed_Negate_Matrix(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix is
		function Absolute_Value is new Fixed_Absolute_Value_Matrix(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix is
		function Add is new Fixed_Add_Matrix_Matrix(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed) return Short_Short_Fixed_Matrix is
		function Add is new Fixed_Add_Matrix_Scalar(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix is
		function Add is new Fixed_Add_Scalar_Matrix(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix is
		function Subtract is new Fixed_Subtract_Matrix_Matrix(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed) return Short_Short_Fixed_Matrix is
		function Subtract is new Fixed_Subtract_Matrix_Scalar(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix is
		function Subtract is new Fixed_Subtract_Scalar_Matrix(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix is
		function Multiply is new Fixed_Multiply_Matrix_Matrix(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed) return Short_Short_Fixed_Matrix is
		function Multiply is new Fixed_Multiply_Matrix_Scalar(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix is
		function Multiply is new Fixed_Multiply_Scalar_Matrix(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix is
		function Divide is new Fixed_Divide_Matrix_Matrix(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed) return Short_Short_Fixed_Matrix is
		function Divide is new Fixed_Divide_Matrix_Scalar(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix is
		function Divide is new Fixed_Divide_Scalar_Matrix(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix is
		function Remainder is new Fixed_Remainder_Matrix_Matrix(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed) return Short_Short_Fixed_Matrix is
		function Remainder is new Fixed_Remainder_Matrix_Scalar(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix is
		function Remainder is new Fixed_Remainder_Scalar_Matrix(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix is
		function Modulus is new Fixed_Modulus_Matrix_Matrix(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed) return Short_Short_Fixed_Matrix is
		function Modulus is new Fixed_Modulus_Matrix_Scalar(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix is
		function Modulus is new Fixed_Modulus_Scalar_Matrix(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed_Matrix) return Boolean is
		function Equal is new Fixed_Equal_Matrix_Matrix(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed) return Boolean is
		function Equal is new Fixed_Equal_Matrix_Scalar(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Matrix) return Boolean is
		function Equal is new Fixed_Equal_Scalar_Matrix(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed_Matrix) return Boolean is
		function Lesser is new Fixed_Lesser_Matrix_Matrix(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed) return Boolean is
		function Lesser is new Fixed_Lesser_Matrix_Scalar(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Matrix) return Boolean is
		function Lesser is new Fixed_Lesser_Scalar_Matrix(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed_Matrix) return Boolean is
		function Greater is new Fixed_Greater_Matrix_Matrix(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed) return Boolean is
		function Greater is new Fixed_Greater_Matrix_Scalar(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Matrix) return Boolean is
		function Greater is new Fixed_Greater_Scalar_Matrix(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed_Matrix) return Boolean is
		function Lesser_Or_Equal is new Fixed_Lesser_Or_Equal_Matrix_Matrix(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed) return Boolean is
		function Lesser_Or_Equal is new Fixed_Lesser_Or_Equal_Matrix_Scalar(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Matrix) return Boolean is
		function Lesser_Or_Equal is new Fixed_Lesser_Or_Equal_Scalar_Matrix(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed_Matrix) return Boolean is
		function Greater_Or_Equal is new Fixed_Greater_Or_Equal_Matrix_Matrix(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed) return Boolean is
		function Greater_Or_Equal is new Fixed_Greater_Or_Equal_Matrix_Scalar(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Matrix) return Boolean is
		function Greater_Or_Equal is new Fixed_Greater_Or_Equal_Scalar_Matrix(Short_Short_Fixed, Short_Short_Fixed_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-----------------------
	-- Short Fixed Matrix --
	-----------------------

	function "+"(Value : Short_Fixed_Matrix) return Short_Fixed_Matrix is
		function Assert is new Fixed_Assert_Matrix(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Short_Fixed_Matrix) return Short_Fixed_Matrix is
		function Negate is new Fixed_Negate_Matrix(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Short_Fixed_Matrix) return Short_Fixed_Matrix is
		function Absolute_Value is new Fixed_Absolute_Value_Matrix(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Short_Fixed_Matrix; Right : Short_Fixed_Matrix) return Short_Fixed_Matrix is
		function Add is new Fixed_Add_Matrix_Matrix(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Fixed_Matrix; Right : Short_Fixed) return Short_Fixed_Matrix is
		function Add is new Fixed_Add_Matrix_Scalar(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Fixed; Right : Short_Fixed_Matrix) return Short_Fixed_Matrix is
		function Add is new Fixed_Add_Scalar_Matrix(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Short_Fixed_Matrix; Right : Short_Fixed_Matrix) return Short_Fixed_Matrix is
		function Subtract is new Fixed_Subtract_Matrix_Matrix(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Fixed_Matrix; Right : Short_Fixed) return Short_Fixed_Matrix is
		function Subtract is new Fixed_Subtract_Matrix_Scalar(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Fixed; Right : Short_Fixed_Matrix) return Short_Fixed_Matrix is
		function Subtract is new Fixed_Subtract_Scalar_Matrix(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Short_Fixed_Matrix; Right : Short_Fixed_Matrix) return Short_Fixed_Matrix is
		function Multiply is new Fixed_Multiply_Matrix_Matrix(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Fixed_Matrix; Right : Short_Fixed) return Short_Fixed_Matrix is
		function Multiply is new Fixed_Multiply_Matrix_Scalar(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Fixed; Right : Short_Fixed_Matrix) return Short_Fixed_Matrix is
		function Multiply is new Fixed_Multiply_Scalar_Matrix(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Short_Fixed_Matrix; Right : Short_Fixed_Matrix) return Short_Fixed_Matrix is
		function Divide is new Fixed_Divide_Matrix_Matrix(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Fixed_Matrix; Right : Short_Fixed) return Short_Fixed_Matrix is
		function Divide is new Fixed_Divide_Matrix_Scalar(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Fixed; Right : Short_Fixed_Matrix) return Short_Fixed_Matrix is
		function Divide is new Fixed_Divide_Scalar_Matrix(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Short_Fixed_Matrix; Right : Short_Fixed_Matrix) return Short_Fixed_Matrix is
		function Remainder is new Fixed_Remainder_Matrix_Matrix(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Fixed_Matrix; Right : Short_Fixed) return Short_Fixed_Matrix is
		function Remainder is new Fixed_Remainder_Matrix_Scalar(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Fixed; Right : Short_Fixed_Matrix) return Short_Fixed_Matrix is
		function Remainder is new Fixed_Remainder_Scalar_Matrix(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Short_Fixed_Matrix; Right : Short_Fixed_Matrix) return Short_Fixed_Matrix is
		function Modulus is new Fixed_Modulus_Matrix_Matrix(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Fixed_Matrix; Right : Short_Fixed) return Short_Fixed_Matrix is
		function Modulus is new Fixed_Modulus_Matrix_Scalar(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Fixed; Right : Short_Fixed_Matrix) return Short_Fixed_Matrix is
		function Modulus is new Fixed_Modulus_Scalar_Matrix(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Short_Fixed_Matrix; Right : Short_Fixed_Matrix) return Boolean is
		function Equal is new Fixed_Equal_Matrix_Matrix(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Fixed_Matrix; Right : Short_Fixed) return Boolean is
		function Equal is new Fixed_Equal_Matrix_Scalar(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Fixed; Right : Short_Fixed_Matrix) return Boolean is
		function Equal is new Fixed_Equal_Scalar_Matrix(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Short_Fixed_Matrix; Right : Short_Fixed_Matrix) return Boolean is
		function Lesser is new Fixed_Lesser_Matrix_Matrix(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Fixed_Matrix; Right : Short_Fixed) return Boolean is
		function Lesser is new Fixed_Lesser_Matrix_Scalar(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Fixed; Right : Short_Fixed_Matrix) return Boolean is
		function Lesser is new Fixed_Lesser_Scalar_Matrix(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Short_Fixed_Matrix; Right : Short_Fixed_Matrix) return Boolean is
		function Greater is new Fixed_Greater_Matrix_Matrix(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Fixed_Matrix; Right : Short_Fixed) return Boolean is
		function Greater is new Fixed_Greater_Matrix_Scalar(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Fixed; Right : Short_Fixed_Matrix) return Boolean is
		function Greater is new Fixed_Greater_Scalar_Matrix(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Short_Fixed_Matrix; Right : Short_Fixed_Matrix) return Boolean is
		function Lesser_Or_Equal is new Fixed_Lesser_Or_Equal_Matrix_Matrix(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Fixed_Matrix; Right : Short_Fixed) return Boolean is
		function Lesser_Or_Equal is new Fixed_Lesser_Or_Equal_Matrix_Scalar(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Fixed; Right : Short_Fixed_Matrix) return Boolean is
		function Lesser_Or_Equal is new Fixed_Lesser_Or_Equal_Scalar_Matrix(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Short_Fixed_Matrix; Right : Short_Fixed_Matrix) return Boolean is
		function Greater_Or_Equal is new Fixed_Greater_Or_Equal_Matrix_Matrix(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Fixed_Matrix; Right : Short_Fixed) return Boolean is
		function Greater_Or_Equal is new Fixed_Greater_Or_Equal_Matrix_Scalar(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Fixed; Right : Short_Fixed_Matrix) return Boolean is
		function Greater_Or_Equal is new Fixed_Greater_Or_Equal_Scalar_Matrix(Short_Fixed, Short_Fixed_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-----------------
	-- Fixed Matrix --
	-----------------

	function "+"(Value : Fixed_Matrix) return Fixed_Matrix is
		function Assert is new Fixed_Assert_Matrix(Fixed, Fixed_Matrix);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Fixed_Matrix) return Fixed_Matrix is
		function Negate is new Fixed_Negate_Matrix(Fixed, Fixed_Matrix);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Fixed_Matrix) return Fixed_Matrix is
		function Absolute_Value is new Fixed_Absolute_Value_Matrix(Fixed, Fixed_Matrix);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Fixed_Matrix; Right : Fixed_Matrix) return Fixed_Matrix is
		function Add is new Fixed_Add_Matrix_Matrix(Fixed, Fixed_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Fixed_Matrix; Right : Fixed) return Fixed_Matrix is
		function Add is new Fixed_Add_Matrix_Scalar(Fixed, Fixed_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Fixed; Right : Fixed_Matrix) return Fixed_Matrix is
		function Add is new Fixed_Add_Scalar_Matrix(Fixed, Fixed_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Fixed_Matrix; Right : Fixed_Matrix) return Fixed_Matrix is
		function Subtract is new Fixed_Subtract_Matrix_Matrix(Fixed, Fixed_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Fixed_Matrix; Right : Fixed) return Fixed_Matrix is
		function Subtract is new Fixed_Subtract_Matrix_Scalar(Fixed, Fixed_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Fixed; Right : Fixed_Matrix) return Fixed_Matrix is
		function Subtract is new Fixed_Subtract_Scalar_Matrix(Fixed, Fixed_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Fixed_Matrix; Right : Fixed_Matrix) return Fixed_Matrix is
		function Multiply is new Fixed_Multiply_Matrix_Matrix(Fixed, Fixed_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Fixed_Matrix; Right : Fixed) return Fixed_Matrix is
		function Multiply is new Fixed_Multiply_Matrix_Scalar(Fixed, Fixed_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Fixed; Right : Fixed_Matrix) return Fixed_Matrix is
		function Multiply is new Fixed_Multiply_Scalar_Matrix(Fixed, Fixed_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Fixed_Matrix; Right : Fixed_Matrix) return Fixed_Matrix is
		function Divide is new Fixed_Divide_Matrix_Matrix(Fixed, Fixed_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Fixed_Matrix; Right : Fixed) return Fixed_Matrix is
		function Divide is new Fixed_Divide_Matrix_Scalar(Fixed, Fixed_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Fixed; Right : Fixed_Matrix) return Fixed_Matrix is
		function Divide is new Fixed_Divide_Scalar_Matrix(Fixed, Fixed_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Fixed_Matrix; Right : Fixed_Matrix) return Fixed_Matrix is
		function Remainder is new Fixed_Remainder_Matrix_Matrix(Fixed, Fixed_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Fixed_Matrix; Right : Fixed) return Fixed_Matrix is
		function Remainder is new Fixed_Remainder_Matrix_Scalar(Fixed, Fixed_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Fixed; Right : Fixed_Matrix) return Fixed_Matrix is
		function Remainder is new Fixed_Remainder_Scalar_Matrix(Fixed, Fixed_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Fixed_Matrix; Right : Fixed_Matrix) return Fixed_Matrix is
		function Modulus is new Fixed_Modulus_Matrix_Matrix(Fixed, Fixed_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Fixed_Matrix; Right : Fixed) return Fixed_Matrix is
		function Modulus is new Fixed_Modulus_Matrix_Scalar(Fixed, Fixed_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Fixed; Right : Fixed_Matrix) return Fixed_Matrix is
		function Modulus is new Fixed_Modulus_Scalar_Matrix(Fixed, Fixed_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Fixed_Matrix; Right : Fixed_Matrix) return Boolean is
		function Equal is new Fixed_Equal_Matrix_Matrix(Fixed, Fixed_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Fixed_Matrix; Right : Fixed) return Boolean is
		function Equal is new Fixed_Equal_Matrix_Scalar(Fixed, Fixed_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Fixed; Right : Fixed_Matrix) return Boolean is
		function Equal is new Fixed_Equal_Scalar_Matrix(Fixed, Fixed_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Fixed_Matrix; Right : Fixed_Matrix) return Boolean is
		function Lesser is new Fixed_Lesser_Matrix_Matrix(Fixed, Fixed_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Fixed_Matrix; Right : Fixed) return Boolean is
		function Lesser is new Fixed_Lesser_Matrix_Scalar(Fixed, Fixed_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Fixed; Right : Fixed_Matrix) return Boolean is
		function Lesser is new Fixed_Lesser_Scalar_Matrix(Fixed, Fixed_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Fixed_Matrix; Right : Fixed_Matrix) return Boolean is
		function Greater is new Fixed_Greater_Matrix_Matrix(Fixed, Fixed_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Fixed_Matrix; Right : Fixed) return Boolean is
		function Greater is new Fixed_Greater_Matrix_Scalar(Fixed, Fixed_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Fixed; Right : Fixed_Matrix) return Boolean is
		function Greater is new Fixed_Greater_Scalar_Matrix(Fixed, Fixed_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Fixed_Matrix; Right : Fixed_Matrix) return Boolean is
		function Lesser_Or_Equal is new Fixed_Lesser_Or_Equal_Matrix_Matrix(Fixed, Fixed_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Fixed_Matrix; Right : Fixed) return Boolean is
		function Lesser_Or_Equal is new Fixed_Lesser_Or_Equal_Matrix_Scalar(Fixed, Fixed_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Fixed; Right : Fixed_Matrix) return Boolean is
		function Lesser_Or_Equal is new Fixed_Lesser_Or_Equal_Scalar_Matrix(Fixed, Fixed_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Fixed_Matrix; Right : Fixed_Matrix) return Boolean is
		function Greater_Or_Equal is new Fixed_Greater_Or_Equal_Matrix_Matrix(Fixed, Fixed_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Fixed_Matrix; Right : Fixed) return Boolean is
		function Greater_Or_Equal is new Fixed_Greater_Or_Equal_Matrix_Scalar(Fixed, Fixed_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Fixed; Right : Fixed_Matrix) return Boolean is
		function Greater_Or_Equal is new Fixed_Greater_Or_Equal_Scalar_Matrix(Fixed, Fixed_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	----------------------
	-- Long Fixed Matrix --
	----------------------

	function "+"(Value : Long_Fixed_Matrix) return Long_Fixed_Matrix is
		function Assert is new Fixed_Assert_Matrix(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Long_Fixed_Matrix) return Long_Fixed_Matrix is
		function Negate is new Fixed_Negate_Matrix(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Long_Fixed_Matrix) return Long_Fixed_Matrix is
		function Absolute_Value is new Fixed_Absolute_Value_Matrix(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Long_Fixed_Matrix; Right : Long_Fixed_Matrix) return Long_Fixed_Matrix is
		function Add is new Fixed_Add_Matrix_Matrix(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Fixed_Matrix; Right : Long_Fixed) return Long_Fixed_Matrix is
		function Add is new Fixed_Add_Matrix_Scalar(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Fixed; Right : Long_Fixed_Matrix) return Long_Fixed_Matrix is
		function Add is new Fixed_Add_Scalar_Matrix(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Long_Fixed_Matrix; Right : Long_Fixed_Matrix) return Long_Fixed_Matrix is
		function Subtract is new Fixed_Subtract_Matrix_Matrix(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Fixed_Matrix; Right : Long_Fixed) return Long_Fixed_Matrix is
		function Subtract is new Fixed_Subtract_Matrix_Scalar(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Fixed; Right : Long_Fixed_Matrix) return Long_Fixed_Matrix is
		function Subtract is new Fixed_Subtract_Scalar_Matrix(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Long_Fixed_Matrix; Right : Long_Fixed_Matrix) return Long_Fixed_Matrix is
		function Multiply is new Fixed_Multiply_Matrix_Matrix(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Fixed_Matrix; Right : Long_Fixed) return Long_Fixed_Matrix is
		function Multiply is new Fixed_Multiply_Matrix_Scalar(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Fixed; Right : Long_Fixed_Matrix) return Long_Fixed_Matrix is
		function Multiply is new Fixed_Multiply_Scalar_Matrix(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Long_Fixed_Matrix; Right : Long_Fixed_Matrix) return Long_Fixed_Matrix is
		function Divide is new Fixed_Divide_Matrix_Matrix(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Fixed_Matrix; Right : Long_Fixed) return Long_Fixed_Matrix is
		function Divide is new Fixed_Divide_Matrix_Scalar(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Fixed; Right : Long_Fixed_Matrix) return Long_Fixed_Matrix is
		function Divide is new Fixed_Divide_Scalar_Matrix(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Long_Fixed_Matrix; Right : Long_Fixed_Matrix) return Long_Fixed_Matrix is
		function Remainder is new Fixed_Remainder_Matrix_Matrix(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Fixed_Matrix; Right : Long_Fixed) return Long_Fixed_Matrix is
		function Remainder is new Fixed_Remainder_Matrix_Scalar(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Fixed; Right : Long_Fixed_Matrix) return Long_Fixed_Matrix is
		function Remainder is new Fixed_Remainder_Scalar_Matrix(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Long_Fixed_Matrix; Right : Long_Fixed_Matrix) return Long_Fixed_Matrix is
		function Modulus is new Fixed_Modulus_Matrix_Matrix(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Fixed_Matrix; Right : Long_Fixed) return Long_Fixed_Matrix is
		function Modulus is new Fixed_Modulus_Matrix_Scalar(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Fixed; Right : Long_Fixed_Matrix) return Long_Fixed_Matrix is
		function Modulus is new Fixed_Modulus_Scalar_Matrix(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Long_Fixed_Matrix; Right : Long_Fixed_Matrix) return Boolean is
		function Equal is new Fixed_Equal_Matrix_Matrix(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Fixed_Matrix; Right : Long_Fixed) return Boolean is
		function Equal is new Fixed_Equal_Matrix_Scalar(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Fixed; Right : Long_Fixed_Matrix) return Boolean is
		function Equal is new Fixed_Equal_Scalar_Matrix(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Long_Fixed_Matrix; Right : Long_Fixed_Matrix) return Boolean is
		function Lesser is new Fixed_Lesser_Matrix_Matrix(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Fixed_Matrix; Right : Long_Fixed) return Boolean is
		function Lesser is new Fixed_Lesser_Matrix_Scalar(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Fixed; Right : Long_Fixed_Matrix) return Boolean is
		function Lesser is new Fixed_Lesser_Scalar_Matrix(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Long_Fixed_Matrix; Right : Long_Fixed_Matrix) return Boolean is
		function Greater is new Fixed_Greater_Matrix_Matrix(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Fixed_Matrix; Right : Long_Fixed) return Boolean is
		function Greater is new Fixed_Greater_Matrix_Scalar(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Fixed; Right : Long_Fixed_Matrix) return Boolean is
		function Greater is new Fixed_Greater_Scalar_Matrix(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Long_Fixed_Matrix; Right : Long_Fixed_Matrix) return Boolean is
		function Lesser_Or_Equal is new Fixed_Lesser_Or_Equal_Matrix_Matrix(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Fixed_Matrix; Right : Long_Fixed) return Boolean is
		function Lesser_Or_Equal is new Fixed_Lesser_Or_Equal_Matrix_Scalar(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Fixed; Right : Long_Fixed_Matrix) return Boolean is
		function Lesser_Or_Equal is new Fixed_Lesser_Or_Equal_Scalar_Matrix(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Long_Fixed_Matrix; Right : Long_Fixed_Matrix) return Boolean is
		function Greater_Or_Equal is new Fixed_Greater_Or_Equal_Matrix_Matrix(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Fixed_Matrix; Right : Long_Fixed) return Boolean is
		function Greater_Or_Equal is new Fixed_Greater_Or_Equal_Matrix_Scalar(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Fixed; Right : Long_Fixed_Matrix) return Boolean is
		function Greater_Or_Equal is new Fixed_Greater_Or_Equal_Scalar_Matrix(Long_Fixed, Long_Fixed_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-------------------------
	-- Short Decimal Matrix --
	-------------------------

	function "+"(Value : Short_Decimal_Matrix) return Short_Decimal_Matrix is
		function Assert is new Decimal_Assert_Matrix(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Short_Decimal_Matrix) return Short_Decimal_Matrix is
		function Negate is new Decimal_Negate_Matrix(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Short_Decimal_Matrix) return Short_Decimal_Matrix is
		function Absolute_Value is new Decimal_Absolute_Value_Matrix(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Short_Decimal_Matrix; Right : Short_Decimal_Matrix) return Short_Decimal_Matrix is
		function Add is new Decimal_Add_Matrix_Matrix(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Decimal_Matrix; Right : Short_Decimal) return Short_Decimal_Matrix is
		function Add is new Decimal_Add_Matrix_Scalar(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Decimal; Right : Short_Decimal_Matrix) return Short_Decimal_Matrix is
		function Add is new Decimal_Add_Scalar_Matrix(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Short_Decimal_Matrix; Right : Short_Decimal_Matrix) return Short_Decimal_Matrix is
		function Subtract is new Decimal_Subtract_Matrix_Matrix(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Decimal_Matrix; Right : Short_Decimal) return Short_Decimal_Matrix is
		function Subtract is new Decimal_Subtract_Matrix_Scalar(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Decimal; Right : Short_Decimal_Matrix) return Short_Decimal_Matrix is
		function Subtract is new Decimal_Subtract_Scalar_Matrix(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Short_Decimal_Matrix; Right : Short_Decimal_Matrix) return Short_Decimal_Matrix is
		function Multiply is new Decimal_Multiply_Matrix_Matrix(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Decimal_Matrix; Right : Short_Decimal) return Short_Decimal_Matrix is
		function Multiply is new Decimal_Multiply_Matrix_Scalar(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Decimal; Right : Short_Decimal_Matrix) return Short_Decimal_Matrix is
		function Multiply is new Decimal_Multiply_Scalar_Matrix(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Short_Decimal_Matrix; Right : Short_Decimal_Matrix) return Short_Decimal_Matrix is
		function Divide is new Decimal_Divide_Matrix_Matrix(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Decimal_Matrix; Right : Short_Decimal) return Short_Decimal_Matrix is
		function Divide is new Decimal_Divide_Matrix_Scalar(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Decimal; Right : Short_Decimal_Matrix) return Short_Decimal_Matrix is
		function Divide is new Decimal_Divide_Scalar_Matrix(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Short_Decimal_Matrix; Right : Short_Decimal_Matrix) return Short_Decimal_Matrix is
		function Remainder is new Decimal_Remainder_Matrix_Matrix(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Decimal_Matrix; Right : Short_Decimal) return Short_Decimal_Matrix is
		function Remainder is new Decimal_Remainder_Matrix_Scalar(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Decimal; Right : Short_Decimal_Matrix) return Short_Decimal_Matrix is
		function Remainder is new Decimal_Remainder_Scalar_Matrix(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Short_Decimal_Matrix; Right : Short_Decimal_Matrix) return Short_Decimal_Matrix is
		function Modulus is new Decimal_Modulus_Matrix_Matrix(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Decimal_Matrix; Right : Short_Decimal) return Short_Decimal_Matrix is
		function Modulus is new Decimal_Modulus_Matrix_Scalar(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Decimal; Right : Short_Decimal_Matrix) return Short_Decimal_Matrix is
		function Modulus is new Decimal_Modulus_Scalar_Matrix(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Short_Decimal_Matrix; Right : Short_Decimal_Matrix) return Boolean is
		function Equal is new Decimal_Equal_Matrix_Matrix(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Decimal_Matrix; Right : Short_Decimal) return Boolean is
		function Equal is new Decimal_Equal_Matrix_Scalar(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Decimal; Right : Short_Decimal_Matrix) return Boolean is
		function Equal is new Decimal_Equal_Scalar_Matrix(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Short_Decimal_Matrix; Right : Short_Decimal_Matrix) return Boolean is
		function Lesser is new Decimal_Lesser_Matrix_Matrix(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Decimal_Matrix; Right : Short_Decimal) return Boolean is
		function Lesser is new Decimal_Lesser_Matrix_Scalar(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Decimal; Right : Short_Decimal_Matrix) return Boolean is
		function Lesser is new Decimal_Lesser_Scalar_Matrix(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Short_Decimal_Matrix; Right : Short_Decimal_Matrix) return Boolean is
		function Greater is new Decimal_Greater_Matrix_Matrix(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Decimal_Matrix; Right : Short_Decimal) return Boolean is
		function Greater is new Decimal_Greater_Matrix_Scalar(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Decimal; Right : Short_Decimal_Matrix) return Boolean is
		function Greater is new Decimal_Greater_Scalar_Matrix(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Short_Decimal_Matrix; Right : Short_Decimal_Matrix) return Boolean is
		function Lesser_Or_Equal is new Decimal_Lesser_Or_Equal_Matrix_Matrix(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Decimal_Matrix; Right : Short_Decimal) return Boolean is
		function Lesser_Or_Equal is new Decimal_Lesser_Or_Equal_Matrix_Scalar(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Decimal; Right : Short_Decimal_Matrix) return Boolean is
		function Lesser_Or_Equal is new Decimal_Lesser_Or_Equal_Scalar_Matrix(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Short_Decimal_Matrix; Right : Short_Decimal_Matrix) return Boolean is
		function Greater_Or_Equal is new Decimal_Greater_Or_Equal_Matrix_Matrix(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Decimal_Matrix; Right : Short_Decimal) return Boolean is
		function Greater_Or_Equal is new Decimal_Greater_Or_Equal_Matrix_Scalar(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Decimal; Right : Short_Decimal_Matrix) return Boolean is
		function Greater_Or_Equal is new Decimal_Greater_Or_Equal_Scalar_Matrix(Short_Decimal, Short_Decimal_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-------------------
	-- Decimal Matrix --
	-------------------

	function "+"(Value : Decimal_Matrix) return Decimal_Matrix is
		function Assert is new Decimal_Assert_Matrix(Decimal, Decimal_Matrix);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Decimal_Matrix) return Decimal_Matrix is
		function Negate is new Decimal_Negate_Matrix(Decimal, Decimal_Matrix);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Decimal_Matrix) return Decimal_Matrix is
		function Absolute_Value is new Decimal_Absolute_Value_Matrix(Decimal, Decimal_Matrix);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Decimal_Matrix; Right : Decimal_Matrix) return Decimal_Matrix is
		function Add is new Decimal_Add_Matrix_Matrix(Decimal, Decimal_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Decimal_Matrix; Right : Decimal) return Decimal_Matrix is
		function Add is new Decimal_Add_Matrix_Scalar(Decimal, Decimal_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Decimal; Right : Decimal_Matrix) return Decimal_Matrix is
		function Add is new Decimal_Add_Scalar_Matrix(Decimal, Decimal_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Decimal_Matrix; Right : Decimal_Matrix) return Decimal_Matrix is
		function Subtract is new Decimal_Subtract_Matrix_Matrix(Decimal, Decimal_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Decimal_Matrix; Right : Decimal) return Decimal_Matrix is
		function Subtract is new Decimal_Subtract_Matrix_Scalar(Decimal, Decimal_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Decimal; Right : Decimal_Matrix) return Decimal_Matrix is
		function Subtract is new Decimal_Subtract_Scalar_Matrix(Decimal, Decimal_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Decimal_Matrix; Right : Decimal_Matrix) return Decimal_Matrix is
		function Multiply is new Decimal_Multiply_Matrix_Matrix(Decimal, Decimal_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Decimal_Matrix; Right : Decimal) return Decimal_Matrix is
		function Multiply is new Decimal_Multiply_Matrix_Scalar(Decimal, Decimal_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Decimal; Right : Decimal_Matrix) return Decimal_Matrix is
		function Multiply is new Decimal_Multiply_Scalar_Matrix(Decimal, Decimal_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Decimal_Matrix; Right : Decimal_Matrix) return Decimal_Matrix is
		function Divide is new Decimal_Divide_Matrix_Matrix(Decimal, Decimal_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Decimal_Matrix; Right : Decimal) return Decimal_Matrix is
		function Divide is new Decimal_Divide_Matrix_Scalar(Decimal, Decimal_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Decimal; Right : Decimal_Matrix) return Decimal_Matrix is
		function Divide is new Decimal_Divide_Scalar_Matrix(Decimal, Decimal_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Decimal_Matrix; Right : Decimal_Matrix) return Decimal_Matrix is
		function Remainder is new Decimal_Remainder_Matrix_Matrix(Decimal, Decimal_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Decimal_Matrix; Right : Decimal) return Decimal_Matrix is
		function Remainder is new Decimal_Remainder_Matrix_Scalar(Decimal, Decimal_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Decimal; Right : Decimal_Matrix) return Decimal_Matrix is
		function Remainder is new Decimal_Remainder_Scalar_Matrix(Decimal, Decimal_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Decimal_Matrix; Right : Decimal_Matrix) return Decimal_Matrix is
		function Modulus is new Decimal_Modulus_Matrix_Matrix(Decimal, Decimal_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Decimal_Matrix; Right : Decimal) return Decimal_Matrix is
		function Modulus is new Decimal_Modulus_Matrix_Scalar(Decimal, Decimal_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Decimal; Right : Decimal_Matrix) return Decimal_Matrix is
		function Modulus is new Decimal_Modulus_Scalar_Matrix(Decimal, Decimal_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Decimal_Matrix; Right : Decimal_Matrix) return Boolean is
		function Equal is new Decimal_Equal_Matrix_Matrix(Decimal, Decimal_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Decimal_Matrix; Right : Decimal) return Boolean is
		function Equal is new Decimal_Equal_Matrix_Scalar(Decimal, Decimal_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Decimal; Right : Decimal_Matrix) return Boolean is
		function Equal is new Decimal_Equal_Scalar_Matrix(Decimal, Decimal_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Decimal_Matrix; Right : Decimal_Matrix) return Boolean is
		function Lesser is new Decimal_Lesser_Matrix_Matrix(Decimal, Decimal_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Decimal_Matrix; Right : Decimal) return Boolean is
		function Lesser is new Decimal_Lesser_Matrix_Scalar(Decimal, Decimal_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Decimal; Right : Decimal_Matrix) return Boolean is
		function Lesser is new Decimal_Lesser_Scalar_Matrix(Decimal, Decimal_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Decimal_Matrix; Right : Decimal_Matrix) return Boolean is
		function Greater is new Decimal_Greater_Matrix_Matrix(Decimal, Decimal_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Decimal_Matrix; Right : Decimal) return Boolean is
		function Greater is new Decimal_Greater_Matrix_Scalar(Decimal, Decimal_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Decimal; Right : Decimal_Matrix) return Boolean is
		function Greater is new Decimal_Greater_Scalar_Matrix(Decimal, Decimal_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Decimal_Matrix; Right : Decimal_Matrix) return Boolean is
		function Lesser_Or_Equal is new Decimal_Lesser_Or_Equal_Matrix_Matrix(Decimal, Decimal_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Decimal_Matrix; Right : Decimal) return Boolean is
		function Lesser_Or_Equal is new Decimal_Lesser_Or_Equal_Matrix_Scalar(Decimal, Decimal_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Decimal; Right : Decimal_Matrix) return Boolean is
		function Lesser_Or_Equal is new Decimal_Lesser_Or_Equal_Scalar_Matrix(Decimal, Decimal_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Decimal_Matrix; Right : Decimal_Matrix) return Boolean is
		function Greater_Or_Equal is new Decimal_Greater_Or_Equal_Matrix_Matrix(Decimal, Decimal_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Decimal_Matrix; Right : Decimal) return Boolean is
		function Greater_Or_Equal is new Decimal_Greater_Or_Equal_Matrix_Scalar(Decimal, Decimal_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Decimal; Right : Decimal_Matrix) return Boolean is
		function Greater_Or_Equal is new Decimal_Greater_Or_Equal_Scalar_Matrix(Decimal, Decimal_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	------------------------
	-- Long Decimal Matrix --
	------------------------

	function "+"(Value : Long_Decimal_Matrix) return Long_Decimal_Matrix is
		function Assert is new Decimal_Assert_Matrix(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Long_Decimal_Matrix) return Long_Decimal_Matrix is
		function Negate is new Decimal_Negate_Matrix(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Long_Decimal_Matrix) return Long_Decimal_Matrix is
		function Absolute_Value is new Decimal_Absolute_Value_Matrix(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Long_Decimal_Matrix; Right : Long_Decimal_Matrix) return Long_Decimal_Matrix is
		function Add is new Decimal_Add_Matrix_Matrix(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Decimal_Matrix; Right : Long_Decimal) return Long_Decimal_Matrix is
		function Add is new Decimal_Add_Matrix_Scalar(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Decimal; Right : Long_Decimal_Matrix) return Long_Decimal_Matrix is
		function Add is new Decimal_Add_Scalar_Matrix(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Long_Decimal_Matrix; Right : Long_Decimal_Matrix) return Long_Decimal_Matrix is
		function Subtract is new Decimal_Subtract_Matrix_Matrix(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Decimal_Matrix; Right : Long_Decimal) return Long_Decimal_Matrix is
		function Subtract is new Decimal_Subtract_Matrix_Scalar(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Decimal; Right : Long_Decimal_Matrix) return Long_Decimal_Matrix is
		function Subtract is new Decimal_Subtract_Scalar_Matrix(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Long_Decimal_Matrix; Right : Long_Decimal_Matrix) return Long_Decimal_Matrix is
		function Multiply is new Decimal_Multiply_Matrix_Matrix(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Decimal_Matrix; Right : Long_Decimal) return Long_Decimal_Matrix is
		function Multiply is new Decimal_Multiply_Matrix_Scalar(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Decimal; Right : Long_Decimal_Matrix) return Long_Decimal_Matrix is
		function Multiply is new Decimal_Multiply_Scalar_Matrix(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Long_Decimal_Matrix; Right : Long_Decimal_Matrix) return Long_Decimal_Matrix is
		function Divide is new Decimal_Divide_Matrix_Matrix(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Decimal_Matrix; Right : Long_Decimal) return Long_Decimal_Matrix is
		function Divide is new Decimal_Divide_Matrix_Scalar(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Decimal; Right : Long_Decimal_Matrix) return Long_Decimal_Matrix is
		function Divide is new Decimal_Divide_Scalar_Matrix(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Long_Decimal_Matrix; Right : Long_Decimal_Matrix) return Long_Decimal_Matrix is
		function Remainder is new Decimal_Remainder_Matrix_Matrix(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Decimal_Matrix; Right : Long_Decimal) return Long_Decimal_Matrix is
		function Remainder is new Decimal_Remainder_Matrix_Scalar(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Decimal; Right : Long_Decimal_Matrix) return Long_Decimal_Matrix is
		function Remainder is new Decimal_Remainder_Scalar_Matrix(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Long_Decimal_Matrix; Right : Long_Decimal_Matrix) return Long_Decimal_Matrix is
		function Modulus is new Decimal_Modulus_Matrix_Matrix(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Decimal_Matrix; Right : Long_Decimal) return Long_Decimal_Matrix is
		function Modulus is new Decimal_Modulus_Matrix_Scalar(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Decimal; Right : Long_Decimal_Matrix) return Long_Decimal_Matrix is
		function Modulus is new Decimal_Modulus_Scalar_Matrix(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Long_Decimal_Matrix; Right : Long_Decimal_Matrix) return Boolean is
		function Equal is new Decimal_Equal_Matrix_Matrix(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Decimal_Matrix; Right : Long_Decimal) return Boolean is
		function Equal is new Decimal_Equal_Matrix_Scalar(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Decimal; Right : Long_Decimal_Matrix) return Boolean is
		function Equal is new Decimal_Equal_Scalar_Matrix(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Long_Decimal_Matrix; Right : Long_Decimal_Matrix) return Boolean is
		function Lesser is new Decimal_Lesser_Matrix_Matrix(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Decimal_Matrix; Right : Long_Decimal) return Boolean is
		function Lesser is new Decimal_Lesser_Matrix_Scalar(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Decimal; Right : Long_Decimal_Matrix) return Boolean is
		function Lesser is new Decimal_Lesser_Scalar_Matrix(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Long_Decimal_Matrix; Right : Long_Decimal_Matrix) return Boolean is
		function Greater is new Decimal_Greater_Matrix_Matrix(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Decimal_Matrix; Right : Long_Decimal) return Boolean is
		function Greater is new Decimal_Greater_Matrix_Scalar(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Decimal; Right : Long_Decimal_Matrix) return Boolean is
		function Greater is new Decimal_Greater_Scalar_Matrix(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Long_Decimal_Matrix; Right : Long_Decimal_Matrix) return Boolean is
		function Lesser_Or_Equal is new Decimal_Lesser_Or_Equal_Matrix_Matrix(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Decimal_Matrix; Right : Long_Decimal) return Boolean is
		function Lesser_Or_Equal is new Decimal_Lesser_Or_Equal_Matrix_Scalar(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Decimal; Right : Long_Decimal_Matrix) return Boolean is
		function Lesser_Or_Equal is new Decimal_Lesser_Or_Equal_Scalar_Matrix(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Long_Decimal_Matrix; Right : Long_Decimal_Matrix) return Boolean is
		function Greater_Or_Equal is new Decimal_Greater_Or_Equal_Matrix_Matrix(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Decimal_Matrix; Right : Long_Decimal) return Boolean is
		function Greater_Or_Equal is new Decimal_Greater_Or_Equal_Matrix_Scalar(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Decimal; Right : Long_Decimal_Matrix) return Boolean is
		function Greater_Or_Equal is new Decimal_Greater_Or_Equal_Scalar_Matrix(Long_Decimal, Long_Decimal_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-----------------------------
	-- Long Long Decimal Matrix --
	-----------------------------

	function "+"(Value : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix is
		function Assert is new Decimal_Assert_Matrix(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix is
		function Negate is new Decimal_Negate_Matrix(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix is
		function Absolute_Value is new Decimal_Absolute_Value_Matrix(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix is
		function Add is new Decimal_Add_Matrix_Matrix(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal) return Long_Long_Decimal_Matrix is
		function Add is new Decimal_Add_Matrix_Scalar(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix is
		function Add is new Decimal_Add_Scalar_Matrix(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix is
		function Subtract is new Decimal_Subtract_Matrix_Matrix(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal) return Long_Long_Decimal_Matrix is
		function Subtract is new Decimal_Subtract_Matrix_Scalar(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix is
		function Subtract is new Decimal_Subtract_Scalar_Matrix(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix is
		function Multiply is new Decimal_Multiply_Matrix_Matrix(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal) return Long_Long_Decimal_Matrix is
		function Multiply is new Decimal_Multiply_Matrix_Scalar(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix is
		function Multiply is new Decimal_Multiply_Scalar_Matrix(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix is
		function Divide is new Decimal_Divide_Matrix_Matrix(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal) return Long_Long_Decimal_Matrix is
		function Divide is new Decimal_Divide_Matrix_Scalar(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix is
		function Divide is new Decimal_Divide_Scalar_Matrix(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix is
		function Remainder is new Decimal_Remainder_Matrix_Matrix(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal) return Long_Long_Decimal_Matrix is
		function Remainder is new Decimal_Remainder_Matrix_Scalar(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix is
		function Remainder is new Decimal_Remainder_Scalar_Matrix(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix is
		function Modulus is new Decimal_Modulus_Matrix_Matrix(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal) return Long_Long_Decimal_Matrix is
		function Modulus is new Decimal_Modulus_Matrix_Scalar(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix is
		function Modulus is new Decimal_Modulus_Scalar_Matrix(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal_Matrix) return Boolean is
		function Equal is new Decimal_Equal_Matrix_Matrix(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal) return Boolean is
		function Equal is new Decimal_Equal_Matrix_Scalar(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Matrix) return Boolean is
		function Equal is new Decimal_Equal_Scalar_Matrix(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal_Matrix) return Boolean is
		function Lesser is new Decimal_Lesser_Matrix_Matrix(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal) return Boolean is
		function Lesser is new Decimal_Lesser_Matrix_Scalar(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Matrix) return Boolean is
		function Lesser is new Decimal_Lesser_Scalar_Matrix(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal_Matrix) return Boolean is
		function Greater is new Decimal_Greater_Matrix_Matrix(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal) return Boolean is
		function Greater is new Decimal_Greater_Matrix_Scalar(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Matrix) return Boolean is
		function Greater is new Decimal_Greater_Scalar_Matrix(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal_Matrix) return Boolean is
		function Lesser_Or_Equal is new Decimal_Lesser_Or_Equal_Matrix_Matrix(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal) return Boolean is
		function Lesser_Or_Equal is new Decimal_Lesser_Or_Equal_Matrix_Scalar(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Matrix) return Boolean is
		function Lesser_Or_Equal is new Decimal_Lesser_Or_Equal_Scalar_Matrix(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal_Matrix) return Boolean is
		function Greater_Or_Equal is new Decimal_Greater_Or_Equal_Matrix_Matrix(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal) return Boolean is
		function Greater_Or_Equal is new Decimal_Greater_Or_Equal_Matrix_Scalar(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Matrix) return Boolean is
		function Greater_Or_Equal is new Decimal_Greater_Or_Equal_Scalar_Matrix(Long_Long_Decimal, Long_Long_Decimal_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-------------------------
	-- Short Float Matrix --
	-------------------------

	function "+"(Value : Short_Float_Matrix) return Short_Float_Matrix is
		function Assert is new Float_Assert_Matrix(Short_Float, Short_Float_Matrix);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Short_Float_Matrix) return Short_Float_Matrix is
		function Negate is new Float_Negate_Matrix(Short_Float, Short_Float_Matrix);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Short_Float_Matrix) return Short_Float_Matrix is
		function Absolute_Value is new Float_Absolute_Value_Matrix(Short_Float, Short_Float_Matrix);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Short_Float_Matrix; Right : Short_Float_Matrix) return Short_Float_Matrix is
		function Add is new Float_Add_Matrix_Matrix(Short_Float, Short_Float_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Float_Matrix; Right : Short_Float) return Short_Float_Matrix is
		function Add is new Float_Add_Matrix_Scalar(Short_Float, Short_Float_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Short_Float; Right : Short_Float_Matrix) return Short_Float_Matrix is
		function Add is new Float_Add_Scalar_Matrix(Short_Float, Short_Float_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Short_Float_Matrix; Right : Short_Float_Matrix) return Short_Float_Matrix is
		function Subtract is new Float_Subtract_Matrix_Matrix(Short_Float, Short_Float_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Float_Matrix; Right : Short_Float) return Short_Float_Matrix is
		function Subtract is new Float_Subtract_Matrix_Scalar(Short_Float, Short_Float_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Short_Float; Right : Short_Float_Matrix) return Short_Float_Matrix is
		function Subtract is new Float_Subtract_Scalar_Matrix(Short_Float, Short_Float_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Short_Float_Matrix; Right : Short_Float_Matrix) return Short_Float_Matrix is
		function Multiply is new Float_Multiply_Matrix_Matrix(Short_Float, Short_Float_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Float_Matrix; Right : Short_Float) return Short_Float_Matrix is
		function Multiply is new Float_Multiply_Matrix_Scalar(Short_Float, Short_Float_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Short_Float; Right : Short_Float_Matrix) return Short_Float_Matrix is
		function Multiply is new Float_Multiply_Scalar_Matrix(Short_Float, Short_Float_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Short_Float_Matrix; Right : Short_Float_Matrix) return Short_Float_Matrix is
		function Divide is new Float_Divide_Matrix_Matrix(Short_Float, Short_Float_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Float_Matrix; Right : Short_Float) return Short_Float_Matrix is
		function Divide is new Float_Divide_Matrix_Scalar(Short_Float, Short_Float_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Short_Float; Right : Short_Float_Matrix) return Short_Float_Matrix is
		function Divide is new Float_Divide_Scalar_Matrix(Short_Float, Short_Float_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Short_Float_Matrix; Right : Short_Float_Matrix) return Short_Float_Matrix is
		function Remainder is new Float_Remainder_Matrix_Matrix(Short_Float, Short_Float_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Float_Matrix; Right : Short_Float) return Short_Float_Matrix is
		function Remainder is new Float_Remainder_Matrix_Scalar(Short_Float, Short_Float_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Short_Float; Right : Short_Float_Matrix) return Short_Float_Matrix is
		function Remainder is new Float_Remainder_Scalar_Matrix(Short_Float, Short_Float_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Short_Float_Matrix; Right : Short_Float_Matrix) return Short_Float_Matrix is
		function Modulus is new Float_Modulus_Matrix_Matrix(Short_Float, Short_Float_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Float_Matrix; Right : Short_Float) return Short_Float_Matrix is
		function Modulus is new Float_Modulus_Matrix_Scalar(Short_Float, Short_Float_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Short_Float; Right : Short_Float_Matrix) return Short_Float_Matrix is
		function Modulus is new Float_Modulus_Scalar_Matrix(Short_Float, Short_Float_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Short_Float_Matrix; Right : Short_Float_Matrix) return Boolean is
		function Equal is new Float_Equal_Matrix_Matrix(Short_Float, Short_Float_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Float_Matrix; Right : Short_Float) return Boolean is
		function Equal is new Float_Equal_Matrix_Scalar(Short_Float, Short_Float_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Short_Float; Right : Short_Float_Matrix) return Boolean is
		function Equal is new Float_Equal_Scalar_Matrix(Short_Float, Short_Float_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Short_Float_Matrix; Right : Short_Float_Matrix) return Boolean is
		function Lesser is new Float_Lesser_Matrix_Matrix(Short_Float, Short_Float_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Float_Matrix; Right : Short_Float) return Boolean is
		function Lesser is new Float_Lesser_Matrix_Scalar(Short_Float, Short_Float_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Short_Float; Right : Short_Float_Matrix) return Boolean is
		function Lesser is new Float_Lesser_Scalar_Matrix(Short_Float, Short_Float_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Short_Float_Matrix; Right : Short_Float_Matrix) return Boolean is
		function Greater is new Float_Greater_Matrix_Matrix(Short_Float, Short_Float_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Float_Matrix; Right : Short_Float) return Boolean is
		function Greater is new Float_Greater_Matrix_Scalar(Short_Float, Short_Float_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Short_Float; Right : Short_Float_Matrix) return Boolean is
		function Greater is new Float_Greater_Scalar_Matrix(Short_Float, Short_Float_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Short_Float_Matrix; Right : Short_Float_Matrix) return Boolean is
		function Lesser_Or_Equal is new Float_Lesser_Or_Equal_Matrix_Matrix(Short_Float, Short_Float_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Float_Matrix; Right : Short_Float) return Boolean is
		function Lesser_Or_Equal is new Float_Lesser_Or_Equal_Matrix_Scalar(Short_Float, Short_Float_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Short_Float; Right : Short_Float_Matrix) return Boolean is
		function Lesser_Or_Equal is new Float_Lesser_Or_Equal_Scalar_Matrix(Short_Float, Short_Float_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Short_Float_Matrix; Right : Short_Float_Matrix) return Boolean is
		function Greater_Or_Equal is new Float_Greater_Or_Equal_Matrix_Matrix(Short_Float, Short_Float_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Float_Matrix; Right : Short_Float) return Boolean is
		function Greater_Or_Equal is new Float_Greater_Or_Equal_Matrix_Scalar(Short_Float, Short_Float_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Short_Float; Right : Short_Float_Matrix) return Boolean is
		function Greater_Or_Equal is new Float_Greater_Or_Equal_Scalar_Matrix(Short_Float, Short_Float_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-------------------
	-- Float Matrix --
	-------------------

	function "+"(Value : Float_Matrix) return Float_Matrix is
		function Assert is new Float_Assert_Matrix(Float, Float_Matrix);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Float_Matrix) return Float_Matrix is
		function Negate is new Float_Negate_Matrix(Float, Float_Matrix);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Float_Matrix) return Float_Matrix is
		function Absolute_Value is new Float_Absolute_Value_Matrix(Float, Float_Matrix);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Float_Matrix; Right : Float_Matrix) return Float_Matrix is
		function Add is new Float_Add_Matrix_Matrix(Float, Float_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Float_Matrix; Right : Float) return Float_Matrix is
		function Add is new Float_Add_Matrix_Scalar(Float, Float_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Float; Right : Float_Matrix) return Float_Matrix is
		function Add is new Float_Add_Scalar_Matrix(Float, Float_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Float_Matrix; Right : Float_Matrix) return Float_Matrix is
		function Subtract is new Float_Subtract_Matrix_Matrix(Float, Float_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Float_Matrix; Right : Float) return Float_Matrix is
		function Subtract is new Float_Subtract_Matrix_Scalar(Float, Float_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Float; Right : Float_Matrix) return Float_Matrix is
		function Subtract is new Float_Subtract_Scalar_Matrix(Float, Float_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Float_Matrix; Right : Float_Matrix) return Float_Matrix is
		function Multiply is new Float_Multiply_Matrix_Matrix(Float, Float_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Float_Matrix; Right : Float) return Float_Matrix is
		function Multiply is new Float_Multiply_Matrix_Scalar(Float, Float_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Float; Right : Float_Matrix) return Float_Matrix is
		function Multiply is new Float_Multiply_Scalar_Matrix(Float, Float_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Float_Matrix; Right : Float_Matrix) return Float_Matrix is
		function Divide is new Float_Divide_Matrix_Matrix(Float, Float_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Float_Matrix; Right : Float) return Float_Matrix is
		function Divide is new Float_Divide_Matrix_Scalar(Float, Float_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Float; Right : Float_Matrix) return Float_Matrix is
		function Divide is new Float_Divide_Scalar_Matrix(Float, Float_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Float_Matrix; Right : Float_Matrix) return Float_Matrix is
		function Remainder is new Float_Remainder_Matrix_Matrix(Float, Float_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Float_Matrix; Right : Float) return Float_Matrix is
		function Remainder is new Float_Remainder_Matrix_Scalar(Float, Float_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Float; Right : Float_Matrix) return Float_Matrix is
		function Remainder is new Float_Remainder_Scalar_Matrix(Float, Float_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Float_Matrix; Right : Float_Matrix) return Float_Matrix is
		function Modulus is new Float_Modulus_Matrix_Matrix(Float, Float_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Float_Matrix; Right : Float) return Float_Matrix is
		function Modulus is new Float_Modulus_Matrix_Scalar(Float, Float_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Float; Right : Float_Matrix) return Float_Matrix is
		function Modulus is new Float_Modulus_Scalar_Matrix(Float, Float_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Float_Matrix; Right : Float_Matrix) return Boolean is
		function Equal is new Float_Equal_Matrix_Matrix(Float, Float_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Float_Matrix; Right : Float) return Boolean is
		function Equal is new Float_Equal_Matrix_Scalar(Float, Float_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Float; Right : Float_Matrix) return Boolean is
		function Equal is new Float_Equal_Scalar_Matrix(Float, Float_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Float_Matrix; Right : Float_Matrix) return Boolean is
		function Lesser is new Float_Lesser_Matrix_Matrix(Float, Float_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Float_Matrix; Right : Float) return Boolean is
		function Lesser is new Float_Lesser_Matrix_Scalar(Float, Float_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Float; Right : Float_Matrix) return Boolean is
		function Lesser is new Float_Lesser_Scalar_Matrix(Float, Float_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Float_Matrix; Right : Float_Matrix) return Boolean is
		function Greater is new Float_Greater_Matrix_Matrix(Float, Float_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Float_Matrix; Right : Float) return Boolean is
		function Greater is new Float_Greater_Matrix_Scalar(Float, Float_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Float; Right : Float_Matrix) return Boolean is
		function Greater is new Float_Greater_Scalar_Matrix(Float, Float_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Float_Matrix; Right : Float_Matrix) return Boolean is
		function Lesser_Or_Equal is new Float_Lesser_Or_Equal_Matrix_Matrix(Float, Float_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Float_Matrix; Right : Float) return Boolean is
		function Lesser_Or_Equal is new Float_Lesser_Or_Equal_Matrix_Scalar(Float, Float_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Float; Right : Float_Matrix) return Boolean is
		function Lesser_Or_Equal is new Float_Lesser_Or_Equal_Scalar_Matrix(Float, Float_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Float_Matrix; Right : Float_Matrix) return Boolean is
		function Greater_Or_Equal is new Float_Greater_Or_Equal_Matrix_Matrix(Float, Float_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Float_Matrix; Right : Float) return Boolean is
		function Greater_Or_Equal is new Float_Greater_Or_Equal_Matrix_Scalar(Float, Float_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Float; Right : Float_Matrix) return Boolean is
		function Greater_Or_Equal is new Float_Greater_Or_Equal_Scalar_Matrix(Float, Float_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	------------------------
	-- Long Float Matrix --
	------------------------

	function "+"(Value : Long_Float_Matrix) return Long_Float_Matrix is
		function Assert is new Float_Assert_Matrix(Long_Float, Long_Float_Matrix);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Long_Float_Matrix) return Long_Float_Matrix is
		function Negate is new Float_Negate_Matrix(Long_Float, Long_Float_Matrix);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Long_Float_Matrix) return Long_Float_Matrix is
		function Absolute_Value is new Float_Absolute_Value_Matrix(Long_Float, Long_Float_Matrix);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Long_Float_Matrix; Right : Long_Float_Matrix) return Long_Float_Matrix is
		function Add is new Float_Add_Matrix_Matrix(Long_Float, Long_Float_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Float_Matrix; Right : Long_Float) return Long_Float_Matrix is
		function Add is new Float_Add_Matrix_Scalar(Long_Float, Long_Float_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Float; Right : Long_Float_Matrix) return Long_Float_Matrix is
		function Add is new Float_Add_Scalar_Matrix(Long_Float, Long_Float_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Long_Float_Matrix; Right : Long_Float_Matrix) return Long_Float_Matrix is
		function Subtract is new Float_Subtract_Matrix_Matrix(Long_Float, Long_Float_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Float_Matrix; Right : Long_Float) return Long_Float_Matrix is
		function Subtract is new Float_Subtract_Matrix_Scalar(Long_Float, Long_Float_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Float; Right : Long_Float_Matrix) return Long_Float_Matrix is
		function Subtract is new Float_Subtract_Scalar_Matrix(Long_Float, Long_Float_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Long_Float_Matrix; Right : Long_Float_Matrix) return Long_Float_Matrix is
		function Multiply is new Float_Multiply_Matrix_Matrix(Long_Float, Long_Float_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Float_Matrix; Right : Long_Float) return Long_Float_Matrix is
		function Multiply is new Float_Multiply_Matrix_Scalar(Long_Float, Long_Float_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Float; Right : Long_Float_Matrix) return Long_Float_Matrix is
		function Multiply is new Float_Multiply_Scalar_Matrix(Long_Float, Long_Float_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Long_Float_Matrix; Right : Long_Float_Matrix) return Long_Float_Matrix is
		function Divide is new Float_Divide_Matrix_Matrix(Long_Float, Long_Float_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Float_Matrix; Right : Long_Float) return Long_Float_Matrix is
		function Divide is new Float_Divide_Matrix_Scalar(Long_Float, Long_Float_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Float; Right : Long_Float_Matrix) return Long_Float_Matrix is
		function Divide is new Float_Divide_Scalar_Matrix(Long_Float, Long_Float_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Long_Float_Matrix; Right : Long_Float_Matrix) return Long_Float_Matrix is
		function Remainder is new Float_Remainder_Matrix_Matrix(Long_Float, Long_Float_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Float_Matrix; Right : Long_Float) return Long_Float_Matrix is
		function Remainder is new Float_Remainder_Matrix_Scalar(Long_Float, Long_Float_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Float; Right : Long_Float_Matrix) return Long_Float_Matrix is
		function Remainder is new Float_Remainder_Scalar_Matrix(Long_Float, Long_Float_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Long_Float_Matrix; Right : Long_Float_Matrix) return Long_Float_Matrix is
		function Modulus is new Float_Modulus_Matrix_Matrix(Long_Float, Long_Float_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Float_Matrix; Right : Long_Float) return Long_Float_Matrix is
		function Modulus is new Float_Modulus_Matrix_Scalar(Long_Float, Long_Float_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Float; Right : Long_Float_Matrix) return Long_Float_Matrix is
		function Modulus is new Float_Modulus_Scalar_Matrix(Long_Float, Long_Float_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Long_Float_Matrix; Right : Long_Float_Matrix) return Boolean is
		function Equal is new Float_Equal_Matrix_Matrix(Long_Float, Long_Float_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Float_Matrix; Right : Long_Float) return Boolean is
		function Equal is new Float_Equal_Matrix_Scalar(Long_Float, Long_Float_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Float; Right : Long_Float_Matrix) return Boolean is
		function Equal is new Float_Equal_Scalar_Matrix(Long_Float, Long_Float_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Long_Float_Matrix; Right : Long_Float_Matrix) return Boolean is
		function Lesser is new Float_Lesser_Matrix_Matrix(Long_Float, Long_Float_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Float_Matrix; Right : Long_Float) return Boolean is
		function Lesser is new Float_Lesser_Matrix_Scalar(Long_Float, Long_Float_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Float; Right : Long_Float_Matrix) return Boolean is
		function Lesser is new Float_Lesser_Scalar_Matrix(Long_Float, Long_Float_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Long_Float_Matrix; Right : Long_Float_Matrix) return Boolean is
		function Greater is new Float_Greater_Matrix_Matrix(Long_Float, Long_Float_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Float_Matrix; Right : Long_Float) return Boolean is
		function Greater is new Float_Greater_Matrix_Scalar(Long_Float, Long_Float_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Float; Right : Long_Float_Matrix) return Boolean is
		function Greater is new Float_Greater_Scalar_Matrix(Long_Float, Long_Float_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Long_Float_Matrix; Right : Long_Float_Matrix) return Boolean is
		function Lesser_Or_Equal is new Float_Lesser_Or_Equal_Matrix_Matrix(Long_Float, Long_Float_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Float_Matrix; Right : Long_Float) return Boolean is
		function Lesser_Or_Equal is new Float_Lesser_Or_Equal_Matrix_Scalar(Long_Float, Long_Float_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Float; Right : Long_Float_Matrix) return Boolean is
		function Lesser_Or_Equal is new Float_Lesser_Or_Equal_Scalar_Matrix(Long_Float, Long_Float_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Long_Float_Matrix; Right : Long_Float_Matrix) return Boolean is
		function Greater_Or_Equal is new Float_Greater_Or_Equal_Matrix_Matrix(Long_Float, Long_Float_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Float_Matrix; Right : Long_Float) return Boolean is
		function Greater_Or_Equal is new Float_Greater_Or_Equal_Matrix_Scalar(Long_Float, Long_Float_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Float; Right : Long_Float_Matrix) return Boolean is
		function Greater_Or_Equal is new Float_Greater_Or_Equal_Scalar_Matrix(Long_Float, Long_Float_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	-----------------------------
	-- Long Long Float Matrix --
	-----------------------------

	function "+"(Value : Long_Long_Float_Matrix) return Long_Long_Float_Matrix is
		function Assert is new Float_Assert_Matrix(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Assert(Value);
	end "+";

	function "-"(Value : Long_Long_Float_Matrix) return Long_Long_Float_Matrix is
		function Negate is new Float_Negate_Matrix(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Negate(Value);
	end "-";

	function "abs"(Value : Long_Long_Float_Matrix) return Long_Long_Float_Matrix is
		function Absolute_Value is new Float_Absolute_Value_Matrix(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Absolute_Value(Value);
	end "abs";

	function "+"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float_Matrix) return Long_Long_Float_Matrix is
		function Add is new Float_Add_Matrix_Matrix(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float) return Long_Long_Float_Matrix is
		function Add is new Float_Add_Matrix_Scalar(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "+"(Left : Long_Long_Float; Right : Long_Long_Float_Matrix) return Long_Long_Float_Matrix is
		function Add is new Float_Add_Scalar_Matrix(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Add(Left, Right);
	end "+";

	function "-"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float_Matrix) return Long_Long_Float_Matrix is
		function Subtract is new Float_Subtract_Matrix_Matrix(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float) return Long_Long_Float_Matrix is
		function Subtract is new Float_Subtract_Matrix_Scalar(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "-"(Left : Long_Long_Float; Right : Long_Long_Float_Matrix) return Long_Long_Float_Matrix is
		function Subtract is new Float_Subtract_Scalar_Matrix(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Subtract(Left, Right);
	end "-";

	function "*"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float_Matrix) return Long_Long_Float_Matrix is
		function Multiply is new Float_Multiply_Matrix_Matrix(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float) return Long_Long_Float_Matrix is
		function Multiply is new Float_Multiply_Matrix_Scalar(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "*"(Left : Long_Long_Float; Right : Long_Long_Float_Matrix) return Long_Long_Float_Matrix is
		function Multiply is new Float_Multiply_Scalar_Matrix(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Multiply(Left, Right);
	end "*";

	function "/"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float_Matrix) return Long_Long_Float_Matrix is
		function Divide is new Float_Divide_Matrix_Matrix(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float) return Long_Long_Float_Matrix is
		function Divide is new Float_Divide_Matrix_Scalar(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "/"(Left : Long_Long_Float; Right : Long_Long_Float_Matrix) return Long_Long_Float_Matrix is
		function Divide is new Float_Divide_Scalar_Matrix(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Divide(Left, Right);
	end "/";

	function "rem"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float_Matrix) return Long_Long_Float_Matrix is
		function Remainder is new Float_Remainder_Matrix_Matrix(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float) return Long_Long_Float_Matrix is
		function Remainder is new Float_Remainder_Matrix_Scalar(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "rem"(Left : Long_Long_Float; Right : Long_Long_Float_Matrix) return Long_Long_Float_Matrix is
		function Remainder is new Float_Remainder_Scalar_Matrix(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Remainder(Left, Right);
	end "rem";

	function "mod"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float_Matrix) return Long_Long_Float_Matrix is
		function Modulus is new Float_Modulus_Matrix_Matrix(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float) return Long_Long_Float_Matrix is
		function Modulus is new Float_Modulus_Matrix_Scalar(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "mod"(Left : Long_Long_Float; Right : Long_Long_Float_Matrix) return Long_Long_Float_Matrix is
		function Modulus is new Float_Modulus_Scalar_Matrix(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Modulus(Left, Right);
	end "mod";

	function "="(Left : Long_Long_Float_Matrix; Right : Long_Long_Float_Matrix) return Boolean is
		function Equal is new Float_Equal_Matrix_Matrix(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Long_Float_Matrix; Right : Long_Long_Float) return Boolean is
		function Equal is new Float_Equal_Matrix_Scalar(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "="(Left : Long_Long_Float; Right : Long_Long_Float_Matrix) return Boolean is
		function Equal is new Float_Equal_Scalar_Matrix(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Equal(Left, Right);
	end "=";

	function "<"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float_Matrix) return Boolean is
		function Lesser is new Float_Lesser_Matrix_Matrix(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float) return Boolean is
		function Lesser is new Float_Lesser_Matrix_Scalar(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function "<"(Left : Long_Long_Float; Right : Long_Long_Float_Matrix) return Boolean is
		function Lesser is new Float_Lesser_Scalar_Matrix(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Lesser(Left, Right);
	end "<";

	function ">"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float_Matrix) return Boolean is
		function Greater is new Float_Greater_Matrix_Matrix(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float) return Boolean is
		function Greater is new Float_Greater_Matrix_Scalar(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function ">"(Left : Long_Long_Float; Right : Long_Long_Float_Matrix) return Boolean is
		function Greater is new Float_Greater_Scalar_Matrix(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Greater(Left, Right);
	end ">";

	function "<="(Left : Long_Long_Float_Matrix; Right : Long_Long_Float_Matrix) return Boolean is
		function Lesser_Or_Equal is new Float_Lesser_Or_Equal_Matrix_Matrix(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Long_Float_Matrix; Right : Long_Long_Float) return Boolean is
		function Lesser_Or_Equal is new Float_Lesser_Or_Equal_Matrix_Scalar(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function "<="(Left : Long_Long_Float; Right : Long_Long_Float_Matrix) return Boolean is
		function Lesser_Or_Equal is new Float_Lesser_Or_Equal_Scalar_Matrix(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Lesser_Or_Equal(Left, Right);
	end "<=";

	function ">="(Left : Long_Long_Float_Matrix; Right : Long_Long_Float_Matrix) return Boolean is
		function Greater_Or_Equal is new Float_Greater_Or_Equal_Matrix_Matrix(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Long_Float_Matrix; Right : Long_Long_Float) return Boolean is
		function Greater_Or_Equal is new Float_Greater_Or_Equal_Matrix_Scalar(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

	function ">="(Left : Long_Long_Float; Right : Long_Long_Float_Matrix) return Boolean is
		function Greater_Or_Equal is new Float_Greater_Or_Equal_Scalar_Matrix(Long_Long_Float, Long_Long_Float_Matrix);
	begin
		return Greater_Or_Equal(Left, Right);
	end ">=";

end Mathematics.Matrices;
