package Generics.Mathematics.Matrices with Pure is
--@Description Provides generic, serial, but highly portable, operations for matrices.
--@Version 1.0
--This package is meant to provide reliable support for all platforms, but not in any efficient way.
--Because of the lack of ability to overload in generics, a unique naming scheme of <type>_<operation>_(scalar|matrix)_(scalar|matrix) is used.

	--------------------
	-- Integer Matrix --
	--------------------

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array(Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Assert_Matrix(Value : Integer_Matrix_Type) return Integer_Matrix_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array(Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Negate_Matrix(Value : Integer_Matrix_Type) return Integer_Matrix_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Absolute_Value_Matrix(Value : Integer_Matrix_Type) return Integer_Matrix_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Add_Matrix_Matrix(Left : Integer_Matrix_Type; Right : Integer_Matrix_Type) return Integer_Matrix_Type with Pre => Left'Length = Right'Length, Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Add_Matrix_Scalar(Left : Integer_Matrix_Type; Right : Integer_Type) return Integer_Matrix_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Add_Scalar_Matrix(Left : Integer_Type; Right : Integer_Matrix_Type) return Integer_Matrix_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Subtract_Matrix_Matrix(Left : Integer_Matrix_Type; Right : Integer_Matrix_Type) return Integer_Matrix_Type with Pre => Left'Length = Right'Length, Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Subtract_Matrix_Scalar(Left : Integer_Matrix_Type; Right : Integer_Type) return Integer_Matrix_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Subtract_Scalar_Matrix(Left : Integer_Type; Right : Integer_Matrix_Type) return Integer_Matrix_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Multiply_Matrix_Matrix(Left : Integer_Matrix_Type; Right : Integer_Matrix_Type) return Integer_Matrix_Type with Pre => Left'Length = Right'Length, Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Multiply_Matrix_Scalar(Left : Integer_Matrix_Type; Right : Integer_Type) return Integer_Matrix_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Multiply_Scalar_Matrix(Left : Integer_Type; Right : Integer_Matrix_Type) return Integer_Matrix_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Divide_Matrix_Matrix(Left : Integer_Matrix_Type; Right : Integer_Matrix_Type) return Integer_Matrix_Type with Pre => Left'Length = Right'Length, Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Divide_Matrix_Scalar(Left : Integer_Matrix_Type; Right : Integer_Type) return Integer_Matrix_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Divide_Scalar_Matrix(Left : Integer_Type; Right : Integer_Matrix_Type) return Integer_Matrix_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Modulus_Matrix_Matrix(Left : Integer_Matrix_Type; Right : Integer_Matrix_Type) return Integer_Matrix_Type with Pre => Left'Length = Right'Length, Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Modulus_Matrix_Scalar(Left : Integer_Matrix_Type; Right : Integer_Type) return Integer_Matrix_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Modulus_Scalar_Matrix(Left : Integer_Type; Right : Integer_Matrix_Type) return Integer_Matrix_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Remainder_Matrix_Matrix(Left : Integer_Matrix_Type; Right : Integer_Matrix_Type) return Integer_Matrix_Type with Pre => Left'Length = Right'Length, Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Remainder_Matrix_Scalar(Left : Integer_Matrix_Type; Right : Integer_Type) return Integer_Matrix_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Remainder_Scalar_Matrix(Left : Integer_Type; Right : Integer_Matrix_Type) return Integer_Matrix_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Equal_Matrix_Matrix(Left : Integer_Matrix_Type; Right : Integer_Matrix_Type) return Boolean with Pre => Left'Length = Right'Length, Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Equal_Matrix_Scalar(Left : Integer_Matrix_Type; Right : Integer_Type) return Boolean with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Equal_Scalar_Matrix(Left : Integer_Type; Right : Integer_Matrix_Type) return Boolean with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Lesser_Matrix_Matrix(Left : Integer_Matrix_Type; Right : Integer_Matrix_Type) return Boolean with Pre => Left'Length = Right'Length, Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Lesser_Matrix_Scalar(Left : Integer_Matrix_Type; Right : Integer_Type) return Boolean with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Lesser_Scalar_Matrix(Left : Integer_Type; Right : Integer_Matrix_Type) return Boolean with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Greater_Matrix_Matrix(Left : Integer_Matrix_Type; Right : Integer_Matrix_Type) return Boolean with Pre => Left'Length = Right'Length, Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Greater_Matrix_Scalar(Left : Integer_Matrix_Type; Right : Integer_Type) return Boolean with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Greater_Scalar_Matrix(Left : Integer_Type; Right : Integer_Matrix_Type) return Boolean with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Lesser_Or_Equal_Matrix_Matrix(Left : Integer_Matrix_Type; Right : Integer_Matrix_Type) return Boolean with Pre => Left'Length = Right'Length, Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Lesser_Or_Equal_Matrix_Scalar(Left : Integer_Matrix_Type; Right : Integer_Type) return Boolean with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Lesser_Or_Equal_Scalar_Matrix(Left : Integer_Type; Right : Integer_Matrix_Type) return Boolean with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Greater_Or_Equal_Matrix_Matrix(Left : Integer_Matrix_Type; Right : Integer_Matrix_Type) return Boolean with Pre => Left'Length = Right'Length, Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Greater_Or_Equal_Matrix_Scalar(Left : Integer_Matrix_Type; Right : Integer_Type) return Boolean with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Matrix_Type is array (Positive range <>, Positive range <>) of Integer_Type;
	function Integer_Greater_Or_Equal_Scalar_Matrix(Left : Integer_Type; Right : Integer_Matrix_Type) return Boolean with Pure_Function;

	--------------------
	-- Modular Matrix --
	--------------------

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array(Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Assert_Matrix(Value : Modular_Matrix_Type) return Modular_Matrix_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array(Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Negate_Matrix(Value : Modular_Matrix_Type) return Modular_Matrix_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Absolute_Value_Matrix(Value : Modular_Matrix_Type) return Modular_Matrix_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Add_Matrix_Matrix(Left : Modular_Matrix_Type; Right : Modular_Matrix_Type) return Modular_Matrix_Type with Pre => Left'Length = Right'Length, Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Add_Matrix_Scalar(Left : Modular_Matrix_Type; Right : Modular_Type) return Modular_Matrix_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Add_Scalar_Matrix(Left : Modular_Type; Right : Modular_Matrix_Type) return Modular_Matrix_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Subtract_Matrix_Matrix(Left : Modular_Matrix_Type; Right : Modular_Matrix_Type) return Modular_Matrix_Type with Pre => Left'Length = Right'Length, Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Subtract_Matrix_Scalar(Left : Modular_Matrix_Type; Right : Modular_Type) return Modular_Matrix_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Subtract_Scalar_Matrix(Left : Modular_Type; Right : Modular_Matrix_Type) return Modular_Matrix_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Multiply_Matrix_Matrix(Left : Modular_Matrix_Type; Right : Modular_Matrix_Type) return Modular_Matrix_Type with Pre => Left'Length = Right'Length, Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Multiply_Matrix_Scalar(Left : Modular_Matrix_Type; Right : Modular_Type) return Modular_Matrix_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Multiply_Scalar_Matrix(Left : Modular_Type; Right : Modular_Matrix_Type) return Modular_Matrix_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Divide_Matrix_Matrix(Left : Modular_Matrix_Type; Right : Modular_Matrix_Type) return Modular_Matrix_Type with Pre => Left'Length = Right'Length, Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Divide_Matrix_Scalar(Left : Modular_Matrix_Type; Right : Modular_Type) return Modular_Matrix_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Divide_Scalar_Matrix(Left : Modular_Type; Right : Modular_Matrix_Type) return Modular_Matrix_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Modulus_Matrix_Matrix(Left : Modular_Matrix_Type; Right : Modular_Matrix_Type) return Modular_Matrix_Type with Pre => Left'Length = Right'Length, Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Modulus_Matrix_Scalar(Left : Modular_Matrix_Type; Right : Modular_Type) return Modular_Matrix_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Modulus_Scalar_Matrix(Left : Modular_Type; Right : Modular_Matrix_Type) return Modular_Matrix_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Remainder_Matrix_Matrix(Left : Modular_Matrix_Type; Right : Modular_Matrix_Type) return Modular_Matrix_Type with Pre => Left'Length = Right'Length, Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Remainder_Matrix_Scalar(Left : Modular_Matrix_Type; Right : Modular_Type) return Modular_Matrix_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Remainder_Scalar_Matrix(Left : Modular_Type; Right : Modular_Matrix_Type) return Modular_Matrix_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Equal_Matrix_Matrix(Left : Modular_Matrix_Type; Right : Modular_Matrix_Type) return Boolean with Pre => Left'Length = Right'Length, Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Equal_Matrix_Scalar(Left : Modular_Matrix_Type; Right : Modular_Type) return Boolean with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Equal_Scalar_Matrix(Left : Modular_Type; Right : Modular_Matrix_Type) return Boolean with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Lesser_Matrix_Matrix(Left : Modular_Matrix_Type; Right : Modular_Matrix_Type) return Boolean with Pre => Left'Length = Right'Length, Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Lesser_Matrix_Scalar(Left : Modular_Matrix_Type; Right : Modular_Type) return Boolean with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Lesser_Scalar_Matrix(Left : Modular_Type; Right : Modular_Matrix_Type) return Boolean with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Greater_Matrix_Matrix(Left : Modular_Matrix_Type; Right : Modular_Matrix_Type) return Boolean with Pre => Left'Length = Right'Length, Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Greater_Matrix_Scalar(Left : Modular_Matrix_Type; Right : Modular_Type) return Boolean with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Greater_Scalar_Matrix(Left : Modular_Type; Right : Modular_Matrix_Type) return Boolean with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Lesser_Or_Equal_Matrix_Matrix(Left : Modular_Matrix_Type; Right : Modular_Matrix_Type) return Boolean with Pre => Left'Length = Right'Length, Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Lesser_Or_Equal_Matrix_Scalar(Left : Modular_Matrix_Type; Right : Modular_Type) return Boolean with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Lesser_Or_Equal_Scalar_Matrix(Left : Modular_Type; Right : Modular_Matrix_Type) return Boolean with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Greater_Or_Equal_Matrix_Matrix(Left : Modular_Matrix_Type; Right : Modular_Matrix_Type) return Boolean with Pre => Left'Length = Right'Length, Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Greater_Or_Equal_Matrix_Scalar(Left : Modular_Matrix_Type; Right : Modular_Type) return Boolean with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Matrix_Type is array (Positive range <>, Positive range <>) of Modular_Type;
	function Modular_Greater_Or_Equal_Scalar_Matrix(Left : Modular_Type; Right : Modular_Matrix_Type) return Boolean with Pure_Function;

	------------------
	-- Fixed Matrix --
	------------------

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Assert_Matrix(Value : Fixed_Matrix_Type) return Fixed_Matrix_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Negate_Matrix(Value : Fixed_Matrix_Type) return Fixed_Matrix_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Absolute_Value_Matrix(Value : Fixed_Matrix_Type) return Fixed_Matrix_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Add_Matrix_Matrix(Left : Fixed_Matrix_Type; Right : Fixed_Matrix_Type) return Fixed_Matrix_Type with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Add_Matrix_Scalar(Left : Fixed_Matrix_Type; Right : Fixed_Type) return Fixed_Matrix_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Add_Scalar_Matrix(Left : Fixed_Type; Right : Fixed_Matrix_Type) return Fixed_Matrix_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Subtract_Matrix_Matrix(Left : Fixed_Matrix_Type; Right : Fixed_Matrix_Type) return Fixed_Matrix_Type with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Subtract_Matrix_Scalar(Left : Fixed_Matrix_Type; Right : Fixed_Type) return Fixed_Matrix_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Subtract_Scalar_Matrix(Left : Fixed_Type; Right : Fixed_Matrix_Type) return Fixed_Matrix_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Multiply_Matrix_Matrix(Left : Fixed_Matrix_Type; Right : Fixed_Matrix_Type) return Fixed_Matrix_Type with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Multiply_Matrix_Scalar(Left : Fixed_Matrix_Type; Right : Fixed_Type) return Fixed_Matrix_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Multiply_Scalar_Matrix(Left : Fixed_Type; Right : Fixed_Matrix_Type) return Fixed_Matrix_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Divide_Matrix_Matrix(Left : Fixed_Matrix_Type; Right : Fixed_Matrix_Type) return Fixed_Matrix_Type with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Divide_Matrix_Scalar(Left : Fixed_Matrix_Type; Right : Fixed_Type) return Fixed_Matrix_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Divide_Scalar_Matrix(Left : Fixed_Type; Right : Fixed_Matrix_Type) return Fixed_Matrix_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
		with function "rem"(Left : Fixed_Type; Right : Fixed_Type) return Fixed_Type is <>;
	function Fixed_Remainder_Matrix_Matrix(Left : Fixed_Matrix_Type; Right : Fixed_Matrix_Type) return Fixed_Matrix_Type with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
		with function "rem"(Left : Fixed_Type; Right : Fixed_Type) return Fixed_Type is <>;
	function Fixed_Remainder_Matrix_Scalar(Left : Fixed_Matrix_Type; Right : Fixed_Type) return Fixed_Matrix_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
		with function "rem"(Left : Fixed_Type; Right : Fixed_Type) return Fixed_Type is <>;
	function Fixed_Remainder_Scalar_Matrix(Left : Fixed_Type; Right : Fixed_Matrix_Type) return Fixed_Matrix_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
		with function "mod"(Left : Fixed_Type; Right : Fixed_Type) return Fixed_Type is <>;
	function Fixed_Modulus_Matrix_Matrix(Left : Fixed_Matrix_Type; Right : Fixed_Matrix_Type) return Fixed_Matrix_Type with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
		with function "mod"(Left : Fixed_Type; Right : Fixed_Type) return Fixed_Type is <>;
	function Fixed_Modulus_Matrix_Scalar(Left : Fixed_Matrix_Type; Right : Fixed_Type) return Fixed_Matrix_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
		with function "mod"(Left : Fixed_Type; Right : Fixed_Type) return Fixed_Type is <>;
	function Fixed_Modulus_Scalar_Matrix(Left : Fixed_Type; Right : Fixed_Matrix_Type) return Fixed_Matrix_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Equal_Matrix_Matrix(Left : Fixed_Matrix_Type; Right : Fixed_Matrix_Type) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Equal_Matrix_Scalar(Left : Fixed_Matrix_Type; Right : Fixed_Type) return Boolean with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Equal_Scalar_Matrix(Left : Fixed_Type; Right : Fixed_Matrix_Type) return Boolean with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Lesser_Matrix_Matrix(Left : Fixed_Matrix_Type; Right : Fixed_Matrix_Type) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Lesser_Matrix_Scalar(Left : Fixed_Matrix_Type; Right : Fixed_Type) return Boolean with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Lesser_Scalar_Matrix(Left : Fixed_Type; Right : Fixed_Matrix_Type) return Boolean with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Greater_Matrix_Matrix(Left : Fixed_Matrix_Type; Right : Fixed_Matrix_Type) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Greater_Matrix_Scalar(Left : Fixed_Matrix_Type; Right : Fixed_Type) return Boolean with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Greater_Scalar_Matrix(Left : Fixed_Type; Right : Fixed_Matrix_Type) return Boolean with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Lesser_Or_Equal_Matrix_Matrix(Left : Fixed_Matrix_Type; Right : Fixed_Matrix_Type) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Lesser_Or_Equal_Matrix_Scalar(Left : Fixed_Matrix_Type; Right : Fixed_Type) return Boolean with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Lesser_Or_Equal_Scalar_Matrix(Left : Fixed_Type; Right : Fixed_Matrix_Type) return Boolean with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Greater_Or_Equal_Matrix_Matrix(Left : Fixed_Matrix_Type; Right : Fixed_Matrix_Type) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Greater_Or_Equal_Matrix_Scalar(Left : Fixed_Matrix_Type; Right : Fixed_Type) return Boolean with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Matrix_Type is array(Positive range <>, Positive range <>) of Fixed_Type;
	function Fixed_Greater_Or_Equal_Scalar_Matrix(Left : Fixed_Type; Right : Fixed_Matrix_Type) return Boolean with Pure_Function;

	--------------------
	-- Decimal Matrix --
	--------------------

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Assert_Matrix(Value : Decimal_Matrix_Type) return Decimal_Matrix_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Negate_Matrix(Value : Decimal_Matrix_Type) return Decimal_Matrix_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Absolute_Value_Matrix(Value : Decimal_Matrix_Type) return Decimal_Matrix_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Add_Matrix_Matrix(Left : Decimal_Matrix_Type; Right : Decimal_Matrix_Type) return Decimal_Matrix_Type with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Add_Matrix_Scalar(Left : Decimal_Matrix_Type; Right : Decimal_Type) return Decimal_Matrix_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Add_Scalar_Matrix(Left : Decimal_Type; Right : Decimal_Matrix_Type) return Decimal_Matrix_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Subtract_Matrix_Matrix(Left : Decimal_Matrix_Type; Right : Decimal_Matrix_Type) return Decimal_Matrix_Type with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Subtract_Matrix_Scalar(Left : Decimal_Matrix_Type; Right : Decimal_Type) return Decimal_Matrix_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Subtract_Scalar_Matrix(Left : Decimal_Type; Right : Decimal_Matrix_Type) return Decimal_Matrix_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Multiply_Matrix_Matrix(Left : Decimal_Matrix_Type; Right : Decimal_Matrix_Type) return Decimal_Matrix_Type with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Multiply_Matrix_Scalar(Left : Decimal_Matrix_Type; Right : Decimal_Type) return Decimal_Matrix_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Multiply_Scalar_Matrix(Left : Decimal_Type; Right : Decimal_Matrix_Type) return Decimal_Matrix_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Divide_Matrix_Matrix(Left : Decimal_Matrix_Type; Right : Decimal_Matrix_Type) return Decimal_Matrix_Type with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Divide_Matrix_Scalar(Left : Decimal_Matrix_Type; Right : Decimal_Type) return Decimal_Matrix_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Divide_Scalar_Matrix(Left : Decimal_Type; Right : Decimal_Matrix_Type) return Decimal_Matrix_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
		with function "rem"(Left : Decimal_Type; Right : Decimal_Type) return Decimal_Type is <>;
	function Decimal_Remainder_Matrix_Matrix(Left : Decimal_Matrix_Type; Right : Decimal_Matrix_Type) return Decimal_Matrix_Type with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
		with function "rem"(Left : Decimal_Type; Right : Decimal_Type) return Decimal_Type is <>;
	function Decimal_Remainder_Matrix_Scalar(Left : Decimal_Matrix_Type; Right : Decimal_Type) return Decimal_Matrix_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
		with function "rem"(Left : Decimal_Type; Right : Decimal_Type) return Decimal_Type is <>;
	function Decimal_Remainder_Scalar_Matrix(Left : Decimal_Type; Right : Decimal_Matrix_Type) return Decimal_Matrix_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
		with function "mod"(Left : Decimal_Type; Right : Decimal_Type) return Decimal_Type is <>;
	function Decimal_Modulus_Matrix_Matrix(Left : Decimal_Matrix_Type; Right : Decimal_Matrix_Type) return Decimal_Matrix_Type with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
		with function "mod"(Left : Decimal_Type; Right : Decimal_Type) return Decimal_Type is <>;
	function Decimal_Modulus_Matrix_Scalar(Left : Decimal_Matrix_Type; Right : Decimal_Type) return Decimal_Matrix_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
		with function "mod"(Left : Decimal_Type; Right : Decimal_Type) return Decimal_Type is <>;
	function Decimal_Modulus_Scalar_Matrix(Left : Decimal_Type; Right : Decimal_Matrix_Type) return Decimal_Matrix_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Equal_Matrix_Matrix(Left : Decimal_Matrix_Type; Right : Decimal_Matrix_Type) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Equal_Matrix_Scalar(Left : Decimal_Matrix_Type; Right : Decimal_Type) return Boolean with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Equal_Scalar_Matrix(Left : Decimal_Type; Right : Decimal_Matrix_Type) return Boolean with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Lesser_Matrix_Matrix(Left : Decimal_Matrix_Type; Right : Decimal_Matrix_Type) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Lesser_Matrix_Scalar(Left : Decimal_Matrix_Type; Right : Decimal_Type) return Boolean with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Lesser_Scalar_Matrix(Left : Decimal_Type; Right : Decimal_Matrix_Type) return Boolean with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Greater_Matrix_Matrix(Left : Decimal_Matrix_Type; Right : Decimal_Matrix_Type) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Greater_Matrix_Scalar(Left : Decimal_Matrix_Type; Right : Decimal_Type) return Boolean with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Greater_Scalar_Matrix(Left : Decimal_Type; Right : Decimal_Matrix_Type) return Boolean with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Lesser_Or_Equal_Matrix_Matrix(Left : Decimal_Matrix_Type; Right : Decimal_Matrix_Type) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Lesser_Or_Equal_Matrix_Scalar(Left : Decimal_Matrix_Type; Right : Decimal_Type) return Boolean with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Lesser_Or_Equal_Scalar_Matrix(Left : Decimal_Type; Right : Decimal_Matrix_Type) return Boolean with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Greater_Or_Equal_Matrix_Matrix(Left : Decimal_Matrix_Type; Right : Decimal_Matrix_Type) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Greater_Or_Equal_Matrix_Scalar(Left : Decimal_Matrix_Type; Right : Decimal_Type) return Boolean with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Matrix_Type is array(Positive range <>, Positive range <>) of Decimal_Type;
	function Decimal_Greater_Or_Equal_Scalar_Matrix(Left : Decimal_Type; Right : Decimal_Matrix_Type) return Boolean with Pure_Function;

	------------------
	-- Float Matrix --
	------------------

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Assert_Matrix(Value : Float_Matrix_Type) return Float_Matrix_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Negate_Matrix(Value : Float_Matrix_Type) return Float_Matrix_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Absolute_Value_Matrix(Value : Float_Matrix_Type) return Float_Matrix_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Add_Matrix_Matrix(Left : Float_Matrix_Type; Right : Float_Matrix_Type) return Float_Matrix_Type with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Add_Matrix_Scalar(Left : Float_Matrix_Type; Right : Float_Type) return Float_Matrix_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Add_Scalar_Matrix(Left : Float_Type; Right : Float_Matrix_Type) return Float_Matrix_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Subtract_Matrix_Matrix(Left : Float_Matrix_Type; Right : Float_Matrix_Type) return Float_Matrix_Type with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Subtract_Matrix_Scalar(Left : Float_Matrix_Type; Right : Float_Type) return Float_Matrix_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Subtract_Scalar_Matrix(Left : Float_Type; Right : Float_Matrix_Type) return Float_Matrix_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Multiply_Matrix_Matrix(Left : Float_Matrix_Type; Right : Float_Matrix_Type) return Float_Matrix_Type with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Multiply_Matrix_Scalar(Left : Float_Matrix_Type; Right : Float_Type) return Float_Matrix_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Multiply_Scalar_Matrix(Left : Float_Type; Right : Float_Matrix_Type) return Float_Matrix_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Divide_Matrix_Matrix(Left : Float_Matrix_Type; Right : Float_Matrix_Type) return Float_Matrix_Type with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Divide_Matrix_Scalar(Left : Float_Matrix_Type; Right : Float_Type) return Float_Matrix_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Divide_Scalar_Matrix(Left : Float_Type; Right : Float_Matrix_Type) return Float_Matrix_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
		with function "rem"(Left : Float_Type; Right : Float_Type) return Float_Type is <>;
	function Float_Remainder_Matrix_Matrix(Left : Float_Matrix_Type; Right : Float_Matrix_Type) return Float_Matrix_Type with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
		with function "rem"(Left : Float_Type; Right : Float_Type) return Float_Type is <>;
	function Float_Remainder_Matrix_Scalar(Left : Float_Matrix_Type; Right : Float_Type) return Float_Matrix_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
		with function "rem"(Left : Float_Type; Right : Float_Type) return Float_Type is <>;
	function Float_Remainder_Scalar_Matrix(Left : Float_Type; Right : Float_Matrix_Type) return Float_Matrix_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
		with function "mod"(Left : Float_Type; Right : Float_Type) return Float_Type is <>;
	function Float_Modulus_Matrix_Matrix(Left : Float_Matrix_Type; Right : Float_Matrix_Type) return Float_Matrix_Type with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
		with function "mod"(Left : Float_Type; Right : Float_Type) return Float_Type is <>;
	function Float_Modulus_Matrix_Scalar(Left : Float_Matrix_Type; Right : Float_Type) return Float_Matrix_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
		with function "mod"(Left : Float_Type; Right : Float_Type) return Float_Type is <>;
	function Float_Modulus_Scalar_Matrix(Left : Float_Type; Right : Float_Matrix_Type) return Float_Matrix_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Equal_Matrix_Matrix(Left : Float_Matrix_Type; Right : Float_Matrix_Type) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Equal_Matrix_Scalar(Left : Float_Matrix_Type; Right : Float_Type) return Boolean with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Equal_Scalar_Matrix(Left : Float_Type; Right : Float_Matrix_Type) return Boolean with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Lesser_Matrix_Matrix(Left : Float_Matrix_Type; Right : Float_Matrix_Type) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Lesser_Matrix_Scalar(Left : Float_Matrix_Type; Right : Float_Type) return Boolean with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Lesser_Scalar_Matrix(Left : Float_Type; Right : Float_Matrix_Type) return Boolean with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Greater_Matrix_Matrix(Left : Float_Matrix_Type; Right : Float_Matrix_Type) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Greater_Matrix_Scalar(Left : Float_Matrix_Type; Right : Float_Type) return Boolean with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Greater_Scalar_Matrix(Left : Float_Type; Right : Float_Matrix_Type) return Boolean with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Lesser_Or_Equal_Matrix_Matrix(Left : Float_Matrix_Type; Right : Float_Matrix_Type) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Lesser_Or_Equal_Matrix_Scalar(Left : Float_Matrix_Type; Right : Float_Type) return Boolean with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Lesser_Or_Equal_Scalar_Matrix(Left : Float_Type; Right : Float_Matrix_Type) return Boolean with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Greater_Or_Equal_Matrix_Matrix(Left : Float_Matrix_Type; Right : Float_Matrix_Type) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Greater_Or_Equal_Matrix_Scalar(Left : Float_Matrix_Type; Right : Float_Type) return Boolean with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Matrix_Type is array(Positive range <>, Positive range <>) of Float_Type;
	function Float_Greater_Or_Equal_Scalar_Matrix(Left : Float_Type; Right : Float_Matrix_Type) return Boolean with Pure_Function;

end Generics.Mathematics.Matrices;
