with Ada.Numerics.Generic_Elementary_Functions;

package body Mathematics.Angles is

	package Short_Elementary_Functions is new Ada.Numerics.Generic_Elementary_Functions(Short_Float);
	use Short_Elementary_Functions;
	
	package Elementary_Functions is new Ada.Numerics.Generic_Elementary_Functions(Float);
	use Elementary_Functions;

	package Long_Elementary_Functions is new Ada.Numerics.Generic_Elementary_Functions(Long_Float);
	use Long_Elementary_Functions;

	package Long_Long_Elementary_Functions is new Ada.Numerics.Generic_Elementary_Functions(Long_Long_Float);
	use Long_Long_Elementary_Functions;

	package Intrinsics is
	--Reimports various intrinsic operators that should be hidden publicly because they don't make semantic sense, but are necessary for these calculations
		--function "*"(Left, Right : Degree) return Degree with Import, Convention => Intrinsic;
		--function "*"(Left, Right : Gradian) return Gradian with Import, Convention => Intrinsic;
		function "*"(Left, Right : Short_Short_Angle) return Short_Short_Angle with Import, Convention => Intrinsic;
		function "*"(Left, Right : Short_Angle) return Short_Angle with Import, Convention => Intrinsic;
		function "*"(Left, Right : Angle) return Angle with Import, Convention => Intrinsic;
		function "*"(Left, Right : Long_Angle) return Long_Angle with Import, Convention => Intrinsic;
		function "*"(Left, Right : Long_Long_Angle) return Long_Long_Angle with Import, Convention => Intrinsic;
		--function "/"(Left, Right : Degree) return Degree with Import, Convention => Intrinsic;
		--function "/"(Left, Right : Gradian) return Gradian with Import, Convention => Intrinsic;
		function "/"(Left, Right : Short_Short_Angle) return Short_Short_Angle with Import, Convention => Intrinsic;
		function "/"(Left, Right : Short_Angle) return Short_Angle with Import, Convention => Intrinsic;
		function "/"(Left, Right : Angle) return Angle with Import, Convention => Intrinsic;
		function "/"(Left, Right : Long_Angle) return Long_Angle with Import, Convention => Intrinsic;
		function "/"(Left, Right : Long_Long_Angle) return Long_Long_Angle with Import, Convention => Intrinsic;
	end Intrinsics;

	------------
	-- Degree --
	------------

	function To_Short_Short_Angle(Value : Degree) return Short_Short_Angle is (Intrinsics."/"(Short_Short_Angle(Value), 2));

	function To_Short_Angle(Value : Degree) return Short_Angle is (Intrinsics."*"(Short_Angle(Value), 10));

	function To_Angle(Value : Degree) return Angle is (Intrinsics."*"(Angle(Value), 100));

	function To_Long_Angle(Value : Degree) return Long_Angle is (Intrinsics."*"(Long_Angle(Value), 100));

	function To_Long_Long_Angle(Value : Degree) return Long_Long_Angle is (Intrinsics."*"(Long_Long_Angle(Value), 100_000));

	-------------
	-- Gradian --
	-------------

	function To_Short_Short_Angle(Value : Gradian) return Short_Short_Angle is
	begin
		return Short_Short_Angle(Float(Value) * 0.45);
	end To_Short_Short_Angle;

	function To_Short_Angle(Value : Gradian) return Short_Angle is (Intrinsics."*"(Short_Angle(Value), 9));

	function To_Angle(Value : Gradian) return Angle is (Intrinsics."*"(Angle(Value), 90));

	function To_Long_Angle(Value : Gradian) return Long_Angle is (Intrinsics."*"(Long_Angle(Value), 90));

	function To_Long_Long_Angle(Value : Gradian) return Long_Long_Angle is (Intrinsics."*"(Long_Long_Angle(Value), 90_000));

	-----------------------
	-- Short Short Angle --
	-----------------------

	function Sine(Value : Short_Short_Angle) return Short_Float is
	begin
		return Short_Elementary_Functions.Sin(Short_Float(Value), 180.0);
	end Sine;

	function Cosine(Value : Short_Short_Angle) return Short_Float is
	begin
		return Short_Elementary_Functions.Cos(Short_Float(Value), 180.0);
	end Cosine;

	function Tangent(Value : Short_Short_Angle) return Short_Float is
	begin
		return Short_Elementary_Functions.Tan(Short_Float(Value), 180.0);
	end Tangent;

	function Cotangent(Value : Short_Short_Angle) return Short_Float is
	begin
		return Short_Elementary_Functions.Cot(Short_Float(Value), 180.0);
	end Cotangent;

	function Versed_Sine(Value : Short_Short_Angle) return Short_Float is
	begin
		return 1.0 - Cosine(Value);
	end Versed_Sine;

	function Versed_Cosine(Value : Short_Short_Angle) return Short_Float is
	begin
		return 1.0 + Cosine(Value);
	end Versed_Cosine;

	function Coversed_Sine(Value : Short_Short_Angle) return Short_Float is
	begin
		return 1.0 - Sine(Value);
	end Coversed_Sine;

	function Coversed_Cosine(Value : Short_Short_Angle) return Short_Float is
	begin
		return 1.0 + Sine(Value);
	end Coversed_Cosine;

	function Halved_Versed_Sine(Value : Short_Short_Angle) return Short_Float is
	begin
		return Versed_Sine(Value) / 2.0;
	end Halved_Versed_Sine;

	function Halved_Versed_Cosine(Value : Short_Short_Angle) return Short_Float is
	begin
		return Versed_Cosine(Value) / 2.0;
	end Halved_Versed_Cosine;

	function Halved_Coversed_Sine(Value : Short_Short_Angle) return Short_Float is
	begin
		return Coversed_Sine(Value) / 2.0;
	end Halved_Coversed_Sine;

	function Halved_Coversed_Cosine(Value : Short_Short_Angle) return Short_Float is
	begin
		return Coversed_Cosine(Value) / 2.0;
	end Halved_Coversed_Cosine;

	function Arcsine(Value : Short_Float) return Short_Short_Angle is
	begin
		return Short_Short_Angle(Short_Elementary_Functions.Arcsin(Value, 180.0));
	end Arcsine;

	function Arccosine(Value : Short_Float) return Short_Short_Angle is
	begin
		return Short_Short_Angle(Short_Elementary_Functions.Arccos(Value, 180.0));
	end Arccosine;

	function Arctangent(Y : Short_Float; X : Short_Float := 1.0) return Short_Short_Angle is
	begin
		return Short_Short_Angle(Short_Elementary_Functions.Arctan(Y, X, 180.0));
	end Arctangent;

	function Arccotangent(Y : Short_Float; X : Short_Float := 1.0) return Short_Short_Angle is
	begin
		return Short_Short_Angle(Short_Elementary_Functions.Arccot(Y, X, 180.0));
	end Arccotangent;

	function To_Degrees(Value : Short_Short_Angle) return Degree is
	begin
		return Degree((Float(Value) / Float(Short_Short_Angle'Last)) * Float(Float(Degree'Last)));
	end To_Degrees;

	function To_Gradians(Value : Short_Short_Angle) return Gradian is
	begin
		return Gradian((Float(Value) / Float(Short_Short_Angle'Last)) * Float(Float(Gradian'Last)));
	end To_Gradians;

	-----------------
	-- Short Angle --
	-----------------

	function Sine(Value : Short_Angle) return Short_Float is
	begin
		return Short_Elementary_Functions.Sin(Short_Float(Value), 3600.0);
	end Sine;

	function Cosine(Value : Short_Angle) return Short_Float is
	begin
		return Short_Elementary_Functions.Cos(Short_Float(Value), 3600.0);
	end Cosine;

	function Tangent(Value : Short_Angle) return Short_Float is
	begin
		return Short_Elementary_Functions.Tan(Short_Float(Value), 3600.0);
	end Tangent;

	function Cotangent(Value : Short_Angle) return Short_Float is
	begin
		return Short_Elementary_Functions.Cot(Short_Float(Value), 3600.0);
	end Cotangent;

	function Versed_Sine(Value : Short_Angle) return Short_Float is
	begin
		return 1.0 - Cosine(Value);
	end Versed_Sine;

	function Versed_Cosine(Value : Short_Angle) return Short_Float is
	begin
		return 1.0 + Cosine(Value);
	end Versed_Cosine;

	function Coversed_Sine(Value : Short_Angle) return Short_Float is
	begin
		return 1.0 - Sine(Value);
	end Coversed_Sine;

	function Coversed_Cosine(Value : Short_Angle) return Short_Float is
	begin
		return 1.0 + Sine(Value);
	end Coversed_Cosine;

	function Halved_Versed_Sine(Value : Short_Angle) return Short_Float is
	begin
		return Versed_Sine(Value) / 2.0;
	end Halved_Versed_Sine;

	function Halved_Versed_Cosine(Value : Short_Angle) return Short_Float is
	begin
		return Versed_Cosine(Value) / 2.0;
	end Halved_Versed_Cosine;

	function Halved_Coversed_Sine(Value : Short_Angle) return Short_Float is
	begin
		return Coversed_Sine(Value) / 2.0;
	end Halved_Coversed_Sine;

	function Halved_Coversed_Cosine(Value : Short_Angle) return Short_Float is
	begin
		return Coversed_Cosine(Value) / 2.0;
	end Halved_Coversed_Cosine;

	function Arcsine(Value : Short_Float) return Short_Angle is
	begin
		return Short_Angle(Short_Elementary_Functions.Arcsin(Value, 3600.0));
	end Arcsine;

	function Arccosine(Value : Short_Float) return Short_Angle is
	begin
		return Short_Angle(Short_Elementary_Functions.Arccos(Value, 3600.0));
	end Arccosine;

	function Arctangent(Y : Short_Float; X : Short_Float := 1.0) return Short_Angle is
	begin
		return Short_Angle(Short_Elementary_Functions.Arctan(Y, X, 3600.0));
	end Arctangent;

	function Arccotangent(Y : Short_Float; X : Short_Float := 1.0) return Short_Angle is
	begin
		return Short_Angle(Short_Elementary_Functions.Arccot(Y, X, 3600.0));
	end Arccotangent;

	function To_Degrees(Value : Short_Angle) return Degree is
	begin
		return Degree((Float(Value) / Float(Short_Angle'Last)) * Float(Degree'Last));
	end To_Degrees;

	function To_Gradians(Value : Short_Angle) return Gradian is
	begin
		return Gradian((Float(Value) / Float(Short_Angle'Last)) * Float(Gradian'Last));
	end To_Gradians;

	-----------
	-- Angle --
	-----------

	function Sine(Value : Angle) return Float is
	begin
		return Elementary_Functions.Sin(Float(Value), 36000.0);
	end Sine;

	function Cosine(Value : Angle) return Float is
	begin
		return Elementary_Functions.Cos(Float(Value), 36000.0);
	end Cosine;

	function Tangent(Value : Angle) return Float is
	begin
		return Elementary_Functions.Tan(Float(Value), 36000.0);
	end Tangent;

	function Cotangent(Value : Angle) return Float is
	begin
		return Elementary_Functions.Cot(Float(Value), 36000.0);
	end Cotangent;

	function Versed_Sine(Value : Angle) return Float is
	begin
		return 1.0 - Cosine(Value);
	end Versed_Sine;

	function Versed_Cosine(Value : Angle) return Float is
	begin
		return 1.0 + Cosine(Value);
	end Versed_Cosine;

	function Coversed_Sine(Value : Angle) return Float is
	begin
		return 1.0 - Sine(Value);
	end Coversed_Sine;

	function Coversed_Cosine(Value : Angle) return Float is
	begin
		return 1.0 + Sine(Value);
	end Coversed_Cosine;

	function Halved_Versed_Sine(Value : Angle) return Float is
	begin
		return Versed_Sine(Value) / 2.0;
	end Halved_Versed_Sine;

	function Halved_Versed_Cosine(Value : Angle) return Float is
	begin
		return Versed_Cosine(Value) / 2.0;
	end Halved_Versed_Cosine;

	function Halved_Coversed_Sine(Value : Angle) return Float is
	begin
		return Coversed_Sine(Value) / 2.0;
	end Halved_Coversed_Sine;

	function Halved_Coversed_Cosine(Value : Angle) return Float is
	begin
		return Coversed_Cosine(Value) / 2.0;
	end Halved_Coversed_Cosine;

	function Arcsine(Value : Float) return Angle is
	begin
		return Angle(Elementary_Functions.Arcsin(Value, 36000.0));
	end Arcsine;

	function Arccosine(Value : Float) return Angle is
	begin
		return Angle(Elementary_Functions.Arccos(Value, 36000.0));
	end Arccosine;

	function Arctangent(Y : Float; X : Float := 1.0) return Angle is
	begin
		return Angle(Elementary_Functions.Arctan(Y, X, 36000.0));
	end Arctangent;

	function Arccotangent(Y : Float; X : Float := 1.0) return Angle is
	begin
		return Angle(Elementary_Functions.Arccot(Y, X, 36000.0));
	end Arccotangent;

	function To_Degrees(Value : Angle) return Degree is
	begin
		return Degree((Float(Value) / 36000.0) * Float(Degree'Last));
	end To_Degrees;

	function To_Gradians(Value : Angle) return Gradian is
	begin
		return Gradian((Float(Value) / 36000.0) * Float(Gradian'Last));
	end To_Gradians;

	----------------
	-- Long Angle --
	----------------

	function Sine(Value : Long_Angle) return Long_Float is
	begin
		return Long_Elementary_Functions.Sin(Long_Float(Value), 36000.0);
	end Sine;

	function Cosine(Value : Long_Angle) return Long_Float is
	begin
		return Long_Elementary_Functions.Cos(Long_Float(Value), 36000.0);
	end Cosine;

	function Tangent(Value : Long_Angle) return Long_Float is
	begin
		return Long_Elementary_Functions.Tan(Long_Float(Value), 36000.0);
	end Tangent;

	function Cotangent(Value : Long_Angle) return Long_Float is
	begin
		return Long_Elementary_Functions.Cot(Long_Float(Value), 36000.0);
	end Cotangent;

	function Versed_Sine(Value : Long_Angle) return Long_Float is
	begin
		return 1.0 - Cosine(Value);
	end Versed_Sine;

	function Versed_Cosine(Value : Long_Angle) return Long_Float is
	begin
		return 1.0 + Cosine(Value);
	end Versed_Cosine;

	function Coversed_Sine(Value : Long_Angle) return Long_Float is
	begin
		return 1.0 - Sine(Value);
	end Coversed_Sine;

	function Coversed_Cosine(Value : Long_Angle) return Long_Float is
	begin
		return 1.0 + Sine(Value);
	end Coversed_Cosine;

	function Halved_Versed_Sine(Value : Long_Angle) return Long_Float is
	begin
		return Versed_Sine(Value) / 2.0;
	end Halved_Versed_Sine;

	function Halved_Versed_Cosine(Value : Long_Angle) return Long_Float is
	begin
		return Versed_Cosine(Value) / 2.0;
	end Halved_Versed_Cosine;

	function Halved_Coversed_Sine(Value : Long_Angle) return Long_Float is
	begin
		return Coversed_Sine(Value) / 2.0;
	end Halved_Coversed_Sine;

	function Halved_Coversed_Cosine(Value : Long_Angle) return Long_Float is
	begin
		return Coversed_Cosine(Value) / 2.0;
	end Halved_Coversed_Cosine;

	function Arcsine(Value : Long_Float) return Long_Angle is
	begin
		return Long_Angle(Long_Elementary_Functions.Arcsin(Value, 36000.0));
	end Arcsine;

	function Arccosine(Value : Long_Float) return Long_Angle is
	begin
		return Long_Angle(Long_Elementary_Functions.Arccos(Value, 36000.0));
	end Arccosine;

	function Arctangent(Y : Long_Float; X : Long_Float := 1.0) return Long_Angle is
	begin
		return Long_Angle(Long_Elementary_Functions.Arctan(Y, X, 36000.0));
	end Arctangent;

	function Arccotangent(Y : Long_Float; X : Long_Float := 1.0) return Long_Angle is
	begin
		return Long_Angle(Long_Elementary_Functions.Arccot(Y, X, 36000.0));
	end Arccotangent;

	function To_Degrees(Value : Long_Angle) return Degree is
	begin
		return Degree((Float(Value) / Float(Long_Long_Angle'Last)) * Float(Degree'Last));
	end To_Degrees;

	function To_Gradians(Value : Long_Angle) return Gradian is
	begin
		return Gradian((Float(Value) / Float(Long_Angle'Last)) * Float(Gradian'Last));
	end To_Gradians;

	---------------------
	-- Long Long Angle --
	---------------------

	function Sine(Value : Long_Long_Angle) return Long_Long_Float is
	begin
		return Long_Long_Elementary_Functions.Sin(Long_Long_Float(Value), 36000000.0);
	end Sine;

	function Cosine(Value : Long_Long_Angle) return Long_Long_Float is
	begin
		return Long_Long_Elementary_Functions.Cos(Long_Long_Float(Value), 36000000.0);
	end Cosine;

	function Tangent(Value : Long_Long_Angle) return Long_Long_Float is
	begin
		return Long_Long_Elementary_Functions.Tan(Long_Long_Float(Value), 36000000.0);
	end Tangent;

	function Cotangent(Value : Long_Long_Angle) return Long_Long_Float is
	begin
		return Long_Long_Elementary_Functions.Cot(Long_Long_Float(Value), 36000000.0);
	end Cotangent;

	function Versed_Sine(Value : Long_Long_Angle) return Long_Long_Float is
	begin
		return 1.0 - Cosine(Value);
	end Versed_Sine;

	function Versed_Cosine(Value : Long_Long_Angle) return Long_Long_Float is
	begin
		return 1.0 + Cosine(Value);
	end Versed_Cosine;

	function Coversed_Sine(Value : Long_Long_Angle) return Long_Long_Float is
	begin
		return 1.0 - Sine(Value);
	end Coversed_Sine;

	function Coversed_Cosine(Value : Long_Long_Angle) return Long_Long_Float is
	begin
		return 1.0 + Sine(Value);
	end Coversed_Cosine;

	function Halved_Versed_Sine(Value : Long_Long_Angle) return Long_Long_Float is
	begin
		return Versed_Sine(Value) / 2.0;
	end Halved_Versed_Sine;

	function Halved_Versed_Cosine(Value : Long_Long_Angle) return Long_Long_Float is
	begin
		return Versed_Cosine(Value) / 2.0;
	end Halved_Versed_Cosine;

	function Halved_Coversed_Sine(Value : Long_Long_Angle) return Long_Long_Float is
	begin
		return Coversed_Sine(Value) / 2.0;
	end Halved_Coversed_Sine;

	function Halved_Coversed_Cosine(Value : Long_Long_Angle) return Long_Long_Float is
	begin
		return Coversed_Cosine(Value) / 2.0;
	end Halved_Coversed_Cosine;

	function Arcsine(Value : Long_Long_Float) return Long_Long_Angle is
	begin
		return Long_Long_Angle(Long_Long_Elementary_Functions.Arcsin(Value, 36000000.0));
	end Arcsine;

	function Arccosine(Value : Long_Long_Float) return Long_Long_Angle is
	begin
		return Long_Long_Angle(Long_Long_Elementary_Functions.Arccos(Value, 36000000.0));
	end Arccosine;

	function Arctangent(Y : Long_Long_Float; X : Long_Long_Float := 1.0) return Long_Long_Angle is
	begin
		return Long_Long_Angle(Long_Long_Elementary_Functions.Arctan(Y, X, 36000000.0));
	end Arctangent;

	function Arccotangent(Y : Long_Long_Float; X : Long_Long_Float := 1.0) return Long_Long_Angle is
	begin
		return Long_Long_Angle(Long_Long_Elementary_Functions.Arccot(Y, X, 36000000.0));
	end Arccotangent;

	function To_Degrees(Value : Long_Long_Angle) return Degree is
	begin
		return Degree((Float(Value) / Float(Long_Long_Angle'Last)) * Float(Degree'Last));
	end To_Degrees;

	function To_Gradians(Value : Long_Long_Angle) return Gradian is
	begin
		return Gradian((Float(Value) / Float(Long_Long_Angle'Last)) * Float(Gradian'Last));
	end To_Gradians;

end Mathematics.Angles;
