with Ada.Strings, Ada.Strings.Unbounded, Ada.Strings.Wide_Unbounded, Ada.Strings.Wide_Wide_Unbounded;
use Ada.Strings, Ada.Strings.Unbounded, Ada.Strings.Wide_Unbounded, Ada.Strings.Wide_Wide_Unbounded;

package body Generics.Mathematics.Arrays.IO is

	-------------------
	-- Integer Array --
	-------------------

	function Integer_Array_Image(Value : Integer_Array_Type) return String is
		Result : Unbounded_String := Null_Unbounded_String;
	begin
		Result := Result & "(";
		for V In 1..Value'Length-1 loop
			Result := Result & Trim(To_Unbounded_String(Integer_Type'Image(Value(V))), Both) & ",";
		end loop;
		Result := Result & Trim(To_Unbounded_String(Integer_Type'Image(Value(Value'Length))), Both);
		Result := Result & ")";
		return To_String(Result);
	end Integer_Array_Image;

	function Integer_Array_Wide_Image(Value : Integer_Array_Type) return Wide_String is
		Result : Unbounded_Wide_String := Null_Unbounded_Wide_String;
	begin
		Result := Result & "(";
		for V In 1..Value'Length-1 loop
			Result := Result & Trim(To_Unbounded_Wide_String(Integer_Type'Wide_Image(Value(V))), Both) & ",";
		end loop;
		Result := Result & Trim(To_Unbounded_Wide_String(Integer_Type'Wide_Image(Value(Value'Length))), Both);
		Result := Result & ")";
		return To_Wide_String(Result);
	end Integer_Array_Wide_Image;

	function Integer_Array_Wide_Wide_Image(Value : Integer_Array_Type) return Wide_Wide_String is
		Result : Unbounded_Wide_Wide_String := Null_Unbounded_Wide_Wide_String;
	begin
		Result := Result & "(";
		for V In 1..Value'Length-1 loop
			Result := Result & Trim(To_Unbounded_Wide_Wide_String(Integer_Type'Wide_Wide_Image(Value(V))), Both) & ",";
		end loop;
		Result := Result & Trim(To_Unbounded_Wide_Wide_String(Integer_Type'Wide_Wide_Image(Value(Value'Length))), Both);
		Result := Result & ")";
		return To_Wide_Wide_String(Result);
	end Integer_Array_Wide_Wide_Image;

	-------------------
	-- Modular Array --
	-------------------

	function Modular_Array_Image(Value : Modular_Array_Type) return String is
		Result : Unbounded_String := Null_Unbounded_String;
	begin
		Result := Result & "(";
		for V In 1..Value'Length-1 loop
			Result := Result & Trim(To_Unbounded_String(Modular_Type'Image(Value(V))), Both) & ",";
		end loop;
		Result := Result & Trim(To_Unbounded_String(Modular_Type'Image(Value(Value'Length))), Both);
		Result := Result & ")";
		return To_String(Result);
	end Modular_Array_Image;

	function Modular_Array_Wide_Image(Value : Modular_Array_Type) return Wide_String is
		Result : Unbounded_Wide_String := Null_Unbounded_Wide_String;
	begin
		Result := Result & "(";
		for V In 1..Value'Length-1 loop
			Result := Result & Trim(To_Unbounded_Wide_String(Modular_Type'Wide_Image(Value(V))), Both) & ",";
		end loop;
		Result := Result & Trim(To_Unbounded_Wide_String(Modular_Type'Wide_Image(Value(Value'Length))), Both);
		Result := Result & ")";
		return To_Wide_String(Result);
	end Modular_Array_Wide_Image;

	function Modular_Array_Wide_Wide_Image(Value : Modular_Array_Type) return Wide_Wide_String is
		Result : Unbounded_Wide_Wide_String := Null_Unbounded_Wide_Wide_String;
	begin
		Result := Result & "(";
		for V In 1..Value'Length-1 loop
			Result := Result & Trim(To_Unbounded_Wide_Wide_String(Modular_Type'Wide_Wide_Image(Value(V))), Both) & ",";
		end loop;
		Result := Result & Trim(To_Unbounded_Wide_Wide_String(Modular_Type'Wide_Wide_Image(Value(Value'Length))), Both);
		Result := Result & ")";
		return To_Wide_Wide_String(Result);
	end Modular_Array_Wide_Wide_Image;

	-------------------
	-- Fixed Array --
	-------------------

	function Fixed_Array_Image(Value : Fixed_Array_Type) return String is
		Result : Unbounded_String := Null_Unbounded_String;
	begin
		Result := Result & "(";
		for V In 1..Value'Length-1 loop
			Result := Result & Trim(To_Unbounded_String(Fixed_Type'Image(Value(V))), Both) & ",";
		end loop;
		Result := Result & Trim(To_Unbounded_String(Fixed_Type'Image(Value(Value'Length))), Both);
		Result := Result & ")";
		return To_String(Result);
	end Fixed_Array_Image;

	function Fixed_Array_Wide_Image(Value : Fixed_Array_Type) return Wide_String is
		Result : Unbounded_Wide_String := Null_Unbounded_Wide_String;
	begin
		Result := Result & "(";
		for V In 1..Value'Length-1 loop
			Result := Result & Trim(To_Unbounded_Wide_String(Fixed_Type'Wide_Image(Value(V))), Both) & ",";
		end loop;
		Result := Result & Trim(To_Unbounded_Wide_String(Fixed_Type'Wide_Image(Value(Value'Length))), Both);
		Result := Result & ")";
		return To_Wide_String(Result);
	end Fixed_Array_Wide_Image;

	function Fixed_Array_Wide_Wide_Image(Value : Fixed_Array_Type) return Wide_Wide_String is
		Result : Unbounded_Wide_Wide_String := Null_Unbounded_Wide_Wide_String;
	begin
		Result := Result & "(";
		for V In 1..Value'Length-1 loop
			Result := Result & Trim(To_Unbounded_Wide_Wide_String(Fixed_Type'Wide_Wide_Image(Value(V))), Both) & ",";
		end loop;
		Result := Result & Trim(To_Unbounded_Wide_Wide_String(Fixed_Type'Wide_Wide_Image(Value(Value'Length))), Both);
		Result := Result & ")";
		return To_Wide_Wide_String(Result);
	end Fixed_Array_Wide_Wide_Image;

	-------------------
	-- Decimal Array --
	-------------------

	function Decimal_Array_Image(Value : Decimal_Array_Type) return String is
		Result : Unbounded_String := Null_Unbounded_String;
	begin
		Result := Result & "(";
		for V In 1..Value'Length-1 loop
			Result := Result & Trim(To_Unbounded_String(Decimal_Type'Image(Value(V))), Both) & ",";
		end loop;
		Result := Result & Trim(To_Unbounded_String(Decimal_Type'Image(Value(Value'Length))), Both);
		Result := Result & ")";
		return To_String(Result);
	end Decimal_Array_Image;

	function Decimal_Array_Wide_Image(Value : Decimal_Array_Type) return Wide_String is
		Result : Unbounded_Wide_String := Null_Unbounded_Wide_String;
	begin
		Result := Result & "(";
		for V In 1..Value'Length-1 loop
			Result := Result & Trim(To_Unbounded_Wide_String(Decimal_Type'Wide_Image(Value(V))), Both) & ",";
		end loop;
		Result := Result & Trim(To_Unbounded_Wide_String(Decimal_Type'Wide_Image(Value(Value'Length))), Both);
		Result := Result & ")";
		return To_Wide_String(Result);
	end Decimal_Array_Wide_Image;

	function Decimal_Array_Wide_Wide_Image(Value : Decimal_Array_Type) return Wide_Wide_String is
		Result : Unbounded_Wide_Wide_String := Null_Unbounded_Wide_Wide_String;
	begin
		Result := Result & "(";
		for V In 1..Value'Length-1 loop
			Result := Result & Trim(To_Unbounded_Wide_Wide_String(Decimal_Type'Wide_Wide_Image(Value(V))), Both) & ",";
		end loop;
		Result := Result & Trim(To_Unbounded_Wide_Wide_String(Decimal_Type'Wide_Wide_Image(Value(Value'Length))), Both);
		Result := Result & ")";
		return To_Wide_Wide_String(Result);
	end Decimal_Array_Wide_Wide_Image;

	-------------------
	-- Float Array --
	-------------------

	function Float_Array_Image(Value : Float_Array_Type) return String is
		Result : Unbounded_String := Null_Unbounded_String;
	begin
		Result := Result & "(";
		for V In 1..Value'Length-1 loop
			Result := Result & Trim(To_Unbounded_String(Float_Type'Image(Value(V))), Both) & ",";
		end loop;
		Result := Result & Trim(To_Unbounded_String(Float_Type'Image(Value(Value'Length))), Both);
		Result := Result & ")";
		return To_String(Result);
	end Float_Array_Image;

	function Float_Array_Wide_Image(Value : Float_Array_Type) return Wide_String is
		Result : Unbounded_Wide_String := Null_Unbounded_Wide_String;
	begin
		Result := Result & "(";
		for V In 1..Value'Length-1 loop
			Result := Result & Trim(To_Unbounded_Wide_String(Float_Type'Wide_Image(Value(V))), Both) & ",";
		end loop;
		Result := Result & Trim(To_Unbounded_Wide_String(Float_Type'Wide_Image(Value(Value'Length))), Both);
		Result := Result & ")";
		return To_Wide_String(Result);
	end Float_Array_Wide_Image;

	function Float_Array_Wide_Wide_Image(Value : Float_Array_Type) return Wide_Wide_String is
		Result : Unbounded_Wide_Wide_String := Null_Unbounded_Wide_Wide_String;
	begin
		Result := Result & "(";
		for V In 1..Value'Length-1 loop
			Result := Result & Trim(To_Unbounded_Wide_Wide_String(Float_Type'Wide_Wide_Image(Value(V))), Both) & ",";
		end loop;
		Result := Result & Trim(To_Unbounded_Wide_Wide_String(Float_Type'Wide_Wide_Image(Value(Value'Length))), Both);
		Result := Result & ")";
		return To_Wide_Wide_String(Result);
	end Float_Array_Wide_Wide_Image;

end Generics.Mathematics.Arrays.IO;
