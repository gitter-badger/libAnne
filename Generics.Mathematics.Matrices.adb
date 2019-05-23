package body Generics.Mathematics.Matrices is

	-------------
	-- Integer --
	-------------

	function Integer_Assert_Matrix(Value : Integer_Matrix_Type) return Integer_Matrix_Type is
		Result : Integer_Matrix_Type := Value;
	begin
		for R of Result loop
			R := +R;
		end loop;
		return Result;
	end Integer_Assert_Matrix;

	function Integer_Negate_Matrix(Value : Integer_Matrix_Type) return Integer_Matrix_Type is
		Result : Integer_Matrix_Type := Value;
	begin
		for R of Result loop
			R := -R;
		end loop;
		return Result;
	end Integer_Negate_Matrix;

	function Integer_Absolute_Value_Matrix(Value : Integer_Matrix_Type) return Integer_Matrix_Type is
		Result : Integer_Matrix_Type := Value;
	begin
		for R of Result loop
			R := abs R;
		end loop;
		return Result;
	end Integer_Absolute_Value_Matrix;

	function Integer_Add_Matrix_Matrix(Left : Integer_Matrix_Type; Right : Integer_Matrix_Type) return Integer_Matrix_Type is
		Result : Integer_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) + Right(I,J);
			end loop;
		end loop;
		return Result;
	end Integer_Add_Matrix_Matrix;

	function Integer_Add_Matrix_Scalar(Left : Integer_Matrix_Type; Right : Integer_Type) return Integer_Matrix_Type is
		Result : Integer_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R + Right;
		end loop;
		return Result;
	end Integer_Add_Matrix_Scalar;

	function Integer_Add_Scalar_Matrix(Left : Integer_Type; Right : Integer_Matrix_Type) return Integer_Matrix_Type is
		Result : Integer_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left + R;
		end loop;
		return Result;
	end Integer_Add_Scalar_Matrix;

	function Integer_Subtract_Matrix_Matrix(Left : Integer_Matrix_Type; Right : Integer_Matrix_Type) return Integer_Matrix_Type is
		Result : Integer_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) - Right(I,J);
			end loop;
		end loop;
		return Result;
	end Integer_Subtract_Matrix_Matrix;

	function Integer_Subtract_Matrix_Scalar(Left : Integer_Matrix_Type; Right : Integer_Type) return Integer_Matrix_Type is
		Result : Integer_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R - Right;
		end loop;
		return Result;
	end Integer_Subtract_Matrix_Scalar;

	function Integer_Subtract_Scalar_Matrix(Left : Integer_Type; Right : Integer_Matrix_Type) return Integer_Matrix_Type is
		Result : Integer_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left - R;
		end loop;
		return Result;
	end Integer_Subtract_Scalar_Matrix;

	function Integer_Multiply_Matrix_Matrix(Left : Integer_Matrix_Type; Right : Integer_Matrix_Type) return Integer_Matrix_Type is
		Result : Integer_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) * Right(I,J);
			end loop;
		end loop;
		return Result;
	end Integer_Multiply_Matrix_Matrix;

	function Integer_Multiply_Matrix_Scalar(Left : Integer_Matrix_Type; Right : Integer_Type) return Integer_Matrix_Type is
		Result : Integer_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R * Right;
		end loop;
		return Result;
	end Integer_Multiply_Matrix_Scalar;

	function Integer_Multiply_Scalar_Matrix(Left : Integer_Type; Right : Integer_Matrix_Type) return Integer_Matrix_Type is
		Result : Integer_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left * R;
		end loop;
		return Result;
	end Integer_Multiply_Scalar_Matrix;

	function Integer_Divide_Matrix_Matrix(Left : Integer_Matrix_Type; Right : Integer_Matrix_Type) return Integer_Matrix_Type is
		Result : Integer_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) / Right(I,J);
			end loop;
		end loop;
		return Result;
	end Integer_Divide_Matrix_Matrix;

	function Integer_Divide_Matrix_Scalar(Left : Integer_Matrix_Type; Right : Integer_Type) return Integer_Matrix_Type is
		Result : Integer_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R / Right;
		end loop;
		return Result;
	end Integer_Divide_Matrix_Scalar;

	function Integer_Divide_Scalar_Matrix(Left : Integer_Type; Right : Integer_Matrix_Type) return Integer_Matrix_Type is
		Result : Integer_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left / R;
		end loop;
		return Result;
	end Integer_Divide_Scalar_Matrix;

	function Integer_Modulus_Matrix_Matrix(Left : Integer_Matrix_Type; Right : Integer_Matrix_Type) return Integer_Matrix_Type is
		Result : Integer_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) mod Right(I,J);
			end loop;
		end loop;
		return Result;
	end Integer_Modulus_Matrix_Matrix;

	function Integer_Modulus_Matrix_Scalar(Left : Integer_Matrix_Type; Right : Integer_Type) return Integer_Matrix_Type is
		Result : Integer_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R mod Right;
		end loop;
		return Result;
	end Integer_Modulus_Matrix_Scalar;

	function Integer_Modulus_Scalar_Matrix(Left : Integer_Type; Right : Integer_Matrix_Type) return Integer_Matrix_Type is
		Result : Integer_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left mod R;
		end loop;
		return Result;
	end Integer_Modulus_Scalar_Matrix;

	function Integer_Remainder_Matrix_Matrix(Left : Integer_Matrix_Type; Right : Integer_Matrix_Type) return Integer_Matrix_Type is
		Result : Integer_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) rem Right(I,J);
			end loop;
		end loop;
		return Result;
	end Integer_Remainder_Matrix_Matrix;

	function Integer_Remainder_Matrix_Scalar(Left : Integer_Matrix_Type; Right : Integer_Type) return Integer_Matrix_Type is
		Result : Integer_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R rem Right;
		end loop;
		return Result;
	end Integer_Remainder_Matrix_Scalar;

	function Integer_Remainder_Scalar_Matrix(Left : Integer_Type; Right : Integer_Matrix_Type) return Integer_Matrix_Type is
		Result : Integer_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left rem R;
		end loop;
		return Result;
	end Integer_Remainder_Scalar_Matrix;

	function Integer_Equal_Matrix_Matrix(Left : Integer_Matrix_Type; Right : Integer_Matrix_Type) return Boolean is
	begin
		for I in 1..Left'Length(1) loop
			for J in 1..Left'Length(2) loop
				if Left(I,J) /= Right(I,J) then
					return False;
				end if;
			end loop;
		end loop;
		return True;
	end Integer_Equal_Matrix_Matrix;

	function Integer_Equal_Matrix_Scalar(Left : Integer_Matrix_Type; Right : Integer_Type) return Boolean is
	begin
		for L of Left loop
			if L /= Right then
				return False;
			end if;
		end loop;
		return True;
	end Integer_Equal_Matrix_Scalar;

	function Integer_Equal_Scalar_Matrix(Left : Integer_Type; Right : Integer_Matrix_Type) return Boolean is
	begin
		for R of Right loop
			if Left /= R then
				return False;
			end if;
		end loop;
		return True;
	end Integer_Equal_Scalar_Matrix;

	function Integer_Lesser_Matrix_Matrix(Left : Integer_Matrix_Type; Right : Integer_Matrix_Type) return Boolean is
	begin
		for I in 1..Left'Length(1) loop
			for J in 1..Left'Length(2) loop
				if Left(I,J) >= Right(I,J) then
					return False;
				end if;
			end loop;
		end loop;
		return True;
	end Integer_Lesser_Matrix_Matrix;

	function Integer_Lesser_Matrix_Scalar(Left : Integer_Matrix_Type; Right : Integer_Type) return Boolean is
	begin
		for L of Left loop
			if L >= Right then
				return False;
			end if;
		end loop;
		return True;
	end Integer_Lesser_Matrix_Scalar;

	function Integer_Lesser_Scalar_Matrix(Left : Integer_Type; Right : Integer_Matrix_Type) return Boolean is
	begin
		for R of Right loop
			if Left >= R then
				return False;
			end if;
		end loop;
		return True;
	end Integer_Lesser_Scalar_Matrix;

	function Integer_Greater_Matrix_Matrix(Left : Integer_Matrix_Type; Right : Integer_Matrix_Type) return Boolean is
	begin
		for I in 1..Left'Length(1) loop
			for J in 1..Left'Length(2) loop
				if Left(I,J) <= Right(I,J) then
					return False;
				end if;
			end loop;
		end loop;
		return True;
	end Integer_Greater_Matrix_Matrix;

	function Integer_Greater_Matrix_Scalar(Left : Integer_Matrix_Type; Right : Integer_Type) return Boolean is
	begin
		for L of Left loop
			if L <= Right then
				return False;
			end if;
		end loop;
		return True;
	end Integer_Greater_Matrix_Scalar;

	function Integer_Greater_Scalar_Matrix(Left : Integer_Type; Right : Integer_Matrix_Type) return Boolean is
	begin
		for R of Right loop
			if Left <= R then
				return False;
			end if;
		end loop;
		return True;
	end Integer_Greater_Scalar_Matrix;

	function Integer_Lesser_Or_Equal_Matrix_Matrix(Left : Integer_Matrix_Type; Right : Integer_Matrix_Type) return Boolean is
	begin
		for I in 1..Left'Length(1) loop
			for J in 1..Left'Length(2) loop
				if Left(I,J) > Right(I,J) then
					return False;
				end if;
			end loop;
		end loop;
		return True;
	end Integer_Lesser_Or_Equal_Matrix_Matrix;

	function Integer_Lesser_Or_Equal_Matrix_Scalar(Left : Integer_Matrix_Type; Right : Integer_Type) return Boolean is
	begin
		for L of Left loop
			if L > Right then
				return False;
			end if;
		end loop;
		return True;
	end Integer_Lesser_Or_Equal_Matrix_Scalar;

	function Integer_Lesser_Or_Equal_Scalar_Matrix(Left : Integer_Type; Right : Integer_Matrix_Type) return Boolean is
	begin
		for R of Right loop
			if Left > R then
				return False;
			end if;
		end loop;
		return True;
	end Integer_Lesser_Or_Equal_Scalar_Matrix;

	function Integer_Greater_Or_Equal_Matrix_Matrix(Left : Integer_Matrix_Type; Right : Integer_Matrix_Type) return Boolean is
	begin
		for I in 1..Left'Length(1) loop
			for J in 1..Left'Length(2) loop
				if Left(I,J) < Right(I,J) then
					return False;
				end if;
			end loop;
		end loop;
		return True;
	end Integer_Greater_Or_Equal_Matrix_Matrix;

	function Integer_Greater_Or_Equal_Matrix_Scalar(Left : Integer_Matrix_Type; Right : Integer_Type) return Boolean is
	begin
		for L of Left loop
			if L < Right then
				return False;
			end if;
		end loop;
		return True;
	end Integer_Greater_Or_Equal_Matrix_Scalar;

	function Integer_Greater_Or_Equal_Scalar_Matrix(Left : Integer_Type; Right : Integer_Matrix_Type) return Boolean is
	begin
		for R of Right loop
			if Left < R then
				return False;
			end if;
		end loop;
		return True;
	end Integer_Greater_Or_Equal_Scalar_Matrix;

	-------------
	-- Modular --
	-------------

	function Modular_Assert_Matrix(Value : Modular_Matrix_Type) return Modular_Matrix_Type is
		Result : Modular_Matrix_Type := Value;
	begin
		for R of Result loop
			R := +R;
		end loop;
		return Result;
	end Modular_Assert_Matrix;

	function Modular_Negate_Matrix(Value : Modular_Matrix_Type) return Modular_Matrix_Type is
		Result : Modular_Matrix_Type := Value;
	begin
		for R of Result loop
			R := -R;
		end loop;
		return Result;
	end Modular_Negate_Matrix;

	function Modular_Absolute_Value_Matrix(Value : Modular_Matrix_Type) return Modular_Matrix_Type is
		Result : Modular_Matrix_Type := Value;
	begin
		for R of Result loop
			R := abs R;
		end loop;
		return Result;
	end Modular_Absolute_Value_Matrix;

	function Modular_Add_Matrix_Matrix(Left : Modular_Matrix_Type; Right : Modular_Matrix_Type) return Modular_Matrix_Type is
		Result : Modular_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) + Right(I,J);
			end loop;
		end loop;
		return Result;
	end Modular_Add_Matrix_Matrix;

	function Modular_Add_Matrix_Scalar(Left : Modular_Matrix_Type; Right : Modular_Type) return Modular_Matrix_Type is
		Result : Modular_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R + Right;
		end loop;
		return Result;
	end Modular_Add_Matrix_Scalar;

	function Modular_Add_Scalar_Matrix(Left : Modular_Type; Right : Modular_Matrix_Type) return Modular_Matrix_Type is
		Result : Modular_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left + R;
		end loop;
		return Result;
	end Modular_Add_Scalar_Matrix;

	function Modular_Subtract_Matrix_Matrix(Left : Modular_Matrix_Type; Right : Modular_Matrix_Type) return Modular_Matrix_Type is
		Result : Modular_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) - Right(I,J);
			end loop;
		end loop;
		return Result;
	end Modular_Subtract_Matrix_Matrix;

	function Modular_Subtract_Matrix_Scalar(Left : Modular_Matrix_Type; Right : Modular_Type) return Modular_Matrix_Type is
		Result : Modular_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R - Right;
		end loop;
		return Result;
	end Modular_Subtract_Matrix_Scalar;

	function Modular_Subtract_Scalar_Matrix(Left : Modular_Type; Right : Modular_Matrix_Type) return Modular_Matrix_Type is
		Result : Modular_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left - R;
		end loop;
		return Result;
	end Modular_Subtract_Scalar_Matrix;

	function Modular_Multiply_Matrix_Matrix(Left : Modular_Matrix_Type; Right : Modular_Matrix_Type) return Modular_Matrix_Type is
		Result : Modular_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) * Right(I,J);
			end loop;
		end loop;
		return Result;
	end Modular_Multiply_Matrix_Matrix;

	function Modular_Multiply_Matrix_Scalar(Left : Modular_Matrix_Type; Right : Modular_Type) return Modular_Matrix_Type is
		Result : Modular_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R * Right;
		end loop;
		return Result;
	end Modular_Multiply_Matrix_Scalar;

	function Modular_Multiply_Scalar_Matrix(Left : Modular_Type; Right : Modular_Matrix_Type) return Modular_Matrix_Type is
		Result : Modular_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left * R;
		end loop;
		return Result;
	end Modular_Multiply_Scalar_Matrix;

	function Modular_Divide_Matrix_Matrix(Left : Modular_Matrix_Type; Right : Modular_Matrix_Type) return Modular_Matrix_Type is
		Result : Modular_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) / Right(I,J);
			end loop;
		end loop;
		return Result;
	end Modular_Divide_Matrix_Matrix;

	function Modular_Divide_Matrix_Scalar(Left : Modular_Matrix_Type; Right : Modular_Type) return Modular_Matrix_Type is
		Result : Modular_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R / Right;
		end loop;
		return Result;
	end Modular_Divide_Matrix_Scalar;

	function Modular_Divide_Scalar_Matrix(Left : Modular_Type; Right : Modular_Matrix_Type) return Modular_Matrix_Type is
		Result : Modular_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left / R;
		end loop;
		return Result;
	end Modular_Divide_Scalar_Matrix;

	function Modular_Modulus_Matrix_Matrix(Left : Modular_Matrix_Type; Right : Modular_Matrix_Type) return Modular_Matrix_Type is
		Result : Modular_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) mod Right(I,J);
			end loop;
		end loop;
		return Result;
	end Modular_Modulus_Matrix_Matrix;

	function Modular_Modulus_Matrix_Scalar(Left : Modular_Matrix_Type; Right : Modular_Type) return Modular_Matrix_Type is
		Result : Modular_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R mod Right;
		end loop;
		return Result;
	end Modular_Modulus_Matrix_Scalar;

	function Modular_Modulus_Scalar_Matrix(Left : Modular_Type; Right : Modular_Matrix_Type) return Modular_Matrix_Type is
		Result : Modular_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left mod R;
		end loop;
		return Result;
	end Modular_Modulus_Scalar_Matrix;

	function Modular_Remainder_Matrix_Matrix(Left : Modular_Matrix_Type; Right : Modular_Matrix_Type) return Modular_Matrix_Type is
		Result : Modular_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) rem Right(I,J);
			end loop;
		end loop;
		return Result;
	end Modular_Remainder_Matrix_Matrix;

	function Modular_Remainder_Matrix_Scalar(Left : Modular_Matrix_Type; Right : Modular_Type) return Modular_Matrix_Type is
		Result : Modular_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R rem Right;
		end loop;
		return Result;
	end Modular_Remainder_Matrix_Scalar;

	function Modular_Remainder_Scalar_Matrix(Left : Modular_Type; Right : Modular_Matrix_Type) return Modular_Matrix_Type is
		Result : Modular_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left rem R;
		end loop;
		return Result;
	end Modular_Remainder_Scalar_Matrix;

	function Modular_Equal_Matrix_Matrix(Left : Modular_Matrix_Type; Right : Modular_Matrix_Type) return Boolean is
	begin
		for I in 1..Left'Length(1) loop
			for J in 1..Left'Length(2) loop
				if Left(I,J) /= Right(I,J) then
					return False;
				end if;
			end loop;
		end loop;
		return True;
	end Modular_Equal_Matrix_Matrix;

	function Modular_Equal_Matrix_Scalar(Left : Modular_Matrix_Type; Right : Modular_Type) return Boolean is
	begin
		for L of Left loop
			if L /= Right then
				return False;
			end if;
		end loop;
		return True;
	end Modular_Equal_Matrix_Scalar;

	function Modular_Equal_Scalar_Matrix(Left : Modular_Type; Right : Modular_Matrix_Type) return Boolean is
	begin
		for R of Right loop
			if Left /= R then
				return False;
			end if;
		end loop;
		return True;
	end Modular_Equal_Scalar_Matrix;

	function Modular_Lesser_Matrix_Matrix(Left : Modular_Matrix_Type; Right : Modular_Matrix_Type) return Boolean is
	begin
		for I in 1..Left'Length(1) loop
			for J in 1..Left'Length(2) loop
				if Left(I,J) >= Right(I,J) then
					return False;
				end if;
			end loop;
		end loop;
		return True;
	end Modular_Lesser_Matrix_Matrix;

	function Modular_Lesser_Matrix_Scalar(Left : Modular_Matrix_Type; Right : Modular_Type) return Boolean is
	begin
		for L of Left loop
			if L >= Right then
				return False;
			end if;
		end loop;
		return True;
	end Modular_Lesser_Matrix_Scalar;

	function Modular_Lesser_Scalar_Matrix(Left : Modular_Type; Right : Modular_Matrix_Type) return Boolean is
	begin
		for R of Right loop
			if Left >= R then
				return False;
			end if;
		end loop;
		return True;
	end Modular_Lesser_Scalar_Matrix;

	function Modular_Greater_Matrix_Matrix(Left : Modular_Matrix_Type; Right : Modular_Matrix_Type) return Boolean is
	begin
		for I in 1..Left'Length(1) loop
			for J in 1..Left'Length(2) loop
				if Left(I,J) <= Right(I,J) then
					return False;
				end if;
			end loop;
		end loop;
		return True;
	end Modular_Greater_Matrix_Matrix;

	function Modular_Greater_Matrix_Scalar(Left : Modular_Matrix_Type; Right : Modular_Type) return Boolean is
	begin
		for L of Left loop
			if L <= Right then
				return False;
			end if;
		end loop;
		return True;
	end Modular_Greater_Matrix_Scalar;

	function Modular_Greater_Scalar_Matrix(Left : Modular_Type; Right : Modular_Matrix_Type) return Boolean is
	begin
		for R of Right loop
			if Left <= R then
				return False;
			end if;
		end loop;
		return True;
	end Modular_Greater_Scalar_Matrix;

	function Modular_Lesser_Or_Equal_Matrix_Matrix(Left : Modular_Matrix_Type; Right : Modular_Matrix_Type) return Boolean is
	begin
		for I in 1..Left'Length(1) loop
			for J in 1..Left'Length(2) loop
				if Left(I,J) > Right(I,J) then
					return False;
				end if;
			end loop;
		end loop;
		return True;
	end Modular_Lesser_Or_Equal_Matrix_Matrix;

	function Modular_Lesser_Or_Equal_Matrix_Scalar(Left : Modular_Matrix_Type; Right : Modular_Type) return Boolean is
	begin
		for L of Left loop
			if L > Right then
				return False;
			end if;
		end loop;
		return True;
	end Modular_Lesser_Or_Equal_Matrix_Scalar;

	function Modular_Lesser_Or_Equal_Scalar_Matrix(Left : Modular_Type; Right : Modular_Matrix_Type) return Boolean is
	begin
		for R of Right loop
			if Left > R then
				return False;
			end if;
		end loop;
		return True;
	end Modular_Lesser_Or_Equal_Scalar_Matrix;

	function Modular_Greater_Or_Equal_Matrix_Matrix(Left : Modular_Matrix_Type; Right : Modular_Matrix_Type) return Boolean is
	begin
		for I in 1..Left'Length(1) loop
			for J in 1..Left'Length(2) loop
				if Left(I,J) < Right(I,J) then
					return False;
				end if;
			end loop;
		end loop;
		return True;
	end Modular_Greater_Or_Equal_Matrix_Matrix;

	function Modular_Greater_Or_Equal_Matrix_Scalar(Left : Modular_Matrix_Type; Right : Modular_Type) return Boolean is
	begin
		for L of Left loop
			if L < Right then
				return False;
			end if;
		end loop;
		return True;
	end Modular_Greater_Or_Equal_Matrix_Scalar;

	function Modular_Greater_Or_Equal_Scalar_Matrix(Left : Modular_Type; Right : Modular_Matrix_Type) return Boolean is
	begin
		for R of Right loop
			if Left < R then
				return False;
			end if;
		end loop;
		return True;
	end Modular_Greater_Or_Equal_Scalar_Matrix;

	-----------
	-- Fixed --
	-----------

	function Fixed_Assert_Matrix(Value : Fixed_Matrix_Type) return Fixed_Matrix_Type is
		Result : Fixed_Matrix_Type := Value;
	begin
		for R of Result loop
			R := +R;
		end loop;
		return Result;
	end Fixed_Assert_Matrix;

	function Fixed_Negate_Matrix(Value : Fixed_Matrix_Type) return Fixed_Matrix_Type is
		Result : Fixed_Matrix_Type := Value;
	begin
		for R of Result loop
			R := -R;
		end loop;
		return Result;
	end Fixed_Negate_Matrix;

	function Fixed_Absolute_Value_Matrix(Value : Fixed_Matrix_Type) return Fixed_Matrix_Type is
		Result : Fixed_Matrix_Type := Value;
	begin
		for R of Result loop
			R := abs R;
		end loop;
		return Result;
	end Fixed_Absolute_Value_Matrix;

	function Fixed_Add_Matrix_Matrix(Left : Fixed_Matrix_Type; Right : Fixed_Matrix_Type) return Fixed_Matrix_Type is
		Result : Fixed_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) + Right(I,J);
			end loop;
		end loop;
		return Result;
	end Fixed_Add_Matrix_Matrix;

	function Fixed_Add_Matrix_Scalar(Left : Fixed_Matrix_Type; Right : Fixed_Type) return Fixed_Matrix_Type is
		Result : Fixed_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R + Right;
		end loop;
		return Result;
	end Fixed_Add_Matrix_Scalar;

	function Fixed_Add_Scalar_Matrix(Left : Fixed_Type; Right : Fixed_Matrix_Type) return Fixed_Matrix_Type is
		Result : Fixed_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left + R;
		end loop;
		return Result;
	end Fixed_Add_Scalar_Matrix;

	function Fixed_Subtract_Matrix_Matrix(Left : Fixed_Matrix_Type; Right : Fixed_Matrix_Type) return Fixed_Matrix_Type is
		Result : Fixed_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) - Right(I,J);
			end loop;
		end loop;
		return Result;
	end Fixed_Subtract_Matrix_Matrix;

	function Fixed_Subtract_Matrix_Scalar(Left : Fixed_Matrix_Type; Right : Fixed_Type) return Fixed_Matrix_Type is
		Result : Fixed_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R - Right;
		end loop;
		return Result;
	end Fixed_Subtract_Matrix_Scalar;

	function Fixed_Subtract_Scalar_Matrix(Left : Fixed_Type; Right : Fixed_Matrix_Type) return Fixed_Matrix_Type is
		Result : Fixed_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left - R;
		end loop;
		return Result;
	end Fixed_Subtract_Scalar_Matrix;

	function Fixed_Multiply_Matrix_Matrix(Left : Fixed_Matrix_Type; Right : Fixed_Matrix_Type) return Fixed_Matrix_Type is
		Result : Fixed_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) * Right(I,J);
			end loop;
		end loop;
		return Result;
	end Fixed_Multiply_Matrix_Matrix;

	function Fixed_Multiply_Matrix_Scalar(Left : Fixed_Matrix_Type; Right : Fixed_Type) return Fixed_Matrix_Type is
		Result : Fixed_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R * Right;
		end loop;
		return Result;
	end Fixed_Multiply_Matrix_Scalar;

	function Fixed_Multiply_Scalar_Matrix(Left : Fixed_Type; Right : Fixed_Matrix_Type) return Fixed_Matrix_Type is
		Result : Fixed_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left * R;
		end loop;
		return Result;
	end Fixed_Multiply_Scalar_Matrix;

	function Fixed_Divide_Matrix_Matrix(Left : Fixed_Matrix_Type; Right : Fixed_Matrix_Type) return Fixed_Matrix_Type is
		Result : Fixed_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) / Right(I,J);
			end loop;
		end loop;
		return Result;
	end Fixed_Divide_Matrix_Matrix;

	function Fixed_Divide_Matrix_Scalar(Left : Fixed_Matrix_Type; Right : Fixed_Type) return Fixed_Matrix_Type is
		Result : Fixed_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R / Right;
		end loop;
		return Result;
	end Fixed_Divide_Matrix_Scalar;

	function Fixed_Divide_Scalar_Matrix(Left : Fixed_Type; Right : Fixed_Matrix_Type) return Fixed_Matrix_Type is
		Result : Fixed_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left / R;
		end loop;
		return Result;
	end Fixed_Divide_Scalar_Matrix;

	function Fixed_Modulus_Matrix_Matrix(Left : Fixed_Matrix_Type; Right : Fixed_Matrix_Type) return Fixed_Matrix_Type is
		Result : Fixed_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) mod Right(I,J);
			end loop;
		end loop;
		return Result;
	end Fixed_Modulus_Matrix_Matrix;

	function Fixed_Modulus_Matrix_Scalar(Left : Fixed_Matrix_Type; Right : Fixed_Type) return Fixed_Matrix_Type is
		Result : Fixed_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R mod Right;
		end loop;
		return Result;
	end Fixed_Modulus_Matrix_Scalar;

	function Fixed_Modulus_Scalar_Matrix(Left : Fixed_Type; Right : Fixed_Matrix_Type) return Fixed_Matrix_Type is
		Result : Fixed_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left mod R;
		end loop;
		return Result;
	end Fixed_Modulus_Scalar_Matrix;

	function Fixed_Remainder_Matrix_Matrix(Left : Fixed_Matrix_Type; Right : Fixed_Matrix_Type) return Fixed_Matrix_Type is
		Result : Fixed_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) rem Right(I,J);
			end loop;
		end loop;
		return Result;
	end Fixed_Remainder_Matrix_Matrix;

	function Fixed_Remainder_Matrix_Scalar(Left : Fixed_Matrix_Type; Right : Fixed_Type) return Fixed_Matrix_Type is
		Result : Fixed_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R rem Right;
		end loop;
		return Result;
	end Fixed_Remainder_Matrix_Scalar;

	function Fixed_Remainder_Scalar_Matrix(Left : Fixed_Type; Right : Fixed_Matrix_Type) return Fixed_Matrix_Type is
		Result : Fixed_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left rem R;
		end loop;
		return Result;
	end Fixed_Remainder_Scalar_Matrix;

	function Fixed_Equal_Matrix_Matrix(Left : Fixed_Matrix_Type; Right : Fixed_Matrix_Type) return Boolean is
	begin
		for I in 1..Left'Length(1) loop
			for J in 1..Left'Length(2) loop
				if Left(I,J) /= Right(I,J) then
					return False;
				end if;
			end loop;
		end loop;
		return True;
	end Fixed_Equal_Matrix_Matrix;

	function Fixed_Equal_Matrix_Scalar(Left : Fixed_Matrix_Type; Right : Fixed_Type) return Boolean is
	begin
		for L of Left loop
			if L /= Right then
				return False;
			end if;
		end loop;
		return True;
	end Fixed_Equal_Matrix_Scalar;

	function Fixed_Equal_Scalar_Matrix(Left : Fixed_Type; Right : Fixed_Matrix_Type) return Boolean is
	begin
		for R of Right loop
			if Left /= R then
				return False;
			end if;
		end loop;
		return True;
	end Fixed_Equal_Scalar_Matrix;

	function Fixed_Lesser_Matrix_Matrix(Left : Fixed_Matrix_Type; Right : Fixed_Matrix_Type) return Boolean is
	begin
		for I in 1..Left'Length(1) loop
			for J in 1..Left'Length(2) loop
				if Left(I,J) >= Right(I,J) then
					return False;
				end if;
			end loop;
		end loop;
		return True;
	end Fixed_Lesser_Matrix_Matrix;

	function Fixed_Lesser_Matrix_Scalar(Left : Fixed_Matrix_Type; Right : Fixed_Type) return Boolean is
	begin
		for L of Left loop
			if L >= Right then
				return False;
			end if;
		end loop;
		return True;
	end Fixed_Lesser_Matrix_Scalar;

	function Fixed_Lesser_Scalar_Matrix(Left : Fixed_Type; Right : Fixed_Matrix_Type) return Boolean is
	begin
		for R of Right loop
			if Left >= R then
				return False;
			end if;
		end loop;
		return True;
	end Fixed_Lesser_Scalar_Matrix;

	function Fixed_Greater_Matrix_Matrix(Left : Fixed_Matrix_Type; Right : Fixed_Matrix_Type) return Boolean is
	begin
		for I in 1..Left'Length(1) loop
			for J in 1..Left'Length(2) loop
				if Left(I,J) <= Right(I,J) then
					return False;
				end if;
			end loop;
		end loop;
		return True;
	end Fixed_Greater_Matrix_Matrix;

	function Fixed_Greater_Matrix_Scalar(Left : Fixed_Matrix_Type; Right : Fixed_Type) return Boolean is
	begin
		for L of Left loop
			if L <= Right then
				return False;
			end if;
		end loop;
		return True;
	end Fixed_Greater_Matrix_Scalar;

	function Fixed_Greater_Scalar_Matrix(Left : Fixed_Type; Right : Fixed_Matrix_Type) return Boolean is
	begin
		for R of Right loop
			if Left <= R then
				return False;
			end if;
		end loop;
		return True;
	end Fixed_Greater_Scalar_Matrix;

	function Fixed_Lesser_Or_Equal_Matrix_Matrix(Left : Fixed_Matrix_Type; Right : Fixed_Matrix_Type) return Boolean is
	begin
		for I in 1..Left'Length(1) loop
			for J in 1..Left'Length(2) loop
				if Left(I,J) > Right(I,J) then
					return False;
				end if;
			end loop;
		end loop;
		return True;
	end Fixed_Lesser_Or_Equal_Matrix_Matrix;

	function Fixed_Lesser_Or_Equal_Matrix_Scalar(Left : Fixed_Matrix_Type; Right : Fixed_Type) return Boolean is
	begin
		for L of Left loop
			if L > Right then
				return False;
			end if;
		end loop;
		return True;
	end Fixed_Lesser_Or_Equal_Matrix_Scalar;

	function Fixed_Lesser_Or_Equal_Scalar_Matrix(Left : Fixed_Type; Right : Fixed_Matrix_Type) return Boolean is
	begin
		for R of Right loop
			if Left > R then
				return False;
			end if;
		end loop;
		return True;
	end Fixed_Lesser_Or_Equal_Scalar_Matrix;

	function Fixed_Greater_Or_Equal_Matrix_Matrix(Left : Fixed_Matrix_Type; Right : Fixed_Matrix_Type) return Boolean is
	begin
		for I in 1..Left'Length(1) loop
			for J in 1..Left'Length(2) loop
				if Left(I,J) < Right(I,J) then
					return False;
				end if;
			end loop;
		end loop;
		return True;
	end Fixed_Greater_Or_Equal_Matrix_Matrix;

	function Fixed_Greater_Or_Equal_Matrix_Scalar(Left : Fixed_Matrix_Type; Right : Fixed_Type) return Boolean is
	begin
		for L of Left loop
			if L < Right then
				return False;
			end if;
		end loop;
		return True;
	end Fixed_Greater_Or_Equal_Matrix_Scalar;

	function Fixed_Greater_Or_Equal_Scalar_Matrix(Left : Fixed_Type; Right : Fixed_Matrix_Type) return Boolean is
	begin
		for R of Right loop
			if Left < R then
				return False;
			end if;
		end loop;
		return True;
	end Fixed_Greater_Or_Equal_Scalar_Matrix;

	-------------
	-- Decimal --
	-------------

	function Decimal_Assert_Matrix(Value : Decimal_Matrix_Type) return Decimal_Matrix_Type is
		Result : Decimal_Matrix_Type := Value;
	begin
		for R of Result loop
			R := +R;
		end loop;
		return Result;
	end Decimal_Assert_Matrix;

	function Decimal_Negate_Matrix(Value : Decimal_Matrix_Type) return Decimal_Matrix_Type is
		Result : Decimal_Matrix_Type := Value;
	begin
		for R of Result loop
			R := -R;
		end loop;
		return Result;
	end Decimal_Negate_Matrix;

	function Decimal_Absolute_Value_Matrix(Value : Decimal_Matrix_Type) return Decimal_Matrix_Type is
		Result : Decimal_Matrix_Type := Value;
	begin
		for R of Result loop
			R := abs R;
		end loop;
		return Result;
	end Decimal_Absolute_Value_Matrix;

	function Decimal_Add_Matrix_Matrix(Left : Decimal_Matrix_Type; Right : Decimal_Matrix_Type) return Decimal_Matrix_Type is
		Result : Decimal_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) + Right(I,J);
			end loop;
		end loop;
		return Result;
	end Decimal_Add_Matrix_Matrix;

	function Decimal_Add_Matrix_Scalar(Left : Decimal_Matrix_Type; Right : Decimal_Type) return Decimal_Matrix_Type is
		Result : Decimal_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R + Right;
		end loop;
		return Result;
	end Decimal_Add_Matrix_Scalar;

	function Decimal_Add_Scalar_Matrix(Left : Decimal_Type; Right : Decimal_Matrix_Type) return Decimal_Matrix_Type is
		Result : Decimal_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left + R;
		end loop;
		return Result;
	end Decimal_Add_Scalar_Matrix;

	function Decimal_Subtract_Matrix_Matrix(Left : Decimal_Matrix_Type; Right : Decimal_Matrix_Type) return Decimal_Matrix_Type is
		Result : Decimal_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) - Right(I,J);
			end loop;
		end loop;
		return Result;
	end Decimal_Subtract_Matrix_Matrix;

	function Decimal_Subtract_Matrix_Scalar(Left : Decimal_Matrix_Type; Right : Decimal_Type) return Decimal_Matrix_Type is
		Result : Decimal_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R - Right;
		end loop;
		return Result;
	end Decimal_Subtract_Matrix_Scalar;

	function Decimal_Subtract_Scalar_Matrix(Left : Decimal_Type; Right : Decimal_Matrix_Type) return Decimal_Matrix_Type is
		Result : Decimal_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left - R;
		end loop;
		return Result;
	end Decimal_Subtract_Scalar_Matrix;

	function Decimal_Multiply_Matrix_Matrix(Left : Decimal_Matrix_Type; Right : Decimal_Matrix_Type) return Decimal_Matrix_Type is
		Result : Decimal_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) * Right(I,J);
			end loop;
		end loop;
		return Result;
	end Decimal_Multiply_Matrix_Matrix;

	function Decimal_Multiply_Matrix_Scalar(Left : Decimal_Matrix_Type; Right : Decimal_Type) return Decimal_Matrix_Type is
		Result : Decimal_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R * Right;
		end loop;
		return Result;
	end Decimal_Multiply_Matrix_Scalar;

	function Decimal_Multiply_Scalar_Matrix(Left : Decimal_Type; Right : Decimal_Matrix_Type) return Decimal_Matrix_Type is
		Result : Decimal_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left * R;
		end loop;
		return Result;
	end Decimal_Multiply_Scalar_Matrix;

	function Decimal_Divide_Matrix_Matrix(Left : Decimal_Matrix_Type; Right : Decimal_Matrix_Type) return Decimal_Matrix_Type is
		Result : Decimal_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) / Right(I,J);
			end loop;
		end loop;
		return Result;
	end Decimal_Divide_Matrix_Matrix;

	function Decimal_Divide_Matrix_Scalar(Left : Decimal_Matrix_Type; Right : Decimal_Type) return Decimal_Matrix_Type is
		Result : Decimal_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R / Right;
		end loop;
		return Result;
	end Decimal_Divide_Matrix_Scalar;

	function Decimal_Divide_Scalar_Matrix(Left : Decimal_Type; Right : Decimal_Matrix_Type) return Decimal_Matrix_Type is
		Result : Decimal_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left / R;
		end loop;
		return Result;
	end Decimal_Divide_Scalar_Matrix;

	function Decimal_Modulus_Matrix_Matrix(Left : Decimal_Matrix_Type; Right : Decimal_Matrix_Type) return Decimal_Matrix_Type is
		Result : Decimal_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) mod Right(I,J);
			end loop;
		end loop;
		return Result;
	end Decimal_Modulus_Matrix_Matrix;

	function Decimal_Modulus_Matrix_Scalar(Left : Decimal_Matrix_Type; Right : Decimal_Type) return Decimal_Matrix_Type is
		Result : Decimal_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R mod Right;
		end loop;
		return Result;
	end Decimal_Modulus_Matrix_Scalar;

	function Decimal_Modulus_Scalar_Matrix(Left : Decimal_Type; Right : Decimal_Matrix_Type) return Decimal_Matrix_Type is
		Result : Decimal_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left mod R;
		end loop;
		return Result;
	end Decimal_Modulus_Scalar_Matrix;

	function Decimal_Remainder_Matrix_Matrix(Left : Decimal_Matrix_Type; Right : Decimal_Matrix_Type) return Decimal_Matrix_Type is
		Result : Decimal_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) rem Right(I,J);
			end loop;
		end loop;
		return Result;
	end Decimal_Remainder_Matrix_Matrix;

	function Decimal_Remainder_Matrix_Scalar(Left : Decimal_Matrix_Type; Right : Decimal_Type) return Decimal_Matrix_Type is
		Result : Decimal_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R rem Right;
		end loop;
		return Result;
	end Decimal_Remainder_Matrix_Scalar;

	function Decimal_Remainder_Scalar_Matrix(Left : Decimal_Type; Right : Decimal_Matrix_Type) return Decimal_Matrix_Type is
		Result : Decimal_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left rem R;
		end loop;
		return Result;
	end Decimal_Remainder_Scalar_Matrix;

	function Decimal_Equal_Matrix_Matrix(Left : Decimal_Matrix_Type; Right : Decimal_Matrix_Type) return Boolean is
	begin
		for I in 1..Left'Length(1) loop
			for J in 1..Left'Length(2) loop
				if Left(I,J) /= Right(I,J) then
					return False;
				end if;
			end loop;
		end loop;
		return True;
	end Decimal_Equal_Matrix_Matrix;

	function Decimal_Equal_Matrix_Scalar(Left : Decimal_Matrix_Type; Right : Decimal_Type) return Boolean is
	begin
		for L of Left loop
			if L /= Right then
				return False;
			end if;
		end loop;
		return True;
	end Decimal_Equal_Matrix_Scalar;

	function Decimal_Equal_Scalar_Matrix(Left : Decimal_Type; Right : Decimal_Matrix_Type) return Boolean is
	begin
		for R of Right loop
			if Left /= R then
				return False;
			end if;
		end loop;
		return True;
	end Decimal_Equal_Scalar_Matrix;

	function Decimal_Lesser_Matrix_Matrix(Left : Decimal_Matrix_Type; Right : Decimal_Matrix_Type) return Boolean is
	begin
		for I in 1..Left'Length(1) loop
			for J in 1..Left'Length(2) loop
				if Left(I,J) >= Right(I,J) then
					return False;
				end if;
			end loop;
		end loop;
		return True;
	end Decimal_Lesser_Matrix_Matrix;

	function Decimal_Lesser_Matrix_Scalar(Left : Decimal_Matrix_Type; Right : Decimal_Type) return Boolean is
	begin
		for L of Left loop
			if L >= Right then
				return False;
			end if;
		end loop;
		return True;
	end Decimal_Lesser_Matrix_Scalar;

	function Decimal_Lesser_Scalar_Matrix(Left : Decimal_Type; Right : Decimal_Matrix_Type) return Boolean is
	begin
		for R of Right loop
			if Left >= R then
				return False;
			end if;
		end loop;
		return True;
	end Decimal_Lesser_Scalar_Matrix;

	function Decimal_Greater_Matrix_Matrix(Left : Decimal_Matrix_Type; Right : Decimal_Matrix_Type) return Boolean is
	begin
		for I in 1..Left'Length(1) loop
			for J in 1..Left'Length(2) loop
				if Left(I,J) <= Right(I,J) then
					return False;
				end if;
			end loop;
		end loop;
		return True;
	end Decimal_Greater_Matrix_Matrix;

	function Decimal_Greater_Matrix_Scalar(Left : Decimal_Matrix_Type; Right : Decimal_Type) return Boolean is
	begin
		for L of Left loop
			if L <= Right then
				return False;
			end if;
		end loop;
		return True;
	end Decimal_Greater_Matrix_Scalar;

	function Decimal_Greater_Scalar_Matrix(Left : Decimal_Type; Right : Decimal_Matrix_Type) return Boolean is
	begin
		for R of Right loop
			if Left <= R then
				return False;
			end if;
		end loop;
		return True;
	end Decimal_Greater_Scalar_Matrix;

	function Decimal_Lesser_Or_Equal_Matrix_Matrix(Left : Decimal_Matrix_Type; Right : Decimal_Matrix_Type) return Boolean is
	begin
		for I in 1..Left'Length(1) loop
			for J in 1..Left'Length(2) loop
				if Left(I,J) > Right(I,J) then
					return False;
				end if;
			end loop;
		end loop;
		return True;
	end Decimal_Lesser_Or_Equal_Matrix_Matrix;

	function Decimal_Lesser_Or_Equal_Matrix_Scalar(Left : Decimal_Matrix_Type; Right : Decimal_Type) return Boolean is
	begin
		for L of Left loop
			if L > Right then
				return False;
			end if;
		end loop;
		return True;
	end Decimal_Lesser_Or_Equal_Matrix_Scalar;

	function Decimal_Lesser_Or_Equal_Scalar_Matrix(Left : Decimal_Type; Right : Decimal_Matrix_Type) return Boolean is
	begin
		for R of Right loop
			if Left > R then
				return False;
			end if;
		end loop;
		return True;
	end Decimal_Lesser_Or_Equal_Scalar_Matrix;

	function Decimal_Greater_Or_Equal_Matrix_Matrix(Left : Decimal_Matrix_Type; Right : Decimal_Matrix_Type) return Boolean is
	begin
		for I in 1..Left'Length(1) loop
			for J in 1..Left'Length(2) loop
				if Left(I,J) < Right(I,J) then
					return False;
				end if;
			end loop;
		end loop;
		return True;
	end Decimal_Greater_Or_Equal_Matrix_Matrix;

	function Decimal_Greater_Or_Equal_Matrix_Scalar(Left : Decimal_Matrix_Type; Right : Decimal_Type) return Boolean is
	begin
		for L of Left loop
			if L < Right then
				return False;
			end if;
		end loop;
		return True;
	end Decimal_Greater_Or_Equal_Matrix_Scalar;

	function Decimal_Greater_Or_Equal_Scalar_Matrix(Left : Decimal_Type; Right : Decimal_Matrix_Type) return Boolean is
	begin
		for R of Right loop
			if Left < R then
				return False;
			end if;
		end loop;
		return True;
	end Decimal_Greater_Or_Equal_Scalar_Matrix;

	-----------
	-- Float --
	-----------

	function Float_Assert_Matrix(Value : Float_Matrix_Type) return Float_Matrix_Type is
		Result : Float_Matrix_Type := Value;
	begin
		for R of Result loop
			R := +R;
		end loop;
		return Result;
	end Float_Assert_Matrix;

	function Float_Negate_Matrix(Value : Float_Matrix_Type) return Float_Matrix_Type is
		Result : Float_Matrix_Type := Value;
	begin
		for R of Result loop
			R := -R;
		end loop;
		return Result;
	end Float_Negate_Matrix;

	function Float_Absolute_Value_Matrix(Value : Float_Matrix_Type) return Float_Matrix_Type is
		Result : Float_Matrix_Type := Value;
	begin
		for R of Result loop
			R := abs R;
		end loop;
		return Result;
	end Float_Absolute_Value_Matrix;

	function Float_Add_Matrix_Matrix(Left : Float_Matrix_Type; Right : Float_Matrix_Type) return Float_Matrix_Type is
		Result : Float_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) + Right(I,J);
			end loop;
		end loop;
		return Result;
	end Float_Add_Matrix_Matrix;

	function Float_Add_Matrix_Scalar(Left : Float_Matrix_Type; Right : Float_Type) return Float_Matrix_Type is
		Result : Float_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R + Right;
		end loop;
		return Result;
	end Float_Add_Matrix_Scalar;

	function Float_Add_Scalar_Matrix(Left : Float_Type; Right : Float_Matrix_Type) return Float_Matrix_Type is
		Result : Float_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left + R;
		end loop;
		return Result;
	end Float_Add_Scalar_Matrix;

	function Float_Subtract_Matrix_Matrix(Left : Float_Matrix_Type; Right : Float_Matrix_Type) return Float_Matrix_Type is
		Result : Float_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) - Right(I,J);
			end loop;
		end loop;
		return Result;
	end Float_Subtract_Matrix_Matrix;

	function Float_Subtract_Matrix_Scalar(Left : Float_Matrix_Type; Right : Float_Type) return Float_Matrix_Type is
		Result : Float_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R - Right;
		end loop;
		return Result;
	end Float_Subtract_Matrix_Scalar;

	function Float_Subtract_Scalar_Matrix(Left : Float_Type; Right : Float_Matrix_Type) return Float_Matrix_Type is
		Result : Float_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left - R;
		end loop;
		return Result;
	end Float_Subtract_Scalar_Matrix;

	function Float_Multiply_Matrix_Matrix(Left : Float_Matrix_Type; Right : Float_Matrix_Type) return Float_Matrix_Type is
		Result : Float_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) * Right(I,J);
			end loop;
		end loop;
		return Result;
	end Float_Multiply_Matrix_Matrix;

	function Float_Multiply_Matrix_Scalar(Left : Float_Matrix_Type; Right : Float_Type) return Float_Matrix_Type is
		Result : Float_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R * Right;
		end loop;
		return Result;
	end Float_Multiply_Matrix_Scalar;

	function Float_Multiply_Scalar_Matrix(Left : Float_Type; Right : Float_Matrix_Type) return Float_Matrix_Type is
		Result : Float_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left * R;
		end loop;
		return Result;
	end Float_Multiply_Scalar_Matrix;

	function Float_Divide_Matrix_Matrix(Left : Float_Matrix_Type; Right : Float_Matrix_Type) return Float_Matrix_Type is
		Result : Float_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) / Right(I,J);
			end loop;
		end loop;
		return Result;
	end Float_Divide_Matrix_Matrix;

	function Float_Divide_Matrix_Scalar(Left : Float_Matrix_Type; Right : Float_Type) return Float_Matrix_Type is
		Result : Float_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R / Right;
		end loop;
		return Result;
	end Float_Divide_Matrix_Scalar;

	function Float_Divide_Scalar_Matrix(Left : Float_Type; Right : Float_Matrix_Type) return Float_Matrix_Type is
		Result : Float_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left / R;
		end loop;
		return Result;
	end Float_Divide_Scalar_Matrix;

	function Float_Modulus_Matrix_Matrix(Left : Float_Matrix_Type; Right : Float_Matrix_Type) return Float_Matrix_Type is
		Result : Float_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) mod Right(I,J);
			end loop;
		end loop;
		return Result;
	end Float_Modulus_Matrix_Matrix;

	function Float_Modulus_Matrix_Scalar(Left : Float_Matrix_Type; Right : Float_Type) return Float_Matrix_Type is
		Result : Float_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R mod Right;
		end loop;
		return Result;
	end Float_Modulus_Matrix_Scalar;

	function Float_Modulus_Scalar_Matrix(Left : Float_Type; Right : Float_Matrix_Type) return Float_Matrix_Type is
		Result : Float_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left mod R;
		end loop;
		return Result;
	end Float_Modulus_Scalar_Matrix;

	function Float_Remainder_Matrix_Matrix(Left : Float_Matrix_Type; Right : Float_Matrix_Type) return Float_Matrix_Type is
		Result : Float_Matrix_Type := Left;
	begin
		for I in 1..Result'Length(1) loop
			for J in 1..Result'Length(2) loop
				Result(I,J) := Left(I,J) rem Right(I,J);
			end loop;
		end loop;
		return Result;
	end Float_Remainder_Matrix_Matrix;

	function Float_Remainder_Matrix_Scalar(Left : Float_Matrix_Type; Right : Float_Type) return Float_Matrix_Type is
		Result : Float_Matrix_Type := Left;
	begin
		for R of Result loop
			R := R rem Right;
		end loop;
		return Result;
	end Float_Remainder_Matrix_Scalar;

	function Float_Remainder_Scalar_Matrix(Left : Float_Type; Right : Float_Matrix_Type) return Float_Matrix_Type is
		Result : Float_Matrix_Type := Right;
	begin
		for R of Result loop
			R := Left rem R;
		end loop;
		return Result;
	end Float_Remainder_Scalar_Matrix;

	function Float_Equal_Matrix_Matrix(Left : Float_Matrix_Type; Right : Float_Matrix_Type) return Boolean is
	begin
		for I in 1..Left'Length(1) loop
			for J in 1..Left'Length(2) loop
				if Left(I,J) /= Right(I,J) then
					return False;
				end if;
			end loop;
		end loop;
		return True;
	end Float_Equal_Matrix_Matrix;

	function Float_Equal_Matrix_Scalar(Left : Float_Matrix_Type; Right : Float_Type) return Boolean is
	begin
		for L of Left loop
			if L /= Right then
				return False;
			end if;
		end loop;
		return True;
	end Float_Equal_Matrix_Scalar;

	function Float_Equal_Scalar_Matrix(Left : Float_Type; Right : Float_Matrix_Type) return Boolean is
	begin
		for R of Right loop
			if Left /= R then
				return False;
			end if;
		end loop;
		return True;
	end Float_Equal_Scalar_Matrix;

	function Float_Lesser_Matrix_Matrix(Left : Float_Matrix_Type; Right : Float_Matrix_Type) return Boolean is
	begin
		for I in 1..Left'Length(1) loop
			for J in 1..Left'Length(2) loop
				if Left(I,J) >= Right(I,J) then
					return False;
				end if;
			end loop;
		end loop;
		return True;
	end Float_Lesser_Matrix_Matrix;

	function Float_Lesser_Matrix_Scalar(Left : Float_Matrix_Type; Right : Float_Type) return Boolean is
	begin
		for L of Left loop
			if L >= Right then
				return False;
			end if;
		end loop;
		return True;
	end Float_Lesser_Matrix_Scalar;

	function Float_Lesser_Scalar_Matrix(Left : Float_Type; Right : Float_Matrix_Type) return Boolean is
	begin
		for R of Right loop
			if Left >= R then
				return False;
			end if;
		end loop;
		return True;
	end Float_Lesser_Scalar_Matrix;

	function Float_Greater_Matrix_Matrix(Left : Float_Matrix_Type; Right : Float_Matrix_Type) return Boolean is
	begin
		for I in 1..Left'Length(1) loop
			for J in 1..Left'Length(2) loop
				if Left(I,J) <= Right(I,J) then
					return False;
				end if;
			end loop;
		end loop;
		return True;
	end Float_Greater_Matrix_Matrix;

	function Float_Greater_Matrix_Scalar(Left : Float_Matrix_Type; Right : Float_Type) return Boolean is
	begin
		for L of Left loop
			if L <= Right then
				return False;
			end if;
		end loop;
		return True;
	end Float_Greater_Matrix_Scalar;

	function Float_Greater_Scalar_Matrix(Left : Float_Type; Right : Float_Matrix_Type) return Boolean is
	begin
		for R of Right loop
			if Left <= R then
				return False;
			end if;
		end loop;
		return True;
	end Float_Greater_Scalar_Matrix;

	function Float_Lesser_Or_Equal_Matrix_Matrix(Left : Float_Matrix_Type; Right : Float_Matrix_Type) return Boolean is
	begin
		for I in 1..Left'Length(1) loop
			for J in 1..Left'Length(2) loop
				if Left(I,J) > Right(I,J) then
					return False;
				end if;
			end loop;
		end loop;
		return True;
	end Float_Lesser_Or_Equal_Matrix_Matrix;

	function Float_Lesser_Or_Equal_Matrix_Scalar(Left : Float_Matrix_Type; Right : Float_Type) return Boolean is
	begin
		for L of Left loop
			if L > Right then
				return False;
			end if;
		end loop;
		return True;
	end Float_Lesser_Or_Equal_Matrix_Scalar;

	function Float_Lesser_Or_Equal_Scalar_Matrix(Left : Float_Type; Right : Float_Matrix_Type) return Boolean is
	begin
		for R of Right loop
			if Left > R then
				return False;
			end if;
		end loop;
		return True;
	end Float_Lesser_Or_Equal_Scalar_Matrix;

	function Float_Greater_Or_Equal_Matrix_Matrix(Left : Float_Matrix_Type; Right : Float_Matrix_Type) return Boolean is
	begin
		for I in 1..Left'Length(1) loop
			for J in 1..Left'Length(2) loop
				if Left(I,J) < Right(I,J) then
					return False;
				end if;
			end loop;
		end loop;
		return True;
	end Float_Greater_Or_Equal_Matrix_Matrix;

	function Float_Greater_Or_Equal_Matrix_Scalar(Left : Float_Matrix_Type; Right : Float_Type) return Boolean is
	begin
		for L of Left loop
			if L < Right then
				return False;
			end if;
		end loop;
		return True;
	end Float_Greater_Or_Equal_Matrix_Scalar;

	function Float_Greater_Or_Equal_Scalar_Matrix(Left : Float_Type; Right : Float_Matrix_Type) return Boolean is
	begin
		for R of Right loop
			if Left < R then
				return False;
			end if;
		end loop;
		return True;
	end Float_Greater_Or_Equal_Scalar_Matrix;

end Generics.Mathematics.Matrices;
