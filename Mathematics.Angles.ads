with Numerics, Generics.Mathematics.Angles;
use Numerics, Generics.Mathematics.Angles;

package Mathematics.Angles with Pure, Remote_Types is
--@Description Provides angles, angular units, and angular math
--@Version 1.0
--The units themselves are not used in the math, but rather "automatically" casted to a base angle type which is used.
	
	pragma Warnings(Off, "*instance does not use primitive operation*");
	
	-------------
	-- Degrees --
	-------------

	type Degree is delta 1.0/1_007_769_600_000_000.0 range 0.0 .. 360.0 with Size => 64;

	function "*"(Left, Right : Degree) return Degree is abstract;

	function "/"(Left, Right : Degree) return Degree is abstract;

	--------------
	-- Gradians --
	--------------

	type Gradian is delta 0.000_000_000_000_001 digits 18 range 0.0 .. 400.0 with Size => 64;

	function "*"(Left, Right : Gradian) return Gradian is abstract;

	function "/"(Left, Right : Gradian) return Gradian is abstract;

	-----------------------
	-- Short Short Angle --
	-----------------------

	type Short_Short_Angle is mod 180 with Size => 8;
	--Represents an angle of no specific unit

	function To_Short_Short_Angle(Value : Degree) return Short_Short_Angle with Inline_Always, Pure_Function;

	function To_Short_Short_Angle(Value : Gradian) return Short_Short_Angle with Inline_Always, Pure_Function;

	function "+" is new Add_Unit_Unit(Degree, Short_Short_Angle, To_Short_Short_Angle) with Inline_Always, Pure_Function;

	function "+" is new Add_Unit_Angle(Degree, Short_Short_Angle, To_Short_Short_Angle) with Inline_Always, Pure_Function;

	function "+" is new Add_Angle_Unit(Degree, Short_Short_Angle, To_Short_Short_Angle) with Inline_Always, Pure_Function;

	function "+" is new Add_Unit_Unit(Gradian, Short_Short_Angle, To_Short_Short_Angle) with Inline_Always, Pure_Function;

	function "+" is new Add_Unit_Angle(Gradian, Short_Short_Angle, To_Short_Short_Angle) with Inline_Always, Pure_Function;

	function "+" is new Add_Angle_Unit(Gradian, Short_Short_Angle, To_Short_Short_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Unit_Unit(Degree, Short_Short_Angle, To_Short_Short_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Unit_Angle(Degree, Short_Short_Angle, To_Short_Short_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Angle_Unit(Degree, Short_Short_Angle, To_Short_Short_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Unit_Unit(Gradian, Short_Short_Angle, To_Short_Short_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Unit_Angle(Gradian, Short_Short_Angle, To_Short_Short_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Angle_Unit(Gradian, Short_Short_Angle, To_Short_Short_Angle) with Inline_Always, Pure_Function;

	function "*"(Left, Right : Short_Short_Angle) return Short_Short_Angle is abstract;

	function "/"(Left, Right : Short_Short_Angle) return Short_Short_Angle is abstract;

	function "not"(Value : Short_Short_Angle) return Short_Short_Angle is abstract;
	
	function "and"(Left, Right : Short_Short_Angle) return Short_Short_Angle is abstract;

	function "or"(Left, Right : Short_Short_Angle) return Short_Short_Angle is abstract;

	function "xor"(Left, Right : Short_Short_Angle) return Short_Short_Angle is abstract;

	function Sine(Value : Short_Short_Angle) return Short_Float with Pure_Function;
	function sin(Value : Short_Short_Angle) return Short_Float renames Sine;

	function Cosine(Value : Short_Short_Angle) return Short_Float with Pure_Function;
	function cos(Value : Short_Short_Angle) return Short_Float renames Cosine;

	function Tangent(Value : Short_Short_Angle) return Short_Float with Pure_Function;
	function tan(Value : Short_Short_Angle) return Short_Float renames Tangent;

	function Cotangent(Value : Short_Short_Angle) return Short_Float with Pure_Function;
	function cot(Value : Short_Short_Angle) return Short_Float renames Cotangent;

	function Versed_Sine(Value : Short_Short_Angle) return Short_Float with Pure_Function;
	function versin(Value : Short_Short_Angle) return Short_Float renames Versed_Sine;

	function Versed_Cosine(Value : Short_Short_Angle) return Short_Float with Pure_Function;
	function vercos(Value : Short_Short_Angle) return Short_Float renames Versed_Cosine;

	function Coversed_Sine(Value : Short_Short_Angle) return Short_Float with Pure_Function;
	function coversin(Value : Short_Short_Angle) return Short_Float renames Coversed_Sine;

	function Coversed_Cosine(Value : Short_Short_Angle) return Short_Float with Pure_Function;
	function covercos(Value : Short_Short_Angle) return Short_Float renames Coversed_Cosine;

	function Halved_Versed_Sine(Value : Short_Short_Angle) return Short_Float with Pure_Function;
	function haversin(Value : Short_Short_Angle) return Short_Float renames Halved_Versed_Sine;

	function Halved_Versed_Cosine(Value : Short_Short_Angle) return Short_Float with Pure_Function;
	function havercos(Value : Short_Short_Angle) return Short_Float renames Halved_Versed_Cosine;

	function Halved_Coversed_Sine(Value : Short_Short_Angle) return Short_Float with Pure_Function;
	function hacoversin(Value : Short_Short_Angle) return Short_Float renames Halved_Coversed_Sine;

	function Halved_Coversed_Cosine(Value : Short_Short_Angle) return Short_Float with Pure_Function;
	function hacovercos(Value : Short_Short_Angle) return Short_Float renames Halved_Coversed_Cosine;

	function Arcsine(Value : Short_Float) return Short_Short_Angle with Pure_Function;
	function asine(Value : Short_Float) return Short_Short_Angle renames Arcsine;

	function Arccosine(Value : Short_Float) return Short_Short_Angle with Pure_Function;
	function acos(Value : Short_Float) return Short_Short_Angle renames Arcsine;

	function Arctangent(Y : Short_Float; X : Short_Float := 1.0) return Short_Short_Angle with Pure_Function;
	function atan(Y : Short_Float; X : Short_Float := 1.0) return Short_Short_Angle renames Arctangent;

	function Arccotangent(Y : Short_Float; X : Short_Float := 1.0) return Short_Short_Angle with Pure_Function;
	function acot(Y : Short_Float; X : Short_Float := 1.0) return Short_Short_Angle renames Arccotangent;

	-----------------
	-- Short Angle --
	-----------------

	type Short_Angle is mod 3_600 with Size => 16;
	--Represents an angle of no specific unit

	function To_Short_Angle(Value : Degree) return Short_Angle with Inline_Always, Pure_Function;

	function To_Short_Angle(Value : Gradian) return Short_Angle with Inline_Always, Pure_Function;

	function "+" is new Add_Unit_Unit(Degree, Short_Angle, To_Short_Angle) with Inline_Always, Pure_Function;

	function "+" is new Add_Unit_Angle(Degree, Short_Angle, To_Short_Angle) with Inline_Always, Pure_Function;

	function "+" is new Add_Angle_Unit(Degree, Short_Angle, To_Short_Angle) with Inline_Always, Pure_Function;

	function "+" is new Add_Unit_Unit(Gradian, Short_Angle, To_Short_Angle) with Inline_Always, Pure_Function;

	function "+" is new Add_Unit_Angle(Gradian, Short_Angle, To_Short_Angle) with Inline_Always, Pure_Function;

	function "+" is new Add_Angle_Unit(Gradian, Short_Angle, To_Short_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Unit_Unit(Degree, Short_Angle, To_Short_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Unit_Angle(Degree, Short_Angle, To_Short_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Angle_Unit(Degree, Short_Angle, To_Short_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Unit_Unit(Gradian, Short_Angle, To_Short_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Unit_Angle(Gradian, Short_Angle, To_Short_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Angle_Unit(Gradian, Short_Angle, To_Short_Angle) with Inline_Always, Pure_Function;

	function "*"(Left, Right : Short_Angle) return Short_Angle is abstract;

	function "/"(Left, Right : Short_Angle) return Short_Angle is abstract;

	function "not"(Value : Short_Angle) return Short_Angle is abstract;
	
	function "and"(Left, Right : Short_Angle) return Short_Angle is abstract;

	function "or"(Left, Right : Short_Angle) return Short_Angle is abstract;

	function "xor"(Left, Right : Short_Angle) return Short_Angle is abstract;

	function Sine(Value : Short_Angle) return Short_Float with Pure_Function;
	function sin(Value : Short_Angle) return Short_Float renames Sine;

	function Cosine(Value : Short_Angle) return Short_Float with Pure_Function;
	function cos(Value : Short_Angle) return Short_Float renames Cosine;

	function Tangent(Value : Short_Angle) return Short_Float with Pure_Function;
	function tan(Value : Short_Angle) return Short_Float renames Tangent;

	function Cotangent(Value : Short_Angle) return Short_Float with Pure_Function;
	function cot(Value : Short_Angle) return Short_Float renames Cotangent;

	function Versed_Sine(Value : Short_Angle) return Short_Float with Pure_Function;
	function versin(Value : Short_Angle) return Short_Float renames Versed_Sine;

	function Versed_Cosine(Value : Short_Angle) return Short_Float with Pure_Function;
	function vercos(Value : Short_Angle) return Short_Float renames Versed_Cosine;

	function Coversed_Sine(Value : Short_Angle) return Short_Float with Pure_Function;
	function coversin(Value : Short_Angle) return Short_Float renames Coversed_Sine;

	function Coversed_Cosine(Value : Short_Angle) return Short_Float with Pure_Function;
	function covercos(Value : Short_Angle) return Short_Float renames Coversed_Cosine;

	function Halved_Versed_Sine(Value : Short_Angle) return Short_Float with Pure_Function;
	function haversin(Value : Short_Angle) return Short_Float renames Halved_Versed_Sine;

	function Halved_Versed_Cosine(Value : Short_Angle) return Short_Float with Pure_Function;
	function havercos(Value : Short_Angle) return Short_Float renames Halved_Versed_Cosine;

	function Halved_Coversed_Sine(Value : Short_Angle) return Short_Float with Pure_Function;
	function hacoversin(Value : Short_Angle) return Short_Float renames Halved_Coversed_Sine;

	function Halved_Coversed_Cosine(Value : Short_Angle) return Short_Float with Pure_Function;
	function hacovercos(Value : Short_Angle) return Short_Float renames Halved_Coversed_Cosine;
	
	function Arcsine(Value : Short_Float) return Short_Angle with Pure_Function;
	function asine(Value : Short_Float) return Short_Angle renames Arcsine;

	function Arccosine(Value : Short_Float) return Short_Angle with Pure_Function;
	function acos(Value : Short_Float) return Short_Angle renames Arcsine;

	function Arctangent(Y : Short_Float; X : Short_Float := 1.0) return Short_Angle with Pure_Function;
	function atan(Y : Short_Float; X : Short_Float := 1.0) return Short_Angle renames Arctangent;

	function Arccotangent(Y : Short_Float; X : Short_Float := 1.0) return Short_Angle with Pure_Function;
	function acot(Y : Short_Float; X : Short_Float := 1.0) return Short_Angle renames Arccotangent;

	-----------
	-- Angle --
	-----------

	type Angle is mod 36_000 with Size => 32;
	--Represents an angle of no specific unit

	function To_Angle(Value : Degree) return Angle with Inline_Always, Pure_Function;

	function To_Angle(Value : Gradian) return Angle with Inline_Always, Pure_Function;

	function "+" is new Add_Unit_Unit(Degree, Angle, To_Angle) with Inline_Always, Pure_Function;

	function "+" is new Add_Unit_Angle(Degree, Angle, To_Angle) with Inline_Always, Pure_Function;

	function "+" is new Add_Angle_Unit(Degree, Angle, To_Angle) with Inline_Always, Pure_Function;

	function "+" is new Add_Unit_Unit(Gradian, Angle, To_Angle) with Inline_Always, Pure_Function;

	function "+" is new Add_Unit_Angle(Gradian, Angle, To_Angle) with Inline_Always, Pure_Function;

	function "+" is new Add_Angle_Unit(Gradian, Angle, To_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Unit_Unit(Degree, Angle, To_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Unit_Angle(Degree, Angle, To_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Angle_Unit(Degree, Angle, To_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Unit_Unit(Gradian, Angle, To_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Unit_Angle(Gradian, Angle, To_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Angle_Unit(Gradian, Angle, To_Angle) with Inline_Always, Pure_Function;

	function "*"(Left, Right : Angle) return Angle is abstract;

	function "/"(Left, Right : Angle) return Angle is abstract;

	function "not"(Value : Angle) return Angle is abstract;
	
	function "and"(Left, Right : Angle) return Angle is abstract;

	function "or"(Left, Right : Angle) return Angle is abstract;

	function "xor"(Left, Right : Angle) return Angle is abstract;

	function Sine(Value : Angle) return Float with Pure_Function;
	function sin(Value : Angle) return Float renames Sine;

	function Cosine(Value : Angle) return Float with Pure_Function;
	function cos(Value : Angle) return Float renames Cosine;

	function Tangent(Value : Angle) return Float with Pure_Function;
	function tan(Value : Angle) return Float renames Tangent;

	function Cotangent(Value : Angle) return Float with Pure_Function;
	function cot(Value : Angle) return Float renames Cotangent;

	function Versed_Sine(Value : Angle) return Float with Pure_Function;
	function versin(Value : Angle) return Float renames Versed_Sine;

	function Versed_Cosine(Value : Angle) return Float with Pure_Function;
	function vercos(Value : Angle) return Float renames Versed_Cosine;

	function Coversed_Sine(Value : Angle) return Float with Pure_Function;
	function coversin(Value : Angle) return Float renames Coversed_Sine;

	function Coversed_Cosine(Value : Angle) return Float with Pure_Function;
	function covercos(Value : Angle) return Float renames Coversed_Cosine;

	function Halved_Versed_Sine(Value : Angle) return Float with Pure_Function;
	function haversin(Value : Angle) return Float renames Halved_Versed_Sine;

	function Halved_Versed_Cosine(Value : Angle) return Float with Pure_Function;
	function havercos(Value : Angle) return Float renames Halved_Versed_Cosine;

	function Halved_Coversed_Sine(Value : Angle) return Float with Pure_Function;
	function hacoversin(Value : Angle) return Float renames Halved_Coversed_Sine;

	function Halved_Coversed_Cosine(Value : Angle) return Float with Pure_Function;
	function hacovercos(Value : Angle) return Float renames Halved_Coversed_Cosine;
	
	function Arcsine(Value : Float) return Angle with Pure_Function;
	function asine(Value : Float) return Angle renames Arcsine;

	function Arccosine(Value : Float) return Angle with Pure_Function;
	function acos(Value : Float) return Angle renames Arcsine;

	function Arctangent(Y : Float; X : Float := 1.0) return Angle with Pure_Function;
	function atan(Y : Float; X : Float := 1.0) return Angle renames Arctangent;

	function Arccotangent(Y : Float; X : Float := 1.0) return Angle with Pure_Function;
	function acot(Y : Float; X : Float := 1.0) return Angle renames Arccotangent;

	----------------
	-- Long Angle --
	----------------

	type Long_Angle is mod 36_000 with Size => 32;
	--Represents an angle of no specific unit

	function To_Long_Angle(Value : Degree) return Long_Angle with Inline_Always, Pure_Function;

	function To_Long_Angle(Value : Gradian) return Long_Angle with Inline_Always, Pure_Function;

	function "+" is new Add_Unit_Unit(Degree, Long_Angle, To_Long_Angle) with Inline_Always, Pure_Function;

	function "+" is new Add_Unit_Angle(Degree, Long_Angle, To_Long_Angle) with Inline_Always, Pure_Function;

	function "+" is new Add_Angle_Unit(Degree, Long_Angle, To_Long_Angle) with Inline_Always, Pure_Function;

	function "+" is new Add_Unit_Unit(Gradian, Long_Angle, To_Long_Angle) with Inline_Always, Pure_Function;

	function "+" is new Add_Unit_Angle(Gradian, Long_Angle, To_Long_Angle) with Inline_Always, Pure_Function;

	function "+" is new Add_Angle_Unit(Gradian, Long_Angle, To_Long_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Unit_Unit(Degree, Long_Angle, To_Long_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Unit_Angle(Degree, Long_Angle, To_Long_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Angle_Unit(Degree, Long_Angle, To_Long_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Unit_Unit(Gradian, Long_Angle, To_Long_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Unit_Angle(Gradian, Long_Angle, To_Long_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Angle_Unit(Gradian, Long_Angle, To_Long_Angle) with Inline_Always, Pure_Function;

	function "*"(Left, Right : Long_Angle) return Long_Angle is abstract;

	function "/"(Left, Right : Long_Angle) return Long_Angle is abstract;

	function "not"(Value : Long_Angle) return Long_Angle is abstract;
	
	function "and"(Left, Right : Long_Angle) return Long_Angle is abstract;

	function "or"(Left, Right : Long_Angle) return Long_Angle is abstract;

	function "xor"(Left, Right : Long_Angle) return Long_Angle is abstract;

	function Sine(Value : Long_Angle) return Long_Float with Pure_Function;
	function sin(Value : Long_Angle) return Long_Float renames Sine;

	function Cosine(Value : Long_Angle) return Long_Float with Pure_Function;
	function cos(Value : Long_Angle) return Long_Float renames Cosine;

	function Tangent(Value : Long_Angle) return Long_Float with Pure_Function;
	function tan(Value : Long_Angle) return Long_Float renames Tangent;

	function Cotangent(Value : Long_Angle) return Long_Float with Pure_Function;
	function cot(Value : Long_Angle) return Long_Float renames Cotangent;

	function Versed_Sine(Value : Long_Angle) return Long_Float with Pure_Function;
	function versin(Value : Long_Angle) return Long_Float renames Versed_Sine;

	function Versed_Cosine(Value : Long_Angle) return Long_Float with Pure_Function;
	function vercos(Value : Long_Angle) return Long_Float renames Versed_Cosine;

	function Coversed_Sine(Value : Long_Angle) return Long_Float with Pure_Function;
	function coversin(Value : Long_Angle) return Long_Float renames Coversed_Sine;

	function Coversed_Cosine(Value : Long_Angle) return Long_Float with Pure_Function;
	function covercos(Value : Long_Angle) return Long_Float renames Coversed_Cosine;

	function Halved_Versed_Sine(Value : Long_Angle) return Long_Float with Pure_Function;
	function haversin(Value : Long_Angle) return Long_Float renames Halved_Versed_Sine;

	function Halved_Versed_Cosine(Value : Long_Angle) return Long_Float with Pure_Function;
	function havercos(Value : Long_Angle) return Long_Float renames Halved_Versed_Cosine;

	function Halved_Coversed_Sine(Value : Long_Angle) return Long_Float with Pure_Function;
	function hacoversin(Value : Long_Angle) return Long_Float renames Halved_Coversed_Sine;

	function Halved_Coversed_Cosine(Value : Long_Angle) return Long_Float with Pure_Function;
	function hacovercos(Value : Long_Angle) return Long_Float renames Halved_Coversed_Cosine;
	
	function Arcsine(Value : Long_Float) return Long_Angle with Pure_Function;
	function asine(Value : Long_Float) return Long_Angle renames Arcsine;

	function Arccosine(Value : Long_Float) return Long_Angle with Pure_Function;
	function acos(Value : Long_Float) return Long_Angle renames Arcsine;

	function Arctangent(Y : Long_Float; X : Long_Float := 1.0) return Long_Angle with Pure_Function;
	function atan(Y : Long_Float; X : Long_Float := 1.0) return Long_Angle renames Arctangent;

	function Arccotangent(Y : Long_Float; X : Long_Float := 1.0) return Long_Angle with Pure_Function;
	function acot(Y : Long_Float; X : Long_Float := 1.0) return Long_Angle renames Arccotangent;

	---------------------
	-- Long Long Angle --
	---------------------

	type Long_Long_Angle is mod 36_000_000 with Size => 64;
	--Represents an angle of no specific unit

	function To_Long_Long_Angle(Value : Degree) return Long_Long_Angle with Inline_Always, Pure_Function;

	function To_Long_Long_Angle(Value : Gradian) return Long_Long_Angle with Inline_Always, Pure_Function;

	function "+" is new Add_Unit_Unit(Degree, Long_Long_Angle, To_Long_Long_Angle) with Inline_Always, Pure_Function;

	function "+" is new Add_Unit_Angle(Degree, Long_Long_Angle, To_Long_Long_Angle) with Inline_Always, Pure_Function;

	function "+" is new Add_Angle_Unit(Degree, Long_Long_Angle, To_Long_Long_Angle) with Inline_Always, Pure_Function;

	function "+" is new Add_Unit_Unit(Gradian, Long_Long_Angle, To_Long_Long_Angle) with Inline_Always, Pure_Function;

	function "+" is new Add_Unit_Angle(Gradian, Long_Long_Angle, To_Long_Long_Angle) with Inline_Always, Pure_Function;

	function "+" is new Add_Angle_Unit(Gradian, Long_Long_Angle, To_Long_Long_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Unit_Unit(Degree, Long_Long_Angle, To_Long_Long_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Unit_Angle(Degree, Long_Long_Angle, To_Long_Long_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Angle_Unit(Degree, Long_Long_Angle, To_Long_Long_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Unit_Unit(Gradian, Long_Long_Angle, To_Long_Long_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Unit_Angle(Gradian, Long_Long_Angle, To_Long_Long_Angle) with Inline_Always, Pure_Function;

	function "-" is new Subtract_Angle_Unit(Gradian, Long_Long_Angle, To_Long_Long_Angle) with Inline_Always, Pure_Function;

	function "*"(Left, Right : Long_Long_Angle) return Long_Long_Angle is abstract;

	function "/"(Left, Right : Long_Long_Angle) return Long_Long_Angle is abstract;

	function "not"(Value : Long_Long_Angle) return Long_Long_Angle is abstract;
	
	function "and"(Left, Right : Long_Long_Angle) return Long_Long_Angle is abstract;

	function "or"(Left, Right : Long_Long_Angle) return Long_Long_Angle is abstract;

	function "xor"(Left, Right : Long_Long_Angle) return Long_Long_Angle is abstract;

	function Sine(Value : Long_Long_Angle) return Long_Long_Float with Pure_Function;
	function sin(Value : Long_Long_Angle) return Long_Long_Float renames Sine;

	function Cosine(Value : Long_Long_Angle) return Long_Long_Float with Pure_Function;
	function cos(Value : Long_Long_Angle) return Long_Long_Float renames Cosine;

	function Tangent(Value : Long_Long_Angle) return Long_Long_Float with Pure_Function;
	function tan(Value : Long_Long_Angle) return Long_Long_Float renames Tangent;

	function Cotangent(Value : Long_Long_Angle) return Long_Long_Float with Pure_Function;
	function cot(Value : Long_Long_Angle) return Long_Long_Float renames Cotangent;

	function Versed_Sine(Value : Long_Long_Angle) return Long_Long_Float with Pure_Function;
	function versin(Value : Long_Long_Angle) return Long_Long_Float renames Versed_Sine;

	function Versed_Cosine(Value : Long_Long_Angle) return Long_Long_Float with Pure_Function;
	function vercos(Value : Long_Long_Angle) return Long_Long_Float renames Versed_Cosine;

	function Coversed_Sine(Value : Long_Long_Angle) return Long_Long_Float with Pure_Function;
	function coversin(Value : Long_Long_Angle) return Long_Long_Float renames Coversed_Sine;

	function Coversed_Cosine(Value : Long_Long_Angle) return Long_Long_Float with Pure_Function;
	function covercos(Value : Long_Long_Angle) return Long_Long_Float renames Coversed_Cosine;

	function Halved_Versed_Sine(Value : Long_Long_Angle) return Long_Long_Float with Pure_Function;
	function haversin(Value : Long_Long_Angle) return Long_Long_Float renames Halved_Versed_Sine;

	function Halved_Versed_Cosine(Value : Long_Long_Angle) return Long_Long_Float with Pure_Function;
	function havercos(Value : Long_Long_Angle) return Long_Long_Float renames Halved_Versed_Cosine;

	function Halved_Coversed_Sine(Value : Long_Long_Angle) return Long_Long_Float with Pure_Function;
	function hacoversin(Value : Long_Long_Angle) return Long_Long_Float renames Halved_Coversed_Sine;

	function Halved_Coversed_Cosine(Value : Long_Long_Angle) return Long_Long_Float with Pure_Function;
	function hacovercos(Value : Long_Long_Angle) return Long_Long_Float renames Halved_Coversed_Cosine;
	
	function Arcsine(Value : Long_Long_Float) return Long_Long_Angle with Pure_Function;
	function asine(Value : Long_Long_Float) return Long_Long_Angle renames Arcsine;

	function Arccosine(Value : Long_Long_Float) return Long_Long_Angle with Pure_Function;
	function acos(Value : Long_Long_Float) return Long_Long_Angle renames Arcsine;

	function Arctangent(Y : Long_Long_Float; X : Long_Long_Float := 1.0) return Long_Long_Angle with Pure_Function;
	function atan(Y : Long_Long_Float; X : Long_Long_Float := 1.0) return Long_Long_Angle renames Arctangent;

	function Arccotangent(Y : Long_Long_Float; X : Long_Long_Float := 1.0) return Long_Long_Angle with Pure_Function;
	function acot(Y : Long_Long_Float; X : Long_Long_Float := 1.0) return Long_Long_Angle renames Arccotangent;

	-----------------
	-- Conversions --
	-----------------
	
	function To_Degrees(Value : Short_Short_Angle) return Degree with Pure_Function;
	function To_Degrees(Value : Short_Angle) return Degree with Pure_Function;
	function To_Degrees(Value : Angle) return Degree with Pure_Function;
	function To_Degrees(Value : Long_Angle) return Degree with Pure_Function;
	function To_Degrees(Value : Long_Long_Angle) return Degree with Pure_Function;

	function To_Gradians(Value : Short_Short_Angle) return Gradian with Pure_Function;
	function To_Gradians(Value : Short_Angle) return Gradian with Pure_Function;
	function To_Gradians(Value : Angle) return Gradian with Pure_Function;
	function To_Gradians(Value : Long_Angle) return Gradian with Pure_Function;
	function To_Gradians(Value : Long_Long_Angle) return Gradian with Pure_Function;

end Mathematics.Angles;
