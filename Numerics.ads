with Generics.Numerics;
use Generics.Numerics;

package Numerics with Pure, Remote_Types is
--@description Provides numeric types that are not included in Standard
--@version 1.0

	-------------------------
	-- Short Short Integer --
	-------------------------

	subtype Short_Short_Natural is Short_Short_Integer range 0 .. Short_Short_Integer'Last;
	subtype Short_Short_Positive is Short_Short_Integer range 1 .. Short_Short_Integer'Last;
	subtype Short_Short_Negative is Short_Short_Integer range Short_Short_Integer'First .. -1;
	subtype Short_Short_Even is Short_Short_Integer with Dynamic_Predicate => Short_Short_Even mod 2 = 0;
	subtype Short_Short_Odd is Short_Short_Integer with Dynamic_Predicate => Short_Short_Odd mod 2 /= 0;

	function Image(Value : Short_Short_Integer) return String renames Short_Short_Integer'Image;
	function Wide_Image(Value : Short_Short_Integer) return Wide_String renames Short_Short_Integer'Wide_Image;
	function Wide_Wide_Image(Value : Short_Short_Integer) return Wide_Wide_String renames Short_Short_Integer'Wide_Wide_Image;

	-------------------
	-- Short Integer --
	-------------------

	subtype Short_Natural is Short_Integer range 0 .. Short_Integer'Last;
	subtype Short_Positive is Short_Integer range 1 .. Short_Integer'Last;
	subtype Short_Negative is Short_Integer range Short_Integer'First .. -1;
	subtype Short_Even is Short_Integer with Dynamic_Predicate => Short_Even mod 2 = 0;
	subtype Short_Odd is Short_Integer with Dynamic_Predicate => Short_Odd mod 2 /= 0;

	function Image(Value : Short_Integer) return String renames Short_Integer'Image;
	function Wide_Image(Value : Short_Integer) return Wide_String renames Short_Integer'Wide_Image;
	function Wide_Wide_Image(Value : Short_Integer) return Wide_Wide_String renames Short_Integer'Wide_Wide_Image;

	-------------
	-- Integer --
	-------------

	subtype Negative is Integer range Integer'First .. -1;
	subtype Even is Integer with Dynamic_Predicate => Even mod 2 = 0;
	subtype Odd is Integer with Dynamic_Predicate => Odd mod 2 /= 0;

	function Image(Value : Integer) return String renames Integer'Image;
	function Wide_Image(Value : Integer) return Wide_String renames Integer'Wide_Image;
	function Wide_Wide_Image(Value : Integer) return Wide_Wide_String renames Integer'Wide_Wide_Image;

	------------------
	-- Long Integer --
	------------------

	subtype Long_Natural is Long_Integer range 0 .. Long_Integer'Last;
	subtype Long_Positive is Long_Integer range 1 .. Long_Integer'Last;
	subtype Long_Negative is Long_Integer range Long_Integer'First .. -1;
	subtype Long_Even is Long_Integer with Dynamic_Predicate => Long_Even mod 2 = 0;
	subtype Long_Odd is Long_Integer with Dynamic_Predicate => Long_Odd mod 2 /= 0;

	function Image(Value : Long_Integer) return String renames Long_Integer'Image;
	function Wide_Image(Value : Long_Integer) return Wide_String renames Long_Integer'Wide_Image;
	function Wide_Wide_Image(Value : Long_Integer) return Wide_Wide_String renames Long_Integer'Wide_Wide_Image;

	-----------------------
	-- Long Long Integer --
	-----------------------

	subtype Long_Long_Natural is Long_Long_Integer range 0 .. Long_Long_Integer'Last;
	subtype Long_Long_Positive is Long_Long_Integer range 1 .. Long_Long_Integer'Last;
	subtype Long_Long_Negative is Long_Long_Integer range Long_Long_Integer'First .. -1;
	subtype Long_Long_Even is Long_Long_Integer with Dynamic_Predicate => Long_Long_Even mod 2 = 0;
	subtype Long_Long_Odd is Long_Long_Integer with Dynamic_Predicate => Long_Long_Odd mod 2 /= 0;

	function Image(Value : Long_Long_Integer) return String renames Long_Long_Integer'Image;
	function Wide_Image(Value : Long_Long_Integer) return Wide_String renames Long_Long_Integer'Wide_Image;
	function Wide_Wide_Image(Value : Long_Long_Integer) return Wide_Wide_String renames Long_Long_Integer'Wide_Wide_Image;

	-------------------------
	-- Short Short Modular --
	-------------------------

	type Short_Short_Modular is mod 2**Short_Short_Integer'Size;

	function Image(Value : Short_Short_Modular) return String renames Short_Short_Modular'Image;
	function Wide_Image(Value : Short_Short_Modular) return Wide_String renames Short_Short_Modular'Wide_Image;
	function Wide_Wide_Image(Value : Short_Short_Modular) return Wide_Wide_String renames Short_Short_Modular'Wide_Wide_Image;

	-------------------
	-- Short Modular --
	-------------------

	type Short_Modular is mod 2**Short_Integer'Size;

	function Image(Value : Short_Modular) return String renames Short_Modular'Image;
	function Wide_Image(Value : Short_Modular) return Wide_String renames Short_Modular'Wide_Image;
	function Wide_Wide_Image(Value : Short_Modular) return Wide_Wide_String renames Short_Modular'Wide_Wide_Image;

	-------------
	-- Modular --
	-------------

	type Modular is mod 2**Integer'Size;

	function Image(Value : Modular) return String renames Modular'Image;
	function Wide_Image(Value : Modular) return Wide_String renames Modular'Wide_Image;
	function Wide_Wide_Image(Value : Modular) return Wide_Wide_String renames Modular'Wide_Wide_Image;

	------------------
	-- Long Modular --
	------------------

	type Long_Modular is mod 2**Long_Integer'Size;

	function Image(Value : Long_Modular) return String renames Long_Modular'Image;
	function Wide_Image(Value : Long_Modular) return Wide_String renames Long_Modular'Wide_Image;
	function Wide_Wide_Image(Value : Long_Modular) return Wide_Wide_String renames Long_Modular'Wide_Wide_Image;

	-----------------------
	-- Long Long Modular --
	-----------------------

	type Long_Long_Modular is mod 2**Long_Long_Integer'Size;

	function Image(Value : Long_Long_Modular) return String renames Long_Long_Modular'Image;
	function Wide_Image(Value : Long_Long_Modular) return Wide_String renames Long_Long_Modular'Wide_Image;
	function Wide_Wide_Image(Value : Long_Long_Modular) return Wide_Wide_String renames Long_Long_Modular'Wide_Wide_Image;

	-----------------------
	-- Short Short Fixed --
	-----------------------

	type Short_Short_Fixed is delta 2.0/(2**Short_Short_Integer'Size) range Float(Short_Short_Integer'First) .. Float(Short_Short_Integer'Last);

	function Truncate is new Fixed_Truncate(Short_Short_Fixed);

	function Ceiling is new Fixed_Ceiling(Short_Short_Fixed);

	function Floor is new Fixed_Floor(Short_Short_Fixed);

	function "mod" is new Fixed_Modulus(Short_Short_Fixed);

	function "rem" is new Fixed_Remainder(Short_Short_Fixed);

	function Image(Value : Short_Short_Fixed) return String renames Short_Short_Fixed'Image;
	function Wide_Image(Value : Short_Short_Fixed) return Wide_String renames Short_Short_Fixed'Wide_Image;
	function Wide_Wide_Image(Value : Short_Short_Fixed) return Wide_Wide_String renames Short_Short_Fixed'Wide_Wide_Image;

	-----------------
	-- Short Fixed --
	-----------------

	type Short_Fixed is delta 2.0/(2**Short_Integer'Size) range Float(Short_Integer'First) .. Float(Short_Integer'Last);

	function Truncate is new Fixed_Truncate(Short_Fixed);

	function Ceiling is new Fixed_Ceiling(Short_Fixed);

	function Floor is new Fixed_Floor(Short_Fixed);

	function "mod" is new Fixed_Modulus(Short_Fixed);

	function "rem" is new Fixed_Remainder(Short_Fixed);

	function Image(Value : Short_Fixed) return String renames Short_Fixed'Image;
	function Wide_Image(Value : Short_Fixed) return Wide_String renames Short_Fixed'Wide_Image;
	function Wide_Wide_Image(Value : Short_Fixed) return Wide_Wide_String renames Short_Fixed'Wide_Wide_Image;

	-----------
	-- Fixed --
	-----------

	type Fixed is delta 2.0/(2**Integer'Size) range Float(Integer'First) .. Float(Integer'Last);

	function Truncate is new Fixed_Truncate(Fixed);

	function Ceiling is new Fixed_Ceiling(Fixed);

	function Floor is new Fixed_Floor(Fixed);

	function "mod" is new Fixed_Modulus(Fixed);

	function "rem" is new Fixed_Remainder(Fixed);

	function Image(Value : Fixed) return String renames Fixed'Image;
	function Wide_Image(Value : Fixed) return Wide_String renames Fixed'Wide_Image;
	function Wide_Wide_Image(Value : Fixed) return Wide_Wide_String renames Fixed'Wide_Wide_Image;

	----------------
	-- Long Fixed --
	----------------

	type Long_Fixed is delta 2.0/(Long_Integer'Size) range Float(Integer'First) .. Float(Integer'Last);

	function Truncate is new Fixed_Truncate(Long_Fixed);

	function Ceiling is new Fixed_Ceiling(Long_Fixed);

	function Floor is new Fixed_Floor(Long_Fixed);

	function "mod" is new Fixed_Modulus(Long_Fixed);

	function "rem" is new Fixed_Remainder(Long_Fixed);

	function Image(Value : Long_Fixed) return String renames Long_Fixed'Image;
	function Wide_Image(Value : Long_Fixed) return Wide_String renames Long_Fixed'Wide_Image;
	function Wide_Wide_Image(Value : Long_Fixed) return Wide_Wide_String renames Long_Fixed'Wide_Wide_Image;

	-------------------
	-- Short Decimal --
	-------------------

	type Short_Decimal is delta 10.0**(-Short_Float'Digits/2) digits Short_Float'Digits;

	function Truncate is new Decimal_Truncate(Short_Decimal);

	function Ceiling is new Decimal_Ceiling(Short_Decimal);

	function Floor is new Decimal_Floor(Short_Decimal);

	function "mod" is new Decimal_Modulus(Short_Decimal);

	function "rem" is new Decimal_Remainder(Short_Decimal);

	function Image(Value : Short_Decimal) return String renames Short_Decimal'Image;
	function Wide_Image(Value : Short_Decimal) return Wide_String renames Short_Decimal'Wide_Image;
	function Wide_Wide_Image(Value : Short_Decimal) return Wide_Wide_String renames Short_Decimal'Wide_Wide_Image;

	-------------
	-- Decimal --
	-------------

	type Decimal is delta 10.0**(-Float'Digits/2) digits Float'Digits;

	function Truncate is new Decimal_Truncate(Decimal);

	function Ceiling is new Decimal_Ceiling(Decimal);

	function Floor is new Decimal_Floor(Decimal);

	function "mod" is new Decimal_Modulus(Decimal);

	function "rem" is new Decimal_Remainder(Decimal);

	function Image(Value : Decimal) return String renames Decimal'Image;
	function Wide_Image(Value : Decimal) return Wide_String renames Decimal'Wide_Image;
	function Wide_Wide_Image(Value : Decimal) return Wide_Wide_String renames Decimal'Wide_Wide_Image;

	------------------
	-- Long Decimal --
	------------------

	type Long_Decimal is delta 10.0**(-Long_Float'Digits/2) digits Long_Float'Digits;

	function Truncate is new Decimal_Truncate(Long_Decimal);

	function Ceiling is new Decimal_Ceiling(Long_Decimal);

	function Floor is new Decimal_Floor(Long_Decimal);

	function "mod" is new Decimal_Modulus(Long_Decimal);

	function "rem" is new Decimal_Remainder(Long_Decimal);

	function Image(Value : Long_Decimal) return String renames Long_Decimal'Image;
	function Wide_Image(Value : Long_Decimal) return Wide_String renames Long_Decimal'Wide_Image;
	function Wide_Wide_Image(Value : Long_Decimal) return Wide_Wide_String renames Long_Decimal'Wide_Wide_Image;

	-----------------------
	-- Long Long Decimal --
	-----------------------

	type Long_Long_Decimal is delta 10.0**(-Long_Long_Float'Digits/2) digits Long_Long_Float'Digits;

	function Truncate is new Decimal_Truncate(Long_Long_Decimal);

	function Ceiling is new Decimal_Ceiling(Long_Long_Decimal);

	function Floor is new Decimal_Floor(Long_Long_Decimal);

	function "mod" is new Decimal_Modulus(Long_Long_Decimal);

	function "rem" is new Decimal_Remainder(Long_Long_Decimal);

	function Image(Value : Long_Long_Decimal) return String renames Long_Long_Decimal'Image;
	function Wide_Image(Value : Long_Long_Decimal) return Wide_String renames Long_Long_Decimal'Wide_Image;
	function Wide_Wide_Image(Value : Long_Long_Decimal) return Wide_Wide_String renames Long_Long_Decimal'Wide_Wide_Image;

	-----------------
	-- Short Float --
	-----------------

	function Truncate is new Float_Truncate(Short_Float);

	function Ceiling is new Float_Ceiling(Short_Float);

	function Floor is new Float_Floor(Short_Float);

	function "mod" is new Float_Modulus(Short_Float);

	function "rem" is new Float_Remainder(Short_Float);

	function Image(Value : Short_Float) return String renames Short_Float'Image;
	function Wide_Image(Value : Short_Float) return Wide_String renames Short_Float'Wide_Image;
	function Wide_Wide_Image(Value : Short_Float) return Wide_Wide_String renames Short_Float'Wide_Wide_Image;

	-----------
	-- Float --
	-----------

	function Truncate is new Float_Truncate(Float);

	function Ceiling is new Float_Ceiling(Float);

	function Floor is new Float_Floor(Float);

	function "mod" is new Float_Modulus(Float);

	function "rem" is new Float_Remainder(Float);

	function Image(Value : Float) return String renames Float'Image;
	function Wide_Image(Value : Float) return Wide_String renames Float'Wide_Image;
	function Wide_Wide_Image(Value : Float) return Wide_Wide_String renames Float'Wide_Wide_Image;

	----------------
	-- Long Float --
	----------------

	function Truncate is new Float_Truncate(Long_Float);

	function Ceiling is new Float_Ceiling(Long_Float);

	function Floor is new Float_Floor(Long_Float);

	function "mod" is new Float_Modulus(Long_Float);

	function "rem" is new Float_Remainder(Long_Float);

	function Image(Value : Long_Float) return String renames Long_Float'Image;
	function Wide_Image(Value : Long_Float) return Wide_String renames Long_Float'Wide_Image;
	function Wide_Wide_Image(Value : Long_Float) return Wide_Wide_String renames Long_Float'Wide_Wide_Image;

	---------------------
	-- Long Long Float --
	---------------------

	function Truncate is new Float_Truncate(Long_Long_Float);

	function Ceiling is new Float_Ceiling(Long_Long_Float);

	function Floor is new Float_Floor(Long_Long_Float);

	function "mod" is new Float_Modulus(Long_Long_Float);

	function "rem" is new Float_Remainder(Long_Long_Float);

	function Image(Value : Long_Long_Float) return String renames Long_Long_Float'Image;
	function Wide_Image(Value : Long_Long_Float) return Wide_String renames Long_Long_Float'Wide_Image;
	function Wide_Wide_Image(Value : Long_Long_Float) return Wide_Wide_String renames Long_Long_Float'Wide_Wide_Image;

end Numerics;
