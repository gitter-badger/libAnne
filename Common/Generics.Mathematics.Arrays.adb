package body Generics.Mathematics.Arrays is

	-------------
	-- Integer --
	-------------

	function Integer_Fill_Comprehension(Lower_Bound, Upper_Bound : Integer_Type) return Integer_Array_Type is
		Result : Integer_Array_Type(1 .. Integer(Upper_Bound - Lower_Bound) + 1);
		I : Positive := 1;
	begin
		for R in Lower_Bound .. Upper_Bound loop
			Result(I) := R;
			I := I + 1;
		end loop;
		return Result;
	end Integer_Fill_Comprehension;
	
	function Integer_Step_Comprehension(Lower_Bound, Upper_Bound, Step : Integer_Type) return Integer_Array_Type is
		Length : Positive := Integer(Ceiling(Float(Upper_Bound - Lower_Bound + 1) / Float(Step)));
		Result : Integer_Array_Type(1 .. Length);
		I : Integer_Type := Lower_Bound;
	begin
		for R of Result loop
			R := I;
			I := I + Step;
		end loop;
		return Result;
	end Integer_Step_Comprehension;

	function Integer_Assert_Array(Value : Integer_Array_Type) return Integer_Array_Type is
		Result : Integer_Array_Type := Value;
	begin
		for R of Result loop
			R := +R;
		end loop;
		return Result;
	end Integer_Assert_Array;

	function Integer_Negate_Array(Value : Integer_Array_Type) return Integer_Array_Type is
		Result : Integer_Array_Type := Value;
	begin
		for R of Result loop
			R := -R;
		end loop;
		return Result;
	end Integer_Negate_Array;

	function Integer_Absolute_Value_Array(Value : Integer_Array_Type) return Integer_Array_Type is
		Result : Integer_Array_Type := Value;
	begin
		for R of Result loop
			R := abs R;
		end loop;
		return Result;
	end Integer_Absolute_Value_Array;

	function Integer_Add_Array_Array(Left : Integer_Array_Type; Right : Integer_Array_Type) return Integer_Array_Type is
		Result : Integer_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) + Right(I);
		end loop;
		return Result;
	end Integer_Add_Array_Array;

	function Integer_Add_Array_Scalar(Left : Integer_Array_Type; Right : Integer_Type) return Integer_Array_Type is
		Result : Integer_Array_Type := Left;
	begin
		for R of Result loop
			R := R + Right;
		end loop;
		return Result;
	end Integer_Add_Array_Scalar;

	function Integer_Add_Scalar_Array(Left : Integer_Type; Right : Integer_Array_Type) return Integer_Array_Type is
		Result : Integer_Array_Type := Right;
	begin
		for R of Result loop
			R := Left + R;
		end loop;
		return Result;
	end Integer_Add_Scalar_Array;

	function Integer_Subtract_Array_Array(Left : Integer_Array_Type; Right : Integer_Array_Type) return Integer_Array_Type is
		Result : Integer_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) - Right(I);
		end loop;
		return Result;
	end Integer_Subtract_Array_Array;

	function Integer_Subtract_Array_Scalar(Left : Integer_Array_Type; Right : Integer_Type) return Integer_Array_Type is
		Result : Integer_Array_Type := Left;
	begin
		for R of Result loop
			R := R - Right;
		end loop;
		return Result;
	end Integer_Subtract_Array_Scalar;

	function Integer_Subtract_Scalar_Array(Left : Integer_Type; Right : Integer_Array_Type) return Integer_Array_Type is
		Result : Integer_Array_Type := Right;
	begin
		for R of Result loop
			R := Left - R;
		end loop;
		return Result;
	end Integer_Subtract_Scalar_Array;

	function Integer_Multiply_Array_Array(Left : Integer_Array_Type; Right : Integer_Array_Type) return Integer_Array_Type is
		Result : Integer_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) * Right(I);
		end loop;
		return Result;
	end Integer_Multiply_Array_Array;

	function Integer_Multiply_Array_Scalar(Left : Integer_Array_Type; Right : Integer_Type) return Integer_Array_Type is
		Result : Integer_Array_Type := Left;
	begin
		for R of Result loop
			R := R * Right;
		end loop;
		return Result;
	end Integer_Multiply_Array_Scalar;

	function Integer_Multiply_Scalar_Array(Left : Integer_Type; Right : Integer_Array_Type) return Integer_Array_Type is
		Result : Integer_Array_Type := Right;
	begin
		for R of Result loop
			R := Left * R;
		end loop;
		return Result;
	end Integer_Multiply_Scalar_Array;

	function Integer_Scalar_Product(Left : Integer_Array_Type; Right : Integer_Array_Type) return Integer_Type is
		Result : Integer_Type := 0;
	begin
		for I in 1..Left'Length loop
			Result := Result + (Left(I) * Right(I));
		end loop;
		return Result;
	end Integer_Scalar_Product;

	function Integer_Divide_Array_Array(Left : Integer_Array_Type; Right : Integer_Array_Type) return Integer_Array_Type is
		Result : Integer_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) / Right(I);
		end loop;
		return Result;
	end Integer_Divide_Array_Array;

	function Integer_Divide_Array_Scalar(Left : Integer_Array_Type; Right : Integer_Type) return Integer_Array_Type is
		Result : Integer_Array_Type := Left;
	begin
		for R of Result loop
			R := R / Right;
		end loop;
		return Result;
	end Integer_Divide_Array_Scalar;

	function Integer_Divide_Scalar_Array(Left : Integer_Type; Right : Integer_Array_Type) return Integer_Array_Type is
		Result : Integer_Array_Type := Right;
	begin
		for R of Result loop
			R := Left / R;
		end loop;
		return Result;
	end Integer_Divide_Scalar_Array;

	function Integer_Remainder_Array_Array(Left : Integer_Array_Type; Right : Integer_Array_Type) return Integer_Array_Type is
		Result : Integer_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) rem Right(I);
		end loop;
		return Result;
	end Integer_Remainder_Array_Array;

	function Integer_Remainder_Array_Scalar(Left : Integer_Array_Type; Right : Integer_Type) return Integer_Array_Type is
		Result : Integer_Array_Type := Left;
	begin
		for R of Result loop
			R := R rem Right;
		end loop;
		return Result;
	end Integer_Remainder_Array_Scalar;

	function Integer_Remainder_Scalar_Array(Left : Integer_Type; Right : Integer_Array_Type) return Integer_Array_Type is
		Result : Integer_Array_Type := Right;
	begin
		for R of Result loop
			R := Left rem R;
		end loop;
		return Result;
	end Integer_Remainder_Scalar_Array;

	function Integer_Modulus_Array_Array(Left : Integer_Array_Type; Right : Integer_Array_Type) return Integer_Array_Type is
		Result : Integer_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) mod Right(I);
		end loop;
		return Result;
	end Integer_Modulus_Array_Array;

	function Integer_Modulus_Array_Scalar(Left : Integer_Array_Type; Right : Integer_Type) return Integer_Array_Type is
		Result : Integer_Array_Type := Left;
	begin
		for R of Result loop
			R := R mod Right;
		end loop;
		return Result;
	end Integer_Modulus_Array_Scalar;

	function Integer_Modulus_Scalar_Array(Left : Integer_Type; Right : Integer_Array_Type) return Integer_Array_Type is
		Result : Integer_Array_Type := Right;
	begin
		for R of Result loop
			R := Left mod R;
		end loop;
		return Result;
	end Integer_Modulus_Scalar_Array;

	function Integer_Equal_Array_Array(Left : Integer_Array_Type; Right : Integer_Array_Type) return Boolean is
	begin
		if Left'Length /= Right'Length then
			return False;
		end if;
		for I in 1..Left'Length loop
			if Left(I) /= Right(I) then
				return False;
			end if;
		end loop;
		return True;
	end Integer_Equal_Array_Array;

	function Integer_Equal_Array_Scalar(Left : Integer_Array_Type; Right : Integer_Type) return Boolean is
	begin
		for L of Left loop
			if L /= Right then
				return False;
			end if;
		end loop;
		return True;
	end Integer_Equal_Array_Scalar;

	function Integer_Equal_Scalar_Array(Left : Integer_Type; Right : Integer_Array_Type) return Boolean is
	begin
		for R of Right loop
			if Left /= R then
				return False;
			end if;
		end loop;
		return True;
	end Integer_Equal_Scalar_Array;

	function Integer_Lesser_Array_Array(Left : Integer_Array_Type; Right : Integer_Array_Type) return Boolean is
	begin
		if Left'Length /= Right'Length then
			return False;
		end if;
		for I in 1..Left'Length loop
			if Left(I) >= Right(I) then
				return False;
			end if;
		end loop;
		return False;
	end Integer_Lesser_Array_Array;

	function Integer_Lesser_Array_Scalar(Left : Integer_Array_Type; Right : Integer_Type) return Boolean is
	begin
		for L of Left loop
			if L >= Right then
				return False;
			end if;
		end loop;
		return False;
	end Integer_Lesser_Array_Scalar;

	function Integer_Lesser_Scalar_Array(Left : Integer_Type; Right : Integer_Array_Type) return Boolean is
	begin
		for R of Right loop
			if Left >= R then
				return False;
			end if;
		end loop;
		return False;
	end Integer_Lesser_Scalar_Array;

	function Integer_Greater_Array_Array(Left : Integer_Array_Type; Right : Integer_Array_Type) return Boolean is
	begin
		if Left'Length /= Right'Length then
			return False;
		end if;
		for I in 1..Left'Length loop
			if Left(I) <= Right(I) then
				return False;
			end if;
		end loop;
		return False;
	end Integer_Greater_Array_Array;

	function Integer_Greater_Array_Scalar(Left : Integer_Array_Type; Right : Integer_Type) return Boolean is
	begin
		for L of Left loop
			if L <= Right then
				return False;
			end if;
		end loop;
		return False;
	end Integer_Greater_Array_Scalar;

	function Integer_Greater_Scalar_Array(Left : Integer_Type; Right : Integer_Array_Type) return Boolean is
	begin
		for R of Right loop
			if Left <= R then
				return False;
			end if;
		end loop;
		return False;
	end Integer_Greater_Scalar_Array;

	function Integer_Lesser_Or_Equal_Array_Array(Left : Integer_Array_Type; Right : Integer_Array_Type) return Boolean is
	begin
		if Left'Length /= Right'Length then
			return False;
		end if;
		for I in 1..Left'Length loop
			if Left(I) > Right(I) then
				return False;
			end if;
		end loop;
		return False;
	end Integer_Lesser_Or_Equal_Array_Array;

	function Integer_Lesser_Or_Equal_Array_Scalar(Left : Integer_Array_Type; Right : Integer_Type) return Boolean is
	begin
		for L of Left loop
			if L > Right then
				return False;
			end if;
		end loop;
		return False;
	end Integer_Lesser_Or_Equal_Array_Scalar;

	function Integer_Lesser_Or_Equal_Scalar_Array(Left : Integer_Type; Right : Integer_Array_Type) return Boolean is
	begin
		for R of Right loop
			if Left > R then
				return False;
			end if;
		end loop;
		return False;
	end Integer_Lesser_Or_Equal_Scalar_Array;

	function Integer_Greater_Or_Equal_Array_Array(Left : Integer_Array_Type; Right : Integer_Array_Type) return Boolean is
	begin
		if Left'Length /= Right'Length then
			return False;
		end if;
		for I in 1..Left'Length loop
			if Left(I) < Right(I) then
				return False;
			end if;
		end loop;
		return False;
	end Integer_Greater_Or_Equal_Array_Array;

	function Integer_Greater_Or_Equal_Array_Scalar(Left : Integer_Array_Type; Right : Integer_Type) return Boolean is
	begin
		for L of Left loop
			if L < Right then
				return False;
			end if;
		end loop;
		return False;
	end Integer_Greater_Or_Equal_Array_Scalar;

	function Integer_Greater_Or_Equal_Scalar_Array(Left : Integer_Type; Right : Integer_Array_Type) return Boolean is
	begin
		for R of Right loop
			if Left < R then
				return False;
			end if;
		end loop;
		return False;
	end Integer_Greater_Or_Equal_Scalar_Array;

	function Integer_Max(Value : Integer_Array_Type) return Integer_Type is
		Max : Integer_Type := Value(1);
	begin
		for V of Value loop
			if V > Max then
				Max := V;
			end if;
		end loop;
		return Max;
	end Integer_Max;

	function Integer_Min(Value : Integer_Array_Type) return Integer_Type is
		Min : Integer_Type := Value(1);
	begin
		for V of Value loop
			if V < Min then
				Min := V;
			end if;
		end loop;
		return Min;
	end Integer_Min;

	function Integer_Apply_Procedure(Value : Integer_Array_Type; Call : access Procedure(Value : in out Integer_Type)) return Integer_Array_Type is
		Result : Integer_Array_Type := Value;
	begin
		for R of Result loop
			Call.all(R);
		end loop;
		return Result;
	end Integer_Apply_Procedure;

	function Integer_Apply_Function(Value : Integer_Array_Type; Call : access Function(Value : Integer_Type) return Integer_Type) return Integer_Array_Type is
		Result : Integer_Array_Type := Value;
	begin
		for R of Result loop
			R := Call.all(R);
		end loop;
		return Result;
	end Integer_Apply_Function;

	function Integer_Fold(Value : Integer_Array_Type; Call : access Function(A, B : Integer_Type) return Integer_Type) return Integer_Type is
		Result : Integer_Type;
	begin
		--In the rare event folding is attempted with only one element, return that element
		if Value'Length = 1 then
			return Value(1);
		end if;
		--We can't call on the first element alone, so we need to call it and the second element manually
		Result := Call(Value(1), Value(2));
		--Then loop through the remaining elements if any
		for V in 3 .. Value'Length loop
			Result := Call(Result, Value(V));
		end loop;
		return Result;
	end Integer_Fold;
		
	-------------
	-- Modular --
	-------------

	function Modular_Fill_Comprehension(Lower_Bound, Upper_Bound : Modular_Type) return Modular_Array_Type is
		Result : Modular_Array_Type(1 .. Integer(Upper_Bound - Lower_Bound) + 1);
		I : Positive := 1;
	begin
		for R in Lower_Bound .. Upper_Bound loop
			Result(I) := R;
			I := I + 1;
		end loop;
		return Result;
	end Modular_Fill_Comprehension;
	
	function Modular_Step_Comprehension(Lower_Bound, Upper_Bound, Step : Modular_Type) return Modular_Array_Type is
		Length : Positive := Integer(Ceiling(Float(Upper_Bound - Lower_Bound + 1) / Float(Step)));
		Result : Modular_Array_Type(1 .. Length);
		I : Modular_Type := Lower_Bound;
	begin
		for R of Result loop
			R := I;
			I := I + Step;
		end loop;
		return Result;
	end Modular_Step_Comprehension;

	function Modular_Assert_Array(Value : Modular_Array_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Value;
	begin
		for R of Result loop
			R := +R;
		end loop;
		return Result;
	end Modular_Assert_Array;

	function Modular_Negate_Array(Value : Modular_Array_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Value;
	begin
		for R of Result loop
			R := -R;
		end loop;
		return Result;
	end Modular_Negate_Array;

	function Modular_Absolute_Value_Array(Value : Modular_Array_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Value;
	begin
		for R of Result loop
			R := abs R;
		end loop;
		return Result;
	end Modular_Absolute_Value_Array;

	function Modular_Add_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) + Right(I);
		end loop;
		return Result;
	end Modular_Add_Array_Array;

	function Modular_Add_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Left;
	begin
		for R of Result loop
			R := R + Right;
		end loop;
		return Result;
	end Modular_Add_Array_Scalar;

	function Modular_Add_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Right;
	begin
		for R of Result loop
			R := Left + R;
		end loop;
		return Result;
	end Modular_Add_Scalar_Array;

	function Modular_Subtract_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) - Right(I);
		end loop;
		return Result;
	end Modular_Subtract_Array_Array;

	function Modular_Subtract_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Left;
	begin
		for R of Result loop
			R := R - Right;
		end loop;
		return Result;
	end Modular_Subtract_Array_Scalar;

	function Modular_Subtract_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Right;
	begin
		for R of Result loop
			R := Left - R;
		end loop;
		return Result;
	end Modular_Subtract_Scalar_Array;

	function Modular_Multiply_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) * Right(I);
		end loop;
		return Result;
	end Modular_Multiply_Array_Array;

	function Modular_Multiply_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Left;
	begin
		for R of Result loop
			R := R * Right;
		end loop;
		return Result;
	end Modular_Multiply_Array_Scalar;

	function Modular_Multiply_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Right;
	begin
		for R of Result loop
			R := Left * R;
		end loop;
		return Result;
	end Modular_Multiply_Scalar_Array;

	function Modular_Scalar_Product(Left : Modular_Array_Type; Right : Modular_Array_Type) return Modular_Type is
		Result : Modular_Type := 0;
	begin
		for I in Left'Range loop
			Result := Result + (Left(I) * Right(I));
		end loop;
		return Result;
	end Modular_Scalar_Product;

	function Modular_Divide_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) / Right(I);
		end loop;
		return Result;
	end Modular_Divide_Array_Array;

	function Modular_Divide_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Left;
	begin
		for R of Result loop
			R := R / Right;
		end loop;
		return Result;
	end Modular_Divide_Array_Scalar;

	function Modular_Divide_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Right;
	begin
		for R of Result loop
			R := Left / R;
		end loop;
		return Result;
	end Modular_Divide_Scalar_Array;

	function Modular_Remainder_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) rem Right(I);
		end loop;
		return Result;
	end Modular_Remainder_Array_Array;

	function Modular_Remainder_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Left;
	begin
		for R of Result loop
			R := R rem Right;
		end loop;
		return Result;
	end Modular_Remainder_Array_Scalar;

	function Modular_Remainder_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Right;
	begin
		for R of Result loop
			R := Left rem R;
		end loop;
		return Result;
	end Modular_Remainder_Scalar_Array;

	function Modular_Modulus_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) mod Right(I);
		end loop;
		return Result;
	end Modular_Modulus_Array_Array;

	function Modular_Modulus_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Left;
	begin
		for R of Result loop
			R := R mod Right;
		end loop;
		return Result;
	end Modular_Modulus_Array_Scalar;

	function Modular_Modulus_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Right;
	begin
		for R of Result loop
			R := Left mod R;
		end loop;
		return Result;
	end Modular_Modulus_Scalar_Array;

	function Modular_Not_Array(Value : Modular_Array_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Value;
	begin
		for R of Result loop
			R := not R;
		end loop;
		return Result;
	end Modular_Not_Array;

	function Modular_And_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) and Right(I);
		end loop;
		return Result;
	end Modular_And_Array_Array;

	function Modular_And_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Left;
	begin
		for R of Result loop
			R := R and Right;
		end loop;
		return Result;
	end Modular_And_Array_Scalar;

	function Modular_And_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Right;
	begin
		for R of Result loop
			R := Left and R;
		end loop;
		return Result;
	end Modular_And_Scalar_Array;

	function Modular_Or_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) or Right(I);
		end loop;
		return Result;
	end Modular_Or_Array_Array;

	function Modular_Or_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Left;
	begin
		for R of Result loop
			R := R or Right;
		end loop;
		return Result;
	end Modular_Or_Array_Scalar;

	function Modular_Or_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Right;
	begin
		for R of Result loop
			R := Left or R;
		end loop;
		return Result;
	end Modular_Or_Scalar_Array;

	function Modular_Xor_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) xor Right(I);
		end loop;
		return Result;
	end Modular_Xor_Array_Array;

	function Modular_Xor_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Left;
	begin
		for R of Result loop
			R := R xor Right;
		end loop;
		return Result;
	end Modular_Xor_Array_Scalar;

	function Modular_Xor_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Right;
	begin
		for R of Result loop
			R := Left xor R;
		end loop;
		return Result;
	end Modular_Xor_Scalar_Array;

	function Modular_Equal_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Boolean is
	begin
		for I in 1..Left'Length loop
			if Left(I) /= Right(I) then
				return False;
			end if;
		end loop;
		return True;
	end Modular_Equal_Array_Array;

	function Modular_Equal_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Boolean is
	begin
		for L of Left loop
			if L /= Right then
				return False;
			end if;
		end loop;
		return True;
	end Modular_Equal_Array_Scalar;

	function Modular_Equal_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Boolean is
	begin
		for R of Right loop
			if Left /= R then
				return False;
			end if;
		end loop;
		return True;
	end Modular_Equal_Scalar_Array;

	function Modular_Lesser_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Boolean is
	begin
		for I in 1..Left'Length loop
			if Left(I) >= Right(I) then
				return False;
			end if;
		end loop;
		return False;
	end Modular_Lesser_Array_Array;

	function Modular_Lesser_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Boolean is
	begin
		for L of Left loop
			if L >= Right then
				return False;
			end if;
		end loop;
		return False;
	end Modular_Lesser_Array_Scalar;

	function Modular_Lesser_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Boolean is
	begin
		for R of Right loop
			if Left >= R then
				return False;
			end if;
		end loop;
		return False;
	end Modular_Lesser_Scalar_Array;

	function Modular_Greater_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Boolean is
	begin
		for I in 1..Left'Length loop
			if Left(I) <= Right(I) then
				return False;
			end if;
		end loop;
		return False;
	end Modular_Greater_Array_Array;

	function Modular_Greater_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Boolean is
	begin
		for L of Left loop
			if L <= Right then
				return False;
			end if;
		end loop;
		return False;
	end Modular_Greater_Array_Scalar;

	function Modular_Greater_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Boolean is
	begin
		for R of Right loop
			if Left <= R then
				return False;
			end if;
		end loop;
		return False;
	end Modular_Greater_Scalar_Array;

	function Modular_Lesser_Or_Equal_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Boolean is
	begin
		for I in 1..Left'Length loop
			if Left(I) > Right(I) then
				return False;
			end if;
		end loop;
		return False;
	end Modular_Lesser_Or_Equal_Array_Array;

	function Modular_Lesser_Or_Equal_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Boolean is
	begin
		for L of Left loop
			if L > Right then
				return False;
			end if;
		end loop;
		return False;
	end Modular_Lesser_Or_Equal_Array_Scalar;

	function Modular_Lesser_Or_Equal_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Boolean is
	begin
		for R of Right loop
			if Left > R then
				return False;
			end if;
		end loop;
		return False;
	end Modular_Lesser_Or_Equal_Scalar_Array;

	function Modular_Greater_Or_Equal_Array_Array(Left : Modular_Array_Type; Right : Modular_Array_Type) return Boolean is
	begin
		for I in 1..Left'Length loop
			if Left(I) < Right(I) then
				return False;
			end if;
		end loop;
		return False;
	end Modular_Greater_Or_Equal_Array_Array;

	function Modular_Greater_Or_Equal_Array_Scalar(Left : Modular_Array_Type; Right : Modular_Type) return Boolean is
	begin
		for L of Left loop
			if L < Right then
				return False;
			end if;
		end loop;
		return False;
	end Modular_Greater_Or_Equal_Array_Scalar;

	function Modular_Greater_Or_Equal_Scalar_Array(Left : Modular_Type; Right : Modular_Array_Type) return Boolean is
	begin
		for R of Right loop
			if Left < R then
				return False;
			end if;
		end loop;
		return False;
	end Modular_Greater_Or_Equal_Scalar_Array;

	function Modular_Max(Value : Modular_Array_Type) return Modular_Type is
		Max : Modular_Type := Value(1);
	begin
		for V of Value loop
			if V > Max then
				Max := V;
			end if;
		end loop;
		return Max;
	end Modular_Max;

	function Modular_Min(Value : Modular_Array_Type) return Modular_Type is
		Min : Modular_Type := Value(1);
	begin
		for V of Value loop
			if V < Min then
				Min := V;
			end if;
		end loop;
		return Min;
	end Modular_Min;

	function Modular_Apply_Procedure(Value : Modular_Array_Type; Call : access Procedure(Value : in out Modular_Type)) return Modular_Array_Type is
		Result : Modular_Array_Type := Value;
	begin
		for R of Result loop
			Call.all(R);
		end loop;
		return Result;
	end Modular_Apply_Procedure;

	function Modular_Apply_Function(Value : Modular_Array_Type; Call : access Function(Value : Modular_Type) return Modular_Type) return Modular_Array_Type is
		Result : Modular_Array_Type := Value;
	begin
		for R of Result loop
			R := Call.all(R);
		end loop;
		return Result;
	end Modular_Apply_Function;
	
	function Modular_Fold(Value : Modular_Array_Type; Call : access Function(A, B : Modular_Type) return Modular_Type) return Modular_Type is
		Result : Modular_Type;
	begin
		--In the rare event folding is attempted with only one element, return that element
		if Value'Length = 1 then
			return Value(1);
		end if;
		--We can't call on the first element alone, so we need to call it and the second element manually
		Result := Call(Value(1), Value(2));
		--Then loop through the remaining elements if any
		for V in 3 .. Value'Length loop
			Result := Call(Result, Value(V));
		end loop;
		return Result;
	end Modular_Fold;
	
	-----------
	-- Fixed --
	-----------

	function Fixed_Step_Comprehension(Lower_Bound, Upper_Bound, Step : Fixed_Type) return Fixed_Array_Type is
		Length : Positive := Integer(Ceiling(Float(Upper_Bound - Lower_Bound + 1.0) / Float(Step)));
		Result : Fixed_Array_Type(1 .. Length);
		I : Fixed_Type := Lower_Bound;
	begin
		for R of Result loop
			R := I;
			I := I + Step;
		end loop;
		return Result;
	end Fixed_Step_Comprehension;

	function Fixed_Assert_Array(Value : Fixed_Array_Type) return Fixed_Array_Type is
		Result : Fixed_Array_Type := Value;
	begin
		for R of Result loop
			R := +R;
		end loop;
		return Result;
	end Fixed_Assert_Array;

	function Fixed_Negate_Array(Value : Fixed_Array_Type) return Fixed_Array_Type is
		Result : Fixed_Array_Type := Value;
	begin
		for R of Result loop
			R := -R;
		end loop;
		return Result;
	end Fixed_Negate_Array;

	function Fixed_Absolute_Value_Array(Value : Fixed_Array_Type) return Fixed_Array_Type is
		Result : Fixed_Array_Type := Value;
	begin
		for R of Result loop
			R := abs R;
		end loop;
		return Result;
	end Fixed_Absolute_Value_Array;

	function Fixed_Add_Array_Array(Left : Fixed_Array_Type; Right : Fixed_Array_Type) return Fixed_Array_Type is
		Result : Fixed_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) + Right(I);
		end loop;
		return Result;
	end Fixed_Add_Array_Array;

	function Fixed_Add_Array_Scalar(Left : Fixed_Array_Type; Right : Fixed_Type) return Fixed_Array_Type is
		Result : Fixed_Array_Type := Left;
	begin
		for R of Result loop
			R := R + Right;
		end loop;
		return Result;
	end Fixed_Add_Array_Scalar;

	function Fixed_Add_Scalar_Array(Left : Fixed_Type; Right : Fixed_Array_Type) return Fixed_Array_Type is
		Result : Fixed_Array_Type := Right;
	begin
		for R of Result loop
			R := Left + R;
		end loop;
		return Result;
	end Fixed_Add_Scalar_Array;

	function Fixed_Subtract_Array_Array(Left : Fixed_Array_Type; Right : Fixed_Array_Type) return Fixed_Array_Type is
		Result : Fixed_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) - Right(I);
		end loop;
		return Result;
	end Fixed_Subtract_Array_Array;

	function Fixed_Subtract_Array_Scalar(Left : Fixed_Array_Type; Right : Fixed_Type) return Fixed_Array_Type is
		Result : Fixed_Array_Type := Left;
	begin
		for R of Result loop
			R := R - Right;
		end loop;
		return Result;
	end Fixed_Subtract_Array_Scalar;

	function Fixed_Subtract_Scalar_Array(Left : Fixed_Type; Right : Fixed_Array_Type) return Fixed_Array_Type is
		Result : Fixed_Array_Type := Right;
	begin
		for R of Result loop
			R := Left - R;
		end loop;
		return Result;
	end Fixed_Subtract_Scalar_Array;

	function Fixed_Multiply_Array_Array(Left : Fixed_Array_Type; Right : Fixed_Array_Type) return Fixed_Array_Type is
		Result : Fixed_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) * Right(I);
		end loop;
		return Result;
	end Fixed_Multiply_Array_Array;

	function Fixed_Multiply_Array_Scalar(Left : Fixed_Array_Type; Right : Fixed_Type) return Fixed_Array_Type is
		Result : Fixed_Array_Type := Left;
	begin
		for R of Result loop
			R := R * Right;
		end loop;
		return Result;
	end Fixed_Multiply_Array_Scalar;

	function Fixed_Multiply_Scalar_Array(Left : Fixed_Type; Right : Fixed_Array_Type) return Fixed_Array_Type is
		Result : Fixed_Array_Type := Right;
	begin
		for R of Result loop
			R := Left * R;
		end loop;
		return Result;
	end Fixed_Multiply_Scalar_Array;

	function Fixed_Scalar_Product(Left : Fixed_Array_Type; Right : Fixed_Array_Type) return Fixed_Type is
		Result : Fixed_Type := 0.0;
	begin
		for I in Left'Range loop
			Result := Result + (Left(I) * Right(I));
		end loop;
		return Result;
	end Fixed_Scalar_Product;

	function Fixed_Divide_Array_Array(Left : Fixed_Array_Type; Right : Fixed_Array_Type) return Fixed_Array_Type is
		Result : Fixed_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) / Right(I);
		end loop;
		return Result;
	end Fixed_Divide_Array_Array;

	function Fixed_Divide_Array_Scalar(Left : Fixed_Array_Type; Right : Fixed_Type) return Fixed_Array_Type is
		Result : Fixed_Array_Type := Left;
	begin
		for R of Result loop
			R := R / Right;
		end loop;
		return Result;
	end Fixed_Divide_Array_Scalar;

	function Fixed_Divide_Scalar_Array(Left : Fixed_Type; Right : Fixed_Array_Type) return Fixed_Array_Type is
		Result : Fixed_Array_Type := Right;
	begin
		for R of Result loop
			R := Left / R;
		end loop;
		return Result;
	end Fixed_Divide_Scalar_Array;

	function Fixed_Remainder_Array_Array(Left : Fixed_Array_Type; Right : Fixed_Array_Type) return Fixed_Array_Type is
		Result : Fixed_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) rem Right(I);
		end loop;
		return Result;
	end Fixed_Remainder_Array_Array;

	function Fixed_Remainder_Array_Scalar(Left : Fixed_Array_Type; Right : Fixed_Type) return Fixed_Array_Type is
		Result : Fixed_Array_Type := Left;
	begin
		for R of Result loop
			R := R rem Right;
		end loop;
		return Result;
	end Fixed_Remainder_Array_Scalar;

	function Fixed_Remainder_Scalar_Array(Left : Fixed_Type; Right : Fixed_Array_Type) return Fixed_Array_Type is
		Result : Fixed_Array_Type := Right;
	begin
		for R of Result loop
			R := Left rem R;
		end loop;
		return Result;
	end Fixed_Remainder_Scalar_Array;

	function Fixed_Modulus_Array_Array(Left : Fixed_Array_Type; Right : Fixed_Array_Type) return Fixed_Array_Type is
		Result : Fixed_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) mod Right(I);
		end loop;
		return Result;
	end Fixed_Modulus_Array_Array;

	function Fixed_Modulus_Array_Scalar(Left : Fixed_Array_Type; Right : Fixed_Type) return Fixed_Array_Type is
		Result : Fixed_Array_Type := Left;
	begin
		for R of Result loop
			R := R mod Right;
		end loop;
		return Result;
	end Fixed_Modulus_Array_Scalar;

	function Fixed_Modulus_Scalar_Array(Left : Fixed_Type; Right : Fixed_Array_Type) return Fixed_Array_Type is
		Result : Fixed_Array_Type := Right;
	begin
		for R of Result loop
			R := Left mod R;
		end loop;
		return Result;
	end Fixed_Modulus_Scalar_Array;

	function Fixed_Equal_Array_Array(Left : Fixed_Array_Type; Right : Fixed_Array_Type) return Boolean is
	begin
		for I in 1..Left'Length loop
			if Left(I) = Right(I) then
				return False;
			end if;
		end loop;
		return True;
	end Fixed_Equal_Array_Array;

	function Fixed_Equal_Array_Scalar(Left : Fixed_Array_Type; Right : Fixed_Type) return Boolean is
	begin
		for L of Left loop
			if L /= Right then
				return False;
			end if;
		end loop;
		return True;
	end Fixed_Equal_Array_Scalar;

	function Fixed_Equal_Scalar_Array(Left : Fixed_Type; Right : Fixed_Array_Type) return Boolean is
	begin
		for R of Right loop
			if Left /= R then
				return False;
			end if;
		end loop;
		return True;
	end Fixed_Equal_Scalar_Array;

	function Fixed_Lesser_Array_Array(Left : Fixed_Array_Type; Right : Fixed_Array_Type) return Boolean is
	begin
		for I in 1..Left'Length loop
			if Left(I) >= Right(I) then
				return False;
			end if;
		end loop;
		return False;
	end Fixed_Lesser_Array_Array;

	function Fixed_Lesser_Array_Scalar(Left : Fixed_Array_Type; Right : Fixed_Type) return Boolean is
	begin
		for L of Left loop
			if L >= Right then
				return False;
			end if;
		end loop;
		return False;
	end Fixed_Lesser_Array_Scalar;

	function Fixed_Lesser_Scalar_Array(Left : Fixed_Type; Right : Fixed_Array_Type) return Boolean is
	begin
		for R of Right loop
			if Left >= R then
				return False;
			end if;
		end loop;
		return False;
	end Fixed_Lesser_Scalar_Array;

	function Fixed_Greater_Array_Array(Left : Fixed_Array_Type; Right : Fixed_Array_Type) return Boolean is
	begin
		for I in 1..Left'Length loop
			if Left(I) <= Right(I) then
				return False;
			end if;
		end loop;
		return False;
	end Fixed_Greater_Array_Array;

	function Fixed_Greater_Array_Scalar(Left : Fixed_Array_Type; Right : Fixed_Type) return Boolean is
	begin
		for L of Left loop
			if L <= Right then
				return False;
			end if;
		end loop;
		return False;
	end Fixed_Greater_Array_Scalar;

	function Fixed_Greater_Scalar_Array(Left : Fixed_Type; Right : Fixed_Array_Type) return Boolean is
	begin
		for R of Right loop
			if Left <= R then
				return False;
			end if;
		end loop;
		return False;
	end Fixed_Greater_Scalar_Array;

	function Fixed_Lesser_Or_Equal_Array_Array(Left : Fixed_Array_Type; Right : Fixed_Array_Type) return Boolean is
	begin
		for I in 1..Left'Length loop
			if Left(I) > Right(I) then
				return False;
			end if;
		end loop;
		return False;
	end Fixed_Lesser_Or_Equal_Array_Array;

	function Fixed_Lesser_Or_Equal_Array_Scalar(Left : Fixed_Array_Type; Right : Fixed_Type) return Boolean is
	begin
		for L of Left loop
			if L > Right then
				return False;
			end if;
		end loop;
		return False;
	end Fixed_Lesser_Or_Equal_Array_Scalar;

	function Fixed_Lesser_Or_Equal_Scalar_Array(Left : Fixed_Type; Right : Fixed_Array_Type) return Boolean is
	begin
		for R of Right loop
			if Left > R then
				return False;
			end if;
		end loop;
		return False;
	end Fixed_Lesser_Or_Equal_Scalar_Array;

	function Fixed_Greater_Or_Equal_Array_Array(Left : Fixed_Array_Type; Right : Fixed_Array_Type) return Boolean is
	begin
		for I in 1..Left'Length loop
			if Left(I) < Right(I) then
				return False;
			end if;
		end loop;
		return False;
	end Fixed_Greater_Or_Equal_Array_Array;

	function Fixed_Greater_Or_Equal_Array_Scalar(Left : Fixed_Array_Type; Right : Fixed_Type) return Boolean is
	begin
		for L of Left loop
			if L < Right then
				return False;
			end if;
		end loop;
		return False;
	end Fixed_Greater_Or_Equal_Array_Scalar;

	function Fixed_Greater_Or_Equal_Scalar_Array(Left : Fixed_Type; Right : Fixed_Array_Type) return Boolean is
	begin
		for R of Right loop
			if Left < R then
				return False;
			end if;
		end loop;
		return False;
	end Fixed_Greater_Or_Equal_Scalar_Array;

	function Fixed_Max(Value : Fixed_Array_Type) return Fixed_Type is
		Max : Fixed_Type := Value(1);
	begin
		for V of Value loop
			if V > Max then
				Max := V;
			end if;
		end loop;
		return Max;
	end Fixed_Max;

	function Fixed_Min(Value : Fixed_Array_Type) return Fixed_Type is
		Min : Fixed_Type := Value(1);
	begin
		for V of Value loop
			if V < Min then
				Min := V;
			end if;
		end loop;
		return Min;
	end Fixed_Min;

	function Fixed_Apply_Procedure(Value : Fixed_Array_Type; Call : access Procedure(Value : in out Fixed_Type)) return Fixed_Array_Type is
		Result : Fixed_Array_Type := Value;
	begin
		for R of Result loop
			Call.all(R);
		end loop;
		return Result;
	end Fixed_Apply_Procedure;

	function Fixed_Apply_Function(Value : Fixed_Array_Type; Call : access Function(Value : Fixed_Type) return Fixed_Type) return Fixed_Array_Type is
		Result : Fixed_Array_Type := Value;
	begin
		for R of Result loop
			R := Call.all(R);
		end loop;
		return Result;
	end Fixed_Apply_Function;
	
	function Fixed_Fold(Value : Fixed_Array_Type; Call : access Function(A, B : Fixed_Type) return Fixed_Type) return Fixed_Type is
		Result : Fixed_Type;
	begin
		--In the rare event folding is attempted with only one element, return that element
		if Value'Length = 1 then
			return Value(1);
		end if;
		--We can't call on the first element alone, so we need to call it and the second element manually
		Result := Call(Value(1), Value(2));
		--Then loop through the remaining elements if any
		for V in 3 .. Value'Length loop
			Result := Call(Result, Value(V));
		end loop;
		return Result;
	end Fixed_Fold;
	
	-------------
	-- Decimal --
	-------------

	function Decimal_Step_Comprehension(Lower_Bound, Upper_Bound, Step : Decimal_Type) return Decimal_Array_Type is
		Length : Positive := Integer(Ceiling(Float(Upper_Bound - Lower_Bound + 1.0) / Float(Step)));
		Result : Decimal_Array_Type(1 .. Length);
		I : Decimal_Type := Lower_Bound;
	begin
		for R of Result loop
			R := I;
			I := I + Step;
		end loop;
		return Result;
	end Decimal_Step_Comprehension;

	function Decimal_Assert_Array(Value : Decimal_Array_Type) return Decimal_Array_Type is
		Result : Decimal_Array_Type := Value;
	begin
		for R of Result loop
			R := +R;
		end loop;
		return Result;
	end Decimal_Assert_Array;

	function Decimal_Negate_Array(Value : Decimal_Array_Type) return Decimal_Array_Type is
		Result : Decimal_Array_Type := Value;
	begin
		for R of Result loop
			R := -R;
		end loop;
		return Result;
	end Decimal_Negate_Array;

	function Decimal_Absolute_Value_Array(Value : Decimal_Array_Type) return Decimal_Array_Type is
		Result : Decimal_Array_Type := Value;
	begin
		for R of Result loop
			R := abs R;
		end loop;
		return Result;
	end Decimal_Absolute_Value_Array;

	function Decimal_Add_Array_Array(Left : Decimal_Array_Type; Right : Decimal_Array_Type) return Decimal_Array_Type is
		Result : Decimal_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) + Right(I);
		end loop;
		return Result;
	end Decimal_Add_Array_Array;

	function Decimal_Add_Array_Scalar(Left : Decimal_Array_Type; Right : Decimal_Type) return Decimal_Array_Type is
		Result : Decimal_Array_Type := Left;
	begin
		for R of Result loop
			R := R + Right;
		end loop;
		return Result;
	end Decimal_Add_Array_Scalar;

	function Decimal_Add_Scalar_Array(Left : Decimal_Type; Right : Decimal_Array_Type) return Decimal_Array_Type is
		Result : Decimal_Array_Type := Right;
	begin
		for R of Result loop
			R := Left + R;
		end loop;
		return Result;
	end Decimal_Add_Scalar_Array;

	function Decimal_Subtract_Array_Array(Left : Decimal_Array_Type; Right : Decimal_Array_Type) return Decimal_Array_Type is
		Result : Decimal_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) - Right(I);
		end loop;
		return Result;
	end Decimal_Subtract_Array_Array;

	function Decimal_Subtract_Array_Scalar(Left : Decimal_Array_Type; Right : Decimal_Type) return Decimal_Array_Type is
		Result : Decimal_Array_Type := Left;
	begin
		for R of Result loop
			R := R - Right;
		end loop;
		return Result;
	end Decimal_Subtract_Array_Scalar;

	function Decimal_Subtract_Scalar_Array(Left : Decimal_Type; Right : Decimal_Array_Type) return Decimal_Array_Type is
		Result : Decimal_Array_Type := Right;
	begin
		for R of Result loop
			R := Left - R;
		end loop;
		return Result;
	end Decimal_Subtract_Scalar_Array;

	function Decimal_Multiply_Array_Array(Left : Decimal_Array_Type; Right : Decimal_Array_Type) return Decimal_Array_Type is
		Result : Decimal_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) * Right(I);
		end loop;
		return Result;
	end Decimal_Multiply_Array_Array;

	function Decimal_Multiply_Array_Scalar(Left : Decimal_Array_Type; Right : Decimal_Type) return Decimal_Array_Type is
		Result : Decimal_Array_Type := Left;
	begin
		for R of Result loop
			R := R * Right;
		end loop;
		return Result;
	end Decimal_Multiply_Array_Scalar;

	function Decimal_Multiply_Scalar_Array(Left : Decimal_Type; Right : Decimal_Array_Type) return Decimal_Array_Type is
		Result : Decimal_Array_Type := Right;
	begin
		for R of Result loop
			R := Left * R;
		end loop;
		return Result;
	end Decimal_Multiply_Scalar_Array;

	function Decimal_Scalar_Product(Left : Decimal_Array_Type; Right : Decimal_Array_Type) return Decimal_Type is
		Result : Decimal_Type := 0.0;
	begin
		for I in Left'Range loop
			Result := Result + (Left(I) * Right(I));
		end loop;
		return Result;
	end Decimal_Scalar_Product;

	function Decimal_Divide_Array_Array(Left : Decimal_Array_Type; Right : Decimal_Array_Type) return Decimal_Array_Type is
		Result : Decimal_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) / Right(I);
		end loop;
		return Result;
	end Decimal_Divide_Array_Array;

	function Decimal_Divide_Array_Scalar(Left : Decimal_Array_Type; Right : Decimal_Type) return Decimal_Array_Type is
		Result : Decimal_Array_Type := Left;
	begin
		for R of Result loop
			R := R / Right;
		end loop;
		return Result;
	end Decimal_Divide_Array_Scalar;

	function Decimal_Divide_Scalar_Array(Left : Decimal_Type; Right : Decimal_Array_Type) return Decimal_Array_Type is
		Result : Decimal_Array_Type := Right;
	begin
		for R of Result loop
			R := Left / R;
		end loop;
		return Result;
	end Decimal_Divide_Scalar_Array;

	function Decimal_Remainder_Array_Array(Left : Decimal_Array_Type; Right : Decimal_Array_Type) return Decimal_Array_Type is
		Result : Decimal_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) rem Right(I);
		end loop;
		return Result;
	end Decimal_Remainder_Array_Array;

	function Decimal_Remainder_Array_Scalar(Left : Decimal_Array_Type; Right : Decimal_Type) return Decimal_Array_Type is
		Result : Decimal_Array_Type := Left;
	begin
		for R of Result loop
			R := R rem Right;
		end loop;
		return Result;
	end Decimal_Remainder_Array_Scalar;

	function Decimal_Remainder_Scalar_Array(Left : Decimal_Type; Right : Decimal_Array_Type) return Decimal_Array_Type is
		Result : Decimal_Array_Type := Right;
	begin
		for R of Result loop
			R := Left rem R;
		end loop;
		return Result;
	end Decimal_Remainder_Scalar_Array;

	function Decimal_Modulus_Array_Array(Left : Decimal_Array_Type; Right : Decimal_Array_Type) return Decimal_Array_Type is
		Result : Decimal_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) mod Right(I);
		end loop;
		return Result;
	end Decimal_Modulus_Array_Array;

	function Decimal_Modulus_Array_Scalar(Left : Decimal_Array_Type; Right : Decimal_Type) return Decimal_Array_Type is
		Result : Decimal_Array_Type := Left;
	begin
		for R of Result loop
			R := R mod Right;
		end loop;
		return Result;
	end Decimal_Modulus_Array_Scalar;

	function Decimal_Modulus_Scalar_Array(Left : Decimal_Type; Right : Decimal_Array_Type) return Decimal_Array_Type is
		Result : Decimal_Array_Type := Right;
	begin
		for R of Result loop
			R := Left mod R;
		end loop;
		return Result;
	end Decimal_Modulus_Scalar_Array;

	function Decimal_Equal_Array_Array(Left : Decimal_Array_Type; Right : Decimal_Array_Type) return Boolean is
	begin
		for I in 1..Left'Length loop
			if Left(I) /= Right(I) then
				return False;
			end if;
		end loop;
		return True;
	end Decimal_Equal_Array_Array;

	function Decimal_Equal_Array_Scalar(Left : Decimal_Array_Type; Right : Decimal_Type) return Boolean is
	begin
		for L of Left loop
			if L /= Right then
				return False;
			end if;
		end loop;
		return True;
	end Decimal_Equal_Array_Scalar;

	function Decimal_Equal_Scalar_Array(Left : Decimal_Type; Right : Decimal_Array_Type) return Boolean is
	begin
		for R of Right loop
			if Left /= R then
				return False;
			end if;
		end loop;
		return True;
	end Decimal_Equal_Scalar_Array;

	function Decimal_Lesser_Array_Array(Left : Decimal_Array_Type; Right : Decimal_Array_Type) return Boolean is
	begin
		for I in 1..Left'Length loop
			if Left(I) >= Right(I) then
				return False;
			end if;
		end loop;
		return False;
	end Decimal_Lesser_Array_Array;

	function Decimal_Lesser_Array_Scalar(Left : Decimal_Array_Type; Right : Decimal_Type) return Boolean is
	begin
		for L of Left loop
			if L >= Right then
				return False;
			end if;
		end loop;
		return False;
	end Decimal_Lesser_Array_Scalar;

	function Decimal_Lesser_Scalar_Array(Left : Decimal_Type; Right : Decimal_Array_Type) return Boolean is
	begin
		for R of Right loop
			if Left >= R then
				return False;
			end if;
		end loop;
		return False;
	end Decimal_Lesser_Scalar_Array;

	function Decimal_Greater_Array_Array(Left : Decimal_Array_Type; Right : Decimal_Array_Type) return Boolean is
	begin
		for I in 1..Left'Length loop
			if Left(I) <= Right(I) then
				return False;
			end if;
		end loop;
		return False;
	end Decimal_Greater_Array_Array;

	function Decimal_Greater_Array_Scalar(Left : Decimal_Array_Type; Right : Decimal_Type) return Boolean is
	begin
		for L of Left loop
			if L <= Right then
				return False;
			end if;
		end loop;
		return False;
	end Decimal_Greater_Array_Scalar;

	function Decimal_Greater_Scalar_Array(Left : Decimal_Type; Right : Decimal_Array_Type) return Boolean is
	begin
		for R of Right loop
			if Left <= R then
				return False;
			end if;
		end loop;
		return False;
	end Decimal_Greater_Scalar_Array;

	function Decimal_Lesser_Or_Equal_Array_Array(Left : Decimal_Array_Type; Right : Decimal_Array_Type) return Boolean is
	begin
		for I in 1..Left'Length loop
			if Left(I) > Right(I) then
				return False;
			end if;
		end loop;
		return False;
	end Decimal_Lesser_Or_Equal_Array_Array;

	function Decimal_Lesser_Or_Equal_Array_Scalar(Left : Decimal_Array_Type; Right : Decimal_Type) return Boolean is
	begin
		for L of Left loop
			if L > Right then
				return False;
			end if;
		end loop;
		return False;
	end Decimal_Lesser_Or_Equal_Array_Scalar;

	function Decimal_Lesser_Or_Equal_Scalar_Array(Left : Decimal_Type; Right : Decimal_Array_Type) return Boolean is
	begin
		for R of Right loop
			if Left > R then
				return False;
			end if;
		end loop;
		return False;
	end Decimal_Lesser_Or_Equal_Scalar_Array;

	function Decimal_Greater_Or_Equal_Array_Array(Left : Decimal_Array_Type; Right : Decimal_Array_Type) return Boolean is
	begin
		for I in 1..Left'Length loop
			if Left(I) < Right(I) then
				return False;
			end if;
		end loop;
		return False;
	end Decimal_Greater_Or_Equal_Array_Array;

	function Decimal_Greater_Or_Equal_Array_Scalar(Left : Decimal_Array_Type; Right : Decimal_Type) return Boolean is
	begin
		for L of Left loop
			if L < Right then
				return False;
			end if;
		end loop;
		return False;
	end Decimal_Greater_Or_Equal_Array_Scalar;

	function Decimal_Greater_Or_Equal_Scalar_Array(Left : Decimal_Type; Right : Decimal_Array_Type) return Boolean is
	begin
		for R of Right loop
			if Left < R then
				return False;
			end if;
		end loop;
		return False;
	end Decimal_Greater_Or_Equal_Scalar_Array;

	function Decimal_Max(Value : Decimal_Array_Type) return Decimal_Type is
		Max : Decimal_Type := Value(1);
	begin
		for V of Value loop
			if V > Max then
				Max := V;
			end if;
		end loop;
		return Max;
	end Decimal_Max;

	function Decimal_Min(Value : Decimal_Array_Type) return Decimal_Type is
		Min : Decimal_Type := Value(1);
	begin
		for V of Value loop
			if V < Min then
				Min := V;
			end if;
		end loop;
		return Min;
	end Decimal_Min;

	function Decimal_Apply_Procedure(Value : Decimal_Array_Type; Call : access Procedure(Value : in out Decimal_Type)) return Decimal_Array_Type is
		Result : Decimal_Array_Type := Value;
	begin
		for R of Result loop
			Call.all(R);
		end loop;
		return Result;
	end Decimal_Apply_Procedure;

	function Decimal_Apply_Function(Value : Decimal_Array_Type; Call : access Function(Value : Decimal_Type) return Decimal_Type) return Decimal_Array_Type is
		Result : Decimal_Array_Type := Value;
	begin
		for R of Result loop
			R := Call.all(R);
		end loop;
		return Result;
	end Decimal_Apply_Function;
	
	function Decimal_Fold(Value : Decimal_Array_Type; Call : access Function(A, B : Decimal_Type) return Decimal_Type) return Decimal_Type is
		Result : Decimal_Type;
	begin
		--In the rare event folding is attempted with only one element, return that element
		if Value'Length = 1 then
			return Value(1);
		end if;
		--We can't call on the first element alone, so we need to call it and the second element manually
		Result := Call(Value(1), Value(2));
		--Then loop through the remaining elements if any
		for V in 3 .. Value'Length loop
			Result := Call(Result, Value(V));
		end loop;
		return Result;
	end Decimal_Fold;
	
	-----------
	-- Float --
	-----------

	function Float_Step_Comprehension(Lower_Bound, Upper_Bound, Step : Float_Type) return Float_Array_Type is
		Length : Positive := Integer(Ceiling(Float(Upper_Bound - Lower_Bound + 1.0) / Float(Step)));
		Result : Float_Array_Type(1 .. Length);
		I : Float_Type := Lower_Bound;
	begin
		for R of Result loop
			R := I;
			I := I + Step;
		end loop;
		return Result;
	end Float_Step_Comprehension;

	function Float_Assert_Array(Value : Float_Array_Type) return Float_Array_Type is
		Result : Float_Array_Type := Value;
	begin
		for R of Result loop
			R := +R;
		end loop;
		return Result;
	end Float_Assert_Array;

	function Float_Negate_Array(Value : Float_Array_Type) return Float_Array_Type is
		Result : Float_Array_Type := Value;
	begin
		for R of Result loop
			R := -R;
		end loop;
		return Result;
	end Float_Negate_Array;

	function Float_Absolute_Value_Array(Value : Float_Array_Type) return Float_Array_Type is
		Result : Float_Array_Type := Value;
	begin
		for R of Result loop
			R := abs R;
		end loop;
		return Result;
	end Float_Absolute_Value_Array;

	function Float_Add_Array_Array(Left : Float_Array_Type; Right : Float_Array_Type) return Float_Array_Type is
		Result : Float_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) + Right(I);
		end loop;
		return Result;
	end Float_Add_Array_Array;

	function Float_Add_Array_Scalar(Left : Float_Array_Type; Right : Float_Type) return Float_Array_Type is
		Result : Float_Array_Type := Left;
	begin
		for R of Result loop
			R := R + Right;
		end loop;
		return Result;
	end Float_Add_Array_Scalar;

	function Float_Add_Scalar_Array(Left : Float_Type; Right : Float_Array_Type) return Float_Array_Type is
		Result : Float_Array_Type := Right;
	begin
		for R of Result loop
			R := Left + R;
		end loop;
		return Result;
	end Float_Add_Scalar_Array;

	function Float_Subtract_Array_Array(Left : Float_Array_Type; Right : Float_Array_Type) return Float_Array_Type is
		Result : Float_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) - Right(I);
		end loop;
		return Result;
	end Float_Subtract_Array_Array;

	function Float_Subtract_Array_Scalar(Left : Float_Array_Type; Right : Float_Type) return Float_Array_Type is
		Result : Float_Array_Type := Left;
	begin
		for R of Result loop
			R := R - Right;
		end loop;
		return Result;
	end Float_Subtract_Array_Scalar;

	function Float_Subtract_Scalar_Array(Left : Float_Type; Right : Float_Array_Type) return Float_Array_Type is
		Result : Float_Array_Type := Right;
	begin
		for R of Result loop
			R := Left - R;
		end loop;
		return Result;
	end Float_Subtract_Scalar_Array;

	function Float_Multiply_Array_Array(Left : Float_Array_Type; Right : Float_Array_Type) return Float_Array_Type is
		Result : Float_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) * Right(I);
		end loop;
		return Result;
	end Float_Multiply_Array_Array;

	function Float_Multiply_Array_Scalar(Left : Float_Array_Type; Right : Float_Type) return Float_Array_Type is
		Result : Float_Array_Type := Left;
	begin
		for R of Result loop
			R := R * Right;
		end loop;
		return Result;
	end Float_Multiply_Array_Scalar;

	function Float_Multiply_Scalar_Array(Left : Float_Type; Right : Float_Array_Type) return Float_Array_Type is
		Result : Float_Array_Type := Right;
	begin
		for R of Result loop
			R := Left * R;
		end loop;
		return Result;
	end Float_Multiply_Scalar_Array;

	function Float_Scalar_Product(Left : Float_Array_Type; Right : Float_Array_Type) return Float_Type is
		Result : Float_Type := 0.0;
	begin
		for I in Left'Range loop
			Result := Result + (Left(I) * Right(I));
		end loop;
		return Result;
	end Float_Scalar_Product;

	function Float_Divide_Array_Array(Left : Float_Array_Type; Right : Float_Array_Type) return Float_Array_Type is
		Result : Float_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) / Right(I);
		end loop;
		return Result;
	end Float_Divide_Array_Array;

	function Float_Divide_Array_Scalar(Left : Float_Array_Type; Right : Float_Type) return Float_Array_Type is
		Result : Float_Array_Type := Left;
	begin
		for R of Result loop
			R := R / Right;
		end loop;
		return Result;
	end Float_Divide_Array_Scalar;

	function Float_Divide_Scalar_Array(Left : Float_Type; Right : Float_Array_Type) return Float_Array_Type is
		Result : Float_Array_Type := Right;
	begin
		for R of Result loop
			R := Left / R;
		end loop;
		return Result;
	end Float_Divide_Scalar_Array;

	function Float_Remainder_Array_Array(Left : Float_Array_Type; Right : Float_Array_Type) return Float_Array_Type is
		Result : Float_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) rem Right(I);
		end loop;
		return Result;
	end Float_Remainder_Array_Array;

	function Float_Remainder_Array_Scalar(Left : Float_Array_Type; Right : Float_Type) return Float_Array_Type is
		Result : Float_Array_Type := Left;
	begin
		for R of Result loop
			R := R rem Right;
		end loop;
		return Result;
	end Float_Remainder_Array_Scalar;

	function Float_Remainder_Scalar_Array(Left : Float_Type; Right : Float_Array_Type) return Float_Array_Type is
		Result : Float_Array_Type := Right;
	begin
		for R of Result loop
			R := Left rem R;
		end loop;
		return Result;
	end Float_Remainder_Scalar_Array;

	function Float_Modulus_Array_Array(Left : Float_Array_Type; Right : Float_Array_Type) return Float_Array_Type is
		Result : Float_Array_Type := Left;
	begin
		for I in 1..Result'Length loop
			Result(I) := Left(I) mod Right(I);
		end loop;
		return Result;
	end Float_Modulus_Array_Array;

	function Float_Modulus_Array_Scalar(Left : Float_Array_Type; Right : Float_Type) return Float_Array_Type is
		Result : Float_Array_Type := Left;
	begin
		for R of Result loop
			R := R mod Right;
		end loop;
		return Result;
	end Float_Modulus_Array_Scalar;

	function Float_Modulus_Scalar_Array(Left : Float_Type; Right : Float_Array_Type) return Float_Array_Type is
		Result : Float_Array_Type := Right;
	begin
		for R of Result loop
			R := Left mod R;
		end loop;
		return Result;
	end Float_Modulus_Scalar_Array;

	function Float_Equal_Array_Array(Left : Float_Array_Type; Right : Float_Array_Type) return Boolean is
	begin
		for I in 1..Left'Length loop
			if Left(I) /= Right(I) then
				return False;
			end if;
		end loop;
		return True;
	end Float_Equal_Array_Array;

	function Float_Equal_Array_Scalar(Left : Float_Array_Type; Right : Float_Type) return Boolean is
	begin
		for L of Left loop
			if L /= Right then
				return False;
			end if;
		end loop;
		return True;
	end Float_Equal_Array_Scalar;

	function Float_Equal_Scalar_Array(Left : Float_Type; Right : Float_Array_Type) return Boolean is
	begin
		for R of Right loop
			if Left /= R then
				return False;
			end if;
		end loop;
		return True;
	end Float_Equal_Scalar_Array;

	function Float_Lesser_Array_Array(Left : Float_Array_Type; Right : Float_Array_Type) return Boolean is
	begin
		for I in 1..Left'Length loop
			if Left(I) >= Right(I) then
				return False;
			end if;
		end loop;
		return False;
	end Float_Lesser_Array_Array;

	function Float_Lesser_Array_Scalar(Left : Float_Array_Type; Right : Float_Type) return Boolean is
	begin
		for L of Left loop
			if L >= Right then
				return False;
			end if;
		end loop;
		return False;
	end Float_Lesser_Array_Scalar;

	function Float_Lesser_Scalar_Array(Left : Float_Type; Right : Float_Array_Type) return Boolean is
	begin
		for R of Right loop
			if Left >= R then
				return False;
			end if;
		end loop;
		return False;
	end Float_Lesser_Scalar_Array;

	function Float_Greater_Array_Array(Left : Float_Array_Type; Right : Float_Array_Type) return Boolean is
	begin
		for I in 1..Left'Length loop
			if Left(I) <= Right(I) then
				return False;
			end if;
		end loop;
		return False;
	end Float_Greater_Array_Array;

	function Float_Greater_Array_Scalar(Left : Float_Array_Type; Right : Float_Type) return Boolean is
	begin
		for L of Left loop
			if L <= Right then
				return False;
			end if;
		end loop;
		return False;
	end Float_Greater_Array_Scalar;

	function Float_Greater_Scalar_Array(Left : Float_Type; Right : Float_Array_Type) return Boolean is
	begin
		for R of Right loop
			if Left <= R then
				return False;
			end if;
		end loop;
		return False;
	end Float_Greater_Scalar_Array;

	function Float_Lesser_Or_Equal_Array_Array(Left : Float_Array_Type; Right : Float_Array_Type) return Boolean is
	begin
		for I in 1..Left'Length loop
			if Left(I) > Right(I) then
				return False;
			end if;
		end loop;
		return False;
	end Float_Lesser_Or_Equal_Array_Array;

	function Float_Lesser_Or_Equal_Array_Scalar(Left : Float_Array_Type; Right : Float_Type) return Boolean is
	begin
		for L of Left loop
			if L > Right then
				return False;
			end if;
		end loop;
		return False;
	end Float_Lesser_Or_Equal_Array_Scalar;

	function Float_Lesser_Or_Equal_Scalar_Array(Left : Float_Type; Right : Float_Array_Type) return Boolean is
	begin
		for R of Right loop
			if Left > R then
				return False;
			end if;
		end loop;
		return False;
	end Float_Lesser_Or_Equal_Scalar_Array;

	function Float_Greater_Or_Equal_Array_Array(Left : Float_Array_Type; Right : Float_Array_Type) return Boolean is
	begin
		for I in 1..Left'Length loop
			if Left(I) < Right(I) then
				return False;
			end if;
		end loop;
		return False;
	end Float_Greater_Or_Equal_Array_Array;

	function Float_Greater_Or_Equal_Array_Scalar(Left : Float_Array_Type; Right : Float_Type) return Boolean is
	begin
		for L of Left loop
			if L < Right then
				return False;
			end if;
		end loop;
		return False;
	end Float_Greater_Or_Equal_Array_Scalar;

	function Float_Greater_Or_Equal_Scalar_Array(Left : Float_Type; Right : Float_Array_Type) return Boolean is
	begin
		for R of Right loop
			if Left < R then
				return False;
			end if;
		end loop;
		return False;
	end Float_Greater_Or_Equal_Scalar_Array;

	function Float_Max(Value : Float_Array_Type) return Float_Type is
		Max : Float_Type := Value(1);
	begin
		for V of Value loop
			if V > Max then
				Max := V;
			end if;
		end loop;
		return Max;
	end Float_Max;

	function Float_Min(Value : Float_Array_Type) return Float_Type is
		Min : Float_Type := Value(1);
	begin
		for V of Value loop
			if V < Min then
				Min := V;
			end if;
		end loop;
		return Min;
	end Float_Min;

	function Float_Apply_Procedure(Value : Float_Array_Type; Call : access Procedure(Value : in out Float_Type)) return Float_Array_Type is
		Result : Float_Array_Type := Value;
	begin
		for R of Result loop
			Call.all(R);
		end loop;
		return Result;
	end Float_Apply_Procedure;

	function Float_Apply_Function(Value : Float_Array_Type; Call : access Function(Value : Float_Type) return Float_Type) return Float_Array_Type is
		Result : Float_Array_Type := Value;
	begin
		for R of Result loop
			R := Call.all(R);
		end loop;
		return Result;
	end Float_Apply_Function;
	
	function Float_Fold(Value : Float_Array_Type; Call : access Function(A, B : Float_Type) return Float_Type) return Float_Type is
		Result : Float_Type;
	begin
		--In the rare event folding is attempted with only one element, return that element
		if Value'Length = 1 then
			return Value(1);
		end if;
		--We can't call on the first element alone, so we need to call it and the second element manually
		Result := Call(Value(1), Value(2));
		--Then loop through the remaining elements if any
		for V in 3 .. Value'Length loop
			Result := Call(Result, Value(V));
		end loop;
		return Result;
	end Float_Fold;
	
end Generics.Mathematics.Arrays;
