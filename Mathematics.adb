with Generics.Mathematics;
use Generics.Mathematics;

package body Mathematics is

	-----------------------------
	-- Greatest Common Divisor --
	-----------------------------

	function Greatest_Common_Divisor(A, B : in Short_Short_Integer) return Short_Short_Integer is
		function GCD is new Generics.Mathematics.Greatest_Common_Divisor(Short_Short_Integer);
	begin
		return GCD(A, B);
	end Greatest_Common_Divisor;

	function Greatest_Common_Divisor(A, B : in Short_Integer) return Short_Integer is
		function GCD is new Generics.Mathematics.Greatest_Common_Divisor(Short_Integer);
	begin
		return GCD(A, B);
	end Greatest_Common_Divisor;

	function Greatest_Common_Divisor(A, B : in Integer) return Integer is
		function GCD is new Generics.Mathematics.Greatest_Common_Divisor(Integer);
	begin
		return GCD(A, B);
	end Greatest_Common_Divisor;

	function Greatest_Common_Divisor(A, B : in Long_Integer) return Long_Integer is
		function GCD is new Generics.Mathematics.Greatest_Common_Divisor(Long_Integer);
	begin
		return GCD(A, B);
	end Greatest_Common_Divisor;

	function Greatest_Common_Divisor(A, B : in Long_Long_Integer) return Long_Long_Integer is
		function GCD is new Generics.Mathematics.Greatest_Common_Divisor(Long_Long_Integer);
	begin
		return GCD(A, B);
	end Greatest_Common_Divisor;

	---------------------------
	-- Least Common Multiple --
	---------------------------

	function Least_Common_Multiple(A, B : in Short_Short_Integer) return Short_Short_Integer is
		function LCM is new Generics.Mathematics.Least_Common_Multiple(Short_Short_Integer);
	begin
		return LCM(A, B);
	end Least_Common_Multiple;

	function Least_Common_Multiple(A, B : in Short_Integer) return Short_Integer is
		function LCM is new Generics.Mathematics.Least_Common_Multiple(Short_Integer);
	begin
		return LCM(A, B);
	end Least_Common_Multiple;

	function Least_Common_Multiple(A, B : in Integer) return Integer is
		function LCM is new Generics.Mathematics.Least_Common_Multiple(Integer);
	begin
		return LCM(A, B);
	end Least_Common_Multiple;

	function Least_Common_Multiple(A, B : in Long_Integer) return Long_Integer is
		function LCM is new Generics.Mathematics.Least_Common_Multiple(Long_Integer);
	begin
		return LCM(A, B);
	end Least_Common_Multiple;

	function Least_Common_Multiple(A, B : in Long_Long_Integer) return Long_Long_Integer is
		function LCM is new Generics.Mathematics.Least_Common_Multiple(Long_Long_Integer);
	begin
		return LCM(A, B);
	end Least_Common_Multiple;

end Mathematics;
