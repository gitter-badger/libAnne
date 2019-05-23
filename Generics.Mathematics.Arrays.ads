package Generics.Mathematics.Arrays with Pure is
--@Description Provides generic, serial, but highly portable, operations for arrays.
--@Version 1.0
--This package is meant to provide realiable support for all platforms, but not in any efficient way.
--Because of the lack of ability to overload in generics, a unique naming scheme of <type>_<operation>_(scalar|array)_(scalar|array) is used.

	-------------------
	-- Integer Array --
	-------------------

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Fill_Comprehension(Lower_Bound, Upper_Bound : Integer_Type) return Integer_Array_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Step_Comprehension(Lower_Bound, Upper_Bound, Step : Integer_Type) return Integer_Array_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Assert_Array(Value : Integer_Array_Type) return Integer_Array_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Negate_Array(Value : Integer_Array_Type) return Integer_Array_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Absolute_Value_Array(Value : Integer_Array_Type) return Integer_Array_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Add_Array_Array(Left : Integer_Array_Type; Right : Integer_Array_Type) return Integer_Array_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Add_Array_Scalar(Left : Integer_Array_Type; Right : Integer_Type) return Integer_Array_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Add_Scalar_Array(Left : Integer_Type; Right : Integer_Array_Type) return Integer_Array_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Subtract_Array_Array(Left : Integer_Array_Type; Right : Integer_Array_Type) return Integer_Array_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Subtract_Array_Scalar(Left : Integer_Array_Type; Right : Integer_Type) return Integer_Array_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Subtract_Scalar_Array(Left : Integer_Type; Right : Integer_Array_Type) return Integer_Array_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Multiply_Array_Array(Left : Integer_Array_Type; Right : Integer_Array_Type) return Integer_Array_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Multiply_Array_Scalar(Left : Integer_Array_Type; Right : Integer_Type) return Integer_Array_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Multiply_Scalar_Array(Left : Integer_Type; Right : Integer_Array_Type) return Integer_Array_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Scalar_Product(Left : Integer_Array_Type; Right : Integer_Array_Type) return Integer_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Divide_Array_Array(Left : Integer_Array_Type; Right : Integer_Array_Type) return Integer_Array_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Divide_Array_Scalar(Left : Integer_Array_Type; Right : Integer_Type) return Integer_Array_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Divide_Scalar_Array(Left : Integer_Type; Right : Integer_Array_Type) return Integer_Array_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Remainder_Array_Array(Left : Integer_Array_Type; Right : Integer_Array_Type) return Integer_Array_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Remainder_Array_Scalar(Left : Integer_Array_Type; Right : Integer_Type) return Integer_Array_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Remainder_Scalar_Array(Left : Integer_Type; Right : Integer_Array_Type) return Integer_Array_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Modulus_Array_Array(Left : Integer_Array_Type; Right : Integer_Array_Type) return Integer_Array_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Modulus_Array_Scalar(Left : Integer_Array_Type; Right : Integer_Type) return Integer_Array_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Modulus_Scalar_Array(Left : Integer_Type; Right : Integer_Array_Type) return Integer_Array_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Equal_Array_Array(Left : Integer_Array_Type; Right : Integer_Array_Type) return Boolean with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Equal_Array_Scalar(Left : Integer_Array_Type; Right : Integer_Type) return Boolean with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Equal_Scalar_Array(Left : Integer_Type; Right : Integer_Array_Type) return Boolean with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Lesser_Array_Array(Left : Integer_Array_Type; Right : Integer_Array_Type) return Boolean with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Lesser_Array_Scalar(Left : Integer_Array_Type; Right : Integer_Type) return Boolean with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Lesser_Scalar_Array(Left : Integer_Type; Right : Integer_Array_Type) return Boolean with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Greater_Array_Array(Left : Integer_Array_Type; Right : Integer_Array_Type) return Boolean with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Greater_Array_Scalar(Left : Integer_Array_Type; Right : Integer_Type) return Boolean with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Greater_Scalar_Array(Left : Integer_Type; Right : Integer_Array_Type) return Boolean with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Lesser_Or_Equal_Array_Array(Left : Integer_Array_Type; Right : Integer_Array_Type) return Boolean with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Lesser_Or_Equal_Array_Scalar(Left : Integer_Array_Type; Right : Integer_Type) return Boolean with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Lesser_Or_Equal_Scalar_Array(Left : Integer_Type; Right : Integer_Array_Type) return Boolean with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Greater_Or_Equal_Array_Array(Left : Integer_Array_Type; Right : Integer_Array_Type) return Boolean with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Greater_Or_Equal_Array_Scalar(Left : Integer_Array_Type; Right : Integer_Type) return Boolean with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Greater_Or_Equal_Scalar_Array(Left : Integer_Type; Right : Integer_Array_Type) return Boolean with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Max(Value : Integer_Array_Type) return Integer_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Min(Value : Integer_Array_Type) return Integer_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Apply_Procedure(Value : Integer_Array_Type; Call : access Procedure(Value : in out Integer_Type)) return Integer_Array_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Apply_Function(Value : Integer_Array_Type; Call : access Function(Value : Integer_Type) return Integer_Type) return Integer_Array_Type with Pure_Function;

	generic
		type Integer_Type is range <>;
		type Integer_Array_Type is array(Positive range <>) of Integer_Type;
	function Integer_Fold(Value : Integer_Array_Type; Call : access Function(A, B : Integer_Type) return Integer_Type) return Integer_Type with Pure_Function;
	
	-------------------
	-- Modular Array --
	-------------------

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Fill_Comprehension(Lower_Bound, Upper_Bound : Modular_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Step_Comprehension(Lower_Bound, Upper_Bound, Step : Modular_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Assert_Array(Value : Modular_Array_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Negate_Array(Value : Modular_Array_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Absolute_Value_Array(Value : Modular_Array_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Add_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Add_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Add_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Subtract_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Subtract_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Subtract_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Multiply_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Multiply_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Multiply_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Scalar_Product(Left : Modular_Array_Type; Right : Modular_Array_Type) return Modular_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Divide_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Divide_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Divide_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Remainder_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Remainder_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Remainder_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Modulus_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Modulus_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Modulus_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Not_Array(Value : Modular_Array_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_And_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_And_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_And_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Or_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Or_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Or_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Xor_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Xor_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Xor_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Equal_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Boolean with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Equal_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Boolean with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Equal_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Boolean with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Lesser_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Boolean with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Lesser_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Boolean with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Lesser_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Boolean with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Greater_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Boolean with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Greater_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Boolean with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Greater_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Boolean with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Lesser_Or_Equal_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Boolean with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Lesser_Or_Equal_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Boolean with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Lesser_Or_Equal_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Boolean with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Greater_Or_Equal_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Boolean with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Greater_Or_Equal_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Boolean with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Greater_Or_Equal_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Boolean with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Max(Value : Modular_Array_Type) return Modular_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Min(Value : Modular_Array_Type) return Modular_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Apply_Procedure(Value : Modular_Array_Type; Call : access Procedure(Value : in out Modular_Type)) return Modular_Array_Type with Pure_Function;

	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Apply_Function(Value : Modular_Array_Type; Call : access Function(Value : Modular_Type) return Modular_Type) return Modular_Array_Type with Pure_Function;
	
	generic
		type Modular_Type is mod <>;
		type Modular_Array_Type is array(Positive range <>) of Modular_Type;
	function Modular_Fold(Value : Modular_Array_Type; Call : access Function(A, B : Modular_Type) return Modular_Type) return Modular_Type with Pure_Function;
	
	-----------------
	-- Fixed Array --
	-----------------

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Step_Comprehension(Lower_Bound, Upper_Bound, Step : Fixed_Type) return Fixed_Array_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Assert_Array(Value : Fixed_Array_Type) return Fixed_Array_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Negate_Array(Value : Fixed_Array_Type) return Fixed_Array_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Absolute_Value_Array(Value : Fixed_Array_Type) return Fixed_Array_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Add_Array_Array(Left : Fixed_Array_Type; Right : Fixed_Array_Type) return Fixed_Array_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Add_Array_Scalar(Left : Fixed_Array_Type; Right : Fixed_Type) return Fixed_Array_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Add_Scalar_Array(Left : Fixed_Type; Right : Fixed_Array_Type) return Fixed_Array_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Subtract_Array_Array(Left : Fixed_Array_Type; Right : Fixed_Array_Type) return Fixed_Array_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Subtract_Array_Scalar(Left : Fixed_Array_Type; Right : Fixed_Type) return Fixed_Array_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Subtract_Scalar_Array(Left : Fixed_Type; Right : Fixed_Array_Type) return Fixed_Array_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Multiply_Array_Array(Left : Fixed_Array_Type; Right : Fixed_Array_Type) return Fixed_Array_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Multiply_Array_Scalar(Left : Fixed_Array_Type; Right : Fixed_Type) return Fixed_Array_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Multiply_Scalar_Array(Left : Fixed_Type; Right : Fixed_Array_Type) return Fixed_Array_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Scalar_Product(Left : Fixed_Array_Type; Right : Fixed_Array_Type) return Fixed_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Divide_Array_Array(Left : Fixed_Array_Type; Right : Fixed_Array_Type) return Fixed_Array_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Divide_Array_Scalar(Left : Fixed_Array_Type; Right : Fixed_Type) return Fixed_Array_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Divide_Scalar_Array(Left : Fixed_Type; Right : Fixed_Array_Type) return Fixed_Array_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
		with function "rem"(Left : Fixed_Type; Right : Fixed_Type) return Fixed_Type is <>;
	function Fixed_Remainder_Array_Array(Left : Fixed_Array_Type; Right : Fixed_Array_Type) return Fixed_Array_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
		with function "rem"(Left : Fixed_Type; Right : Fixed_Type) return Fixed_Type is <>;
	function Fixed_Remainder_Array_Scalar(Left : Fixed_Array_Type; Right : Fixed_Type) return Fixed_Array_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
		with function "rem"(Left : Fixed_Type; Right : Fixed_Type) return Fixed_Type is <>;
	function Fixed_Remainder_Scalar_Array(Left : Fixed_Type; Right : Fixed_Array_Type) return Fixed_Array_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
		with function "mod"(Left : Fixed_Type; Right : Fixed_Type) return Fixed_Type is <>;
	function Fixed_Modulus_Array_Array(Left : Fixed_Array_Type; Right : Fixed_Array_Type) return Fixed_Array_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
		with function "mod"(Left : Fixed_Type; Right : Fixed_Type) return Fixed_Type is <>;
	function Fixed_Modulus_Array_Scalar(Left : Fixed_Array_Type; Right : Fixed_Type) return Fixed_Array_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
		with function "mod"(Left : Fixed_Type; Right : Fixed_Type) return Fixed_Type is <>;
	function Fixed_Modulus_Scalar_Array(Left : Fixed_Type; Right : Fixed_Array_Type) return Fixed_Array_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Equal_Array_Array(Left : Fixed_Array_Type; Right : Fixed_Array_Type) return Boolean with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Equal_Array_Scalar(Left : Fixed_Array_Type; Right : Fixed_Type) return Boolean with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Equal_Scalar_Array(Left : Fixed_Type; Right : Fixed_Array_Type) return Boolean with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Lesser_Array_Array(Left : Fixed_Array_Type; Right : Fixed_Array_Type) return Boolean with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Lesser_Array_Scalar(Left : Fixed_Array_Type; Right : Fixed_Type) return Boolean with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Lesser_Scalar_Array(Left : Fixed_Type; Right : Fixed_Array_Type) return Boolean with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Greater_Array_Array(Left : Fixed_Array_Type; Right : Fixed_Array_Type) return Boolean with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Greater_Array_Scalar(Left : Fixed_Array_Type; Right : Fixed_Type) return Boolean with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Greater_Scalar_Array(Left : Fixed_Type; Right : Fixed_Array_Type) return Boolean with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Lesser_Or_Equal_Array_Array(Left : Fixed_Array_Type; Right : Fixed_Array_Type) return Boolean with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Lesser_Or_Equal_Array_Scalar(Left : Fixed_Array_Type; Right : Fixed_Type) return Boolean with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Lesser_Or_Equal_Scalar_Array(Left : Fixed_Type; Right : Fixed_Array_Type) return Boolean with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Greater_Or_Equal_Array_Array(Left : Fixed_Array_Type; Right : Fixed_Array_Type) return Boolean with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Greater_Or_Equal_Array_Scalar(Left : Fixed_Array_Type; Right : Fixed_Type) return Boolean with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Greater_Or_Equal_Scalar_Array(Left : Fixed_Type; Right : Fixed_Array_Type) return Boolean with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Max(Value : Fixed_Array_Type) return Fixed_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Min(Value : Fixed_Array_Type) return Fixed_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Apply_Procedure(Value : Fixed_Array_Type; Call : access Procedure(Value : in out Fixed_Type)) return Fixed_Array_Type with Pure_Function;

	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Apply_Function(Value : Fixed_Array_Type; Call : access Function(Value : Fixed_Type) return Fixed_Type) return Fixed_Array_Type with Pure_Function;
	
	generic
		type Fixed_Type is delta <>;
		type Fixed_Array_Type is array(Positive range <>) of Fixed_Type;
	function Fixed_Fold(Value : Fixed_Array_Type; Call : access Function(A, B : Fixed_Type) return Fixed_Type) return Fixed_Type with Pure_Function;
	
	-------------------
	-- Decimal Array --
	-------------------

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Step_Comprehension(Lower_Bound, Upper_Bound, Step : Decimal_Type) return Decimal_Array_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Assert_Array(Value : Decimal_Array_Type) return Decimal_Array_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Negate_Array(Value : Decimal_Array_Type) return Decimal_Array_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Absolute_Value_Array(Value : Decimal_Array_Type) return Decimal_Array_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Add_Array_Array(Left : Decimal_Array_Type; Right : Decimal_Array_Type) return Decimal_Array_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Add_Array_Scalar(Left : Decimal_Array_Type; Right : Decimal_Type) return Decimal_Array_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Add_Scalar_Array(Left : Decimal_Type; Right : Decimal_Array_Type) return Decimal_Array_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Subtract_Array_Array(Left : Decimal_Array_Type; Right : Decimal_Array_Type) return Decimal_Array_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Subtract_Array_Scalar(Left : Decimal_Array_Type; Right : Decimal_Type) return Decimal_Array_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Subtract_Scalar_Array(Left : Decimal_Type; Right : Decimal_Array_Type) return Decimal_Array_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Multiply_Array_Array(Left : Decimal_Array_Type; Right : Decimal_Array_Type) return Decimal_Array_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Multiply_Array_Scalar(Left : Decimal_Array_Type; Right : Decimal_Type) return Decimal_Array_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Multiply_Scalar_Array(Left : Decimal_Type; Right : Decimal_Array_Type) return Decimal_Array_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Scalar_Product(Left : Decimal_Array_Type; Right : Decimal_Array_Type) return Decimal_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Divide_Array_Array(Left : Decimal_Array_Type; Right : Decimal_Array_Type) return Decimal_Array_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Divide_Array_Scalar(Left : Decimal_Array_Type; Right : Decimal_Type) return Decimal_Array_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Divide_Scalar_Array(Left : Decimal_Type; Right : Decimal_Array_Type) return Decimal_Array_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
		with function "rem"(Left : Decimal_Type; Right : Decimal_Type) return Decimal_Type is <>;
	function Decimal_Remainder_Array_Array(Left : Decimal_Array_Type; Right : Decimal_Array_Type) return Decimal_Array_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
		with function "rem"(Left : Decimal_Type; Right : Decimal_Type) return Decimal_Type is <>;
	function Decimal_Remainder_Array_Scalar(Left : Decimal_Array_Type; Right : Decimal_Type) return Decimal_Array_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
		with function "rem"(Left : Decimal_Type; Right : Decimal_Type) return Decimal_Type is <>;
	function Decimal_Remainder_Scalar_Array(Left : Decimal_Type; Right : Decimal_Array_Type) return Decimal_Array_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
		with function "mod"(Left : Decimal_Type; Right : Decimal_Type) return Decimal_Type is <>;
	function Decimal_Modulus_Array_Array(Left : Decimal_Array_Type; Right : Decimal_Array_Type) return Decimal_Array_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
		with function "mod"(Left : Decimal_Type; Right : Decimal_Type) return Decimal_Type is <>;
	function Decimal_Modulus_Array_Scalar(Left : Decimal_Array_Type; Right : Decimal_Type) return Decimal_Array_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
		with function "mod"(Left : Decimal_Type; Right : Decimal_Type) return Decimal_Type is <>;
	function Decimal_Modulus_Scalar_Array(Left : Decimal_Type; Right : Decimal_Array_Type) return Decimal_Array_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Equal_Array_Array(Left : Decimal_Array_Type; Right : Decimal_Array_Type) return Boolean with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Equal_Array_Scalar(Left : Decimal_Array_Type; Right : Decimal_Type) return Boolean with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Equal_Scalar_Array(Left : Decimal_Type; Right : Decimal_Array_Type) return Boolean with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Lesser_Array_Array(Left : Decimal_Array_Type; Right : Decimal_Array_Type) return Boolean with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Lesser_Array_Scalar(Left : Decimal_Array_Type; Right : Decimal_Type) return Boolean with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Lesser_Scalar_Array(Left : Decimal_Type; Right : Decimal_Array_Type) return Boolean with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Greater_Array_Array(Left : Decimal_Array_Type; Right : Decimal_Array_Type) return Boolean with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Greater_Array_Scalar(Left : Decimal_Array_Type; Right : Decimal_Type) return Boolean with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Greater_Scalar_Array(Left : Decimal_Type; Right : Decimal_Array_Type) return Boolean with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Lesser_Or_Equal_Array_Array(Left : Decimal_Array_Type; Right : Decimal_Array_Type) return Boolean with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Lesser_Or_Equal_Array_Scalar(Left : Decimal_Array_Type; Right : Decimal_Type) return Boolean with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Lesser_Or_Equal_Scalar_Array(Left : Decimal_Type; Right : Decimal_Array_Type) return Boolean with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Greater_Or_Equal_Array_Array(Left : Decimal_Array_Type; Right : Decimal_Array_Type) return Boolean with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Greater_Or_Equal_Array_Scalar(Left : Decimal_Array_Type; Right : Decimal_Type) return Boolean with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Greater_Or_Equal_Scalar_Array(Left : Decimal_Type; Right : Decimal_Array_Type) return Boolean with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Max(Value : Decimal_Array_Type) return Decimal_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Min(Value : Decimal_Array_Type) return Decimal_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Apply_Procedure(Value : Decimal_Array_Type; Call : access Procedure(Value : in out Decimal_Type)) return Decimal_Array_Type with Pure_Function;

	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Apply_Function(Value : Decimal_Array_Type; Call : access Function(Value : Decimal_Type) return Decimal_Type) return Decimal_Array_Type with Pure_Function;
	
	generic
		type Decimal_Type is delta <> digits <>;
		type Decimal_Array_Type is array(Positive range <>) of Decimal_Type;
	function Decimal_Fold(Value : Decimal_Array_Type; Call : access Function(A, B : Decimal_Type) return Decimal_Type) return Decimal_Type with Pure_Function;
	
	-----------------
	-- Float Array --
	-----------------

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Step_Comprehension(Lower_Bound, Upper_Bound, Step : Float_Type) return Float_Array_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Assert_Array(Value : Float_Array_Type) return Float_Array_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Negate_Array(Value : Float_Array_Type) return Float_Array_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Absolute_Value_Array(Value : Float_Array_Type) return Float_Array_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Add_Array_Array(Left : Float_Array_Type; Right : Float_Array_Type) return Float_Array_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Add_Array_Scalar(Left : Float_Array_Type; Right : Float_Type) return Float_Array_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Add_Scalar_Array(Left : Float_Type; Right : Float_Array_Type) return Float_Array_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Subtract_Array_Array(Left : Float_Array_Type; Right : Float_Array_Type) return Float_Array_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Subtract_Array_Scalar(Left : Float_Array_Type; Right : Float_Type) return Float_Array_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Subtract_Scalar_Array(Left : Float_Type; Right : Float_Array_Type) return Float_Array_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Multiply_Array_Array(Left : Float_Array_Type; Right : Float_Array_Type) return Float_Array_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Multiply_Array_Scalar(Left : Float_Array_Type; Right : Float_Type) return Float_Array_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Multiply_Scalar_Array(Left : Float_Type; Right : Float_Array_Type) return Float_Array_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Scalar_Product(Left : Float_Array_Type; Right : Float_Array_Type) return Float_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Divide_Array_Array(Left : Float_Array_Type; Right : Float_Array_Type) return Float_Array_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Divide_Array_Scalar(Left : Float_Array_Type; Right : Float_Type) return Float_Array_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Divide_Scalar_Array(Left : Float_Type; Right : Float_Array_Type) return Float_Array_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
		with function "rem"(Left : Float_Type; Right : Float_Type) return Float_Type is <>;
	function Float_Remainder_Array_Array(Left : Float_Array_Type; Right : Float_Array_Type) return Float_Array_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
		with function "rem"(Left : Float_Type; Right : Float_Type) return Float_Type is <>;
	function Float_Remainder_Array_Scalar(Left : Float_Array_Type; Right : Float_Type) return Float_Array_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
		with function "rem"(Left : Float_Type; Right : Float_Type) return Float_Type is <>;
	function Float_Remainder_Scalar_Array(Left : Float_Type; Right : Float_Array_Type) return Float_Array_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
		with function "mod"(Left : Float_Type; Right : Float_Type) return Float_Type is <>;
	function Float_Modulus_Array_Array(Left : Float_Array_Type; Right : Float_Array_Type) return Float_Array_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
		with function "mod"(Left : Float_Type; Right : Float_Type) return Float_Type is <>;
	function Float_Modulus_Array_Scalar(Left : Float_Array_Type; Right : Float_Type) return Float_Array_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
		with function "mod"(Left : Float_Type; Right : Float_Type) return Float_Type is <>;
	function Float_Modulus_Scalar_Array(Left : Float_Type; Right : Float_Array_Type) return Float_Array_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Equal_Array_Array(Left : Float_Array_Type; Right : Float_Array_Type) return Boolean with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Equal_Array_Scalar(Left : Float_Array_Type; Right : Float_Type) return Boolean with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Equal_Scalar_Array(Left : Float_Type; Right : Float_Array_Type) return Boolean with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Lesser_Array_Array(Left : Float_Array_Type; Right : Float_Array_Type) return Boolean with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Lesser_Array_Scalar(Left : Float_Array_Type; Right : Float_Type) return Boolean with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Lesser_Scalar_Array(Left : Float_Type; Right : Float_Array_Type) return Boolean with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Greater_Array_Array(Left : Float_Array_Type; Right : Float_Array_Type) return Boolean with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Greater_Array_Scalar(Left : Float_Array_Type; Right : Float_Type) return Boolean with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Greater_Scalar_Array(Left : Float_Type; Right : Float_Array_Type) return Boolean with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Lesser_Or_Equal_Array_Array(Left : Float_Array_Type; Right : Float_Array_Type) return Boolean with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Lesser_Or_Equal_Array_Scalar(Left : Float_Array_Type; Right : Float_Type) return Boolean with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Lesser_Or_Equal_Scalar_Array(Left : Float_Type; Right : Float_Array_Type) return Boolean with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Greater_Or_Equal_Array_Array(Left : Float_Array_Type; Right : Float_Array_Type) return Boolean with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Greater_Or_Equal_Array_Scalar(Left : Float_Array_Type; Right : Float_Type) return Boolean with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Greater_Or_Equal_Scalar_Array(Left : Float_Type; Right : Float_Array_Type) return Boolean with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Max(Value : Float_Array_Type) return Float_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Min(Value : Float_Array_Type) return Float_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Apply_Procedure(Value : Float_Array_Type; Call : access Procedure(Value : in out Float_Type)) return Float_Array_Type with Pure_Function;

	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Apply_Function(Value : Float_Array_Type; Call : access Function(Value : Float_Type) return Float_Type) return Float_Array_Type with Pure_Function;
	
	generic
		type Float_Type is digits <>;
		type Float_Array_Type is array(Positive range <>) of Float_Type;
	function Float_Fold(Value : Float_Array_Type; Call : access Function(A, B : Float_Type) return Float_Type) return Float_Type with Pure_Function;
	
end Generics.Mathematics.Arrays;
