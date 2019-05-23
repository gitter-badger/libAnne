package body Generics.Numerics is

	function Fixed_Truncate(Value : Fixed_Type) return Fixed_Type is
		V : Fixed_Type := Fixed_Type(Long_Long_Integer(Value));
	begin
		if Value > 0.0 and then V > Value then
			return V - 1.0;
		elsif Value < 0.0 and then V < Value then
			return V + 1.0;
		else
			return V;
		end if;
	end Fixed_Truncate;

	function Fixed_Ceiling(Value : Fixed_Type) return Fixed_Type is
		V : Fixed_Type := Fixed_Type(Long_Long_Integer(Value));
	begin
		if V < Value then
			return V + 1.0;
		else
			return V;
		end if;
	end Fixed_Ceiling;

	function Fixed_Floor(Value : Fixed_Type) return Fixed_Type is
		V : Fixed_Type := Fixed_Type(Long_Long_Integer(Value));
	begin
		if V > Value then
			return V - 1.0;
		else
			return V;
		end if;
	end Fixed_Floor;

	function Fixed_Modulus(Left : Fixed_Type; Right : Fixed_Type) return Fixed_Type is
		function Floor is new Fixed_Floor(Fixed_Type);
	begin
		return Left - Right * Floor(Left / Right);
	end Fixed_Modulus;

	function Fixed_Remainder(Left : Fixed_Type; Right : Fixed_Type) return Fixed_Type is
		function Truncate is new Fixed_Truncate(Fixed_Type);
	begin
		return Left - Right * Truncate(Left / Right);
	end Fixed_Remainder;

	-------------
	-- Decimal --
	-------------

	function Decimal_Truncate(Value : Decimal_Type) return Decimal_Type is
		V : Decimal_Type := Decimal_Type(Long_Long_Integer(Value));
	begin
		if Value > 0.0 and then V > Value then
			return V - 1.0;
		elsif Value < 0.0 and then V < Value then
			return V + 1.0;
		else
			return V;
		end if;
	end Decimal_Truncate;

	function Decimal_Ceiling(Value : Decimal_Type) return Decimal_Type is
		V : Decimal_Type := Decimal_Type(Long_Long_Integer(Value));
	begin
		if V < Value then
			return V + 1.0;
		else
			return V;
		end if;
	end Decimal_Ceiling;

	function Decimal_Floor(Value : Decimal_Type) return Decimal_Type is
		V : Decimal_Type := Decimal_Type(Long_Long_Integer(Value));
	begin
		if V > Value then
			return V - 1.0;
		else
			return V;
		end if;
	end Decimal_Floor;

	function Decimal_Modulus(Left : Decimal_Type; Right : Decimal_Type) return Decimal_Type is
		function Floor is new Decimal_Floor(Decimal_Type);
	begin
		return Left - Floor(Left / Right) * Right;
	end Decimal_Modulus;

	function Decimal_Remainder(Left : Decimal_Type; Right : Decimal_Type) return Decimal_Type is
		function Truncate is new Decimal_Truncate(Decimal_Type);
	begin
		return Left - Truncate(Left / Right) * Right;
	end Decimal_Remainder;

	-----------
	-- Float --
	-----------

	function Float_Truncate(Value : Float_Type) return Float_Type is
	begin
		return Float_Type'Truncation(Value);
	end Float_Truncate;

	function Float_Ceiling(Value : Float_Type) return Float_Type is
	begin
		return Float_Type'Ceiling(Value);
	end Float_Ceiling;

	function Float_Floor(Value : Float_Type) return Float_Type is
	begin
		return Float_Type'Floor(Value);
	end Float_Floor;

	function Float_Modulus(Left : Float_Type; Right : Float_Type) return Float_Type is
		function Floor is new Float_Floor(Float_Type);
	begin
		return Left - Floor(Left / Right) * Right;
	end Float_Modulus;

	function Float_Remainder(Left : Float_Type; Right : Float_Type) return Float_Type is
		function Truncate is new Float_Truncate(Float_Type);
	begin
		return Left - Truncate(Left / Right) * Right;
	end Float_Remainder;

end Generics.Numerics;
