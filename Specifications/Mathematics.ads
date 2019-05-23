with Numerics;
use Numerics;

package Mathematics with Pure is
--@Description Provides basic mathematics functions

	pi : constant := 3.141_592_653_589_793_238_462_643_383_279;
	π : constant := pi;

	e : constant := 2.718_281_828_459_045_235_360_287_471_352;

	-----------------------------
	-- Greatest Common Divisor --
	-----------------------------

	function Greatest_Common_Divisor(A, B : in Short_Short_Integer) return Short_Short_Integer with Pure_Function;
	--Calculates the greatest common divisor of A and B

	function GCD(A, B : in Short_Short_Integer) return Short_Short_Integer renames Mathematics.Greatest_Common_Divisor;
	--Calculates the greatest common divisor of A and B

	function Greatest_Common_Divisor(A, B : in Short_Integer) return Short_Integer with Pure_Function;
	--Calculates the greatest common divisor of A and B

	function GCD(A, B : in Short_Integer) return Short_Integer renames Mathematics.Greatest_Common_Divisor;
	--Calculates the greatest common divisor of A and B

	function Greatest_Common_Divisor(A, B : in Integer) return Integer with Pure_Function;
	--Calculates the greatest common divisor of A and B

	function GCD(A, B : in Integer) return Integer renames Mathematics.Greatest_Common_Divisor;
	--Calculates the greatest common divisor of A and B

	function Greatest_Common_Divisor(A, B : in Long_Integer) return Long_Integer with Pure_Function;
	--Calculates the greatest common divisor of A and B

	function GCD(A, B : in Long_Integer) return Long_Integer renames Mathematics.Greatest_Common_Divisor;
	--Calculates the greatest common divisor of A and B

	function Greatest_Common_Divisor(A, B : in Long_Long_Integer) return Long_Long_Integer with Pure_Function;
	--Calculates the greatest common divisor of A and B

	function GCD(A, B : in Long_Long_Integer) return Long_Long_Integer renames Mathematics.Greatest_Common_Divisor;
	--Calculates the greatest common divisor of A and B

	---------------------------
	-- Least Common Multiple --
	---------------------------

	function Least_Common_Multiple(A, B : in Short_Short_Integer) return Short_Short_Integer with Pure_Function;
	--Calculates the least common multiple of A and B

	function LCM(A, B : in Short_Short_Integer) return Short_Short_Integer renames Mathematics.Least_Common_Multiple;
	--Calculates the least common multiple of A and B

	function Least_Common_Multiple(A, B : in Short_Integer) return Short_Integer with Pure_Function;
	--Calculates the least common multiple of A and B

	function LCM(A, B : in Short_Integer) return Short_Integer renames Mathematics.Least_Common_Multiple;
	--Calculates the least common multiple of A and B

	function Least_Common_Multiple(A, B : in Integer) return Integer with Pure_Function;
	--Calculates the least common multiple of A and B

	function LCM(A, B : in Integer) return Integer renames Mathematics.Least_Common_Multiple;
	--Calculates the least common multiple of A and B

	function Least_Common_Multiple(A, B : in Long_Integer) return Long_Integer with Pure_Function;
	--Calculates the least common multiple of A and B

	function LCM(A, B : in Long_Integer) return Long_Integer renames Mathematics.Least_Common_Multiple;
	--Calculates the least common multiple of A and B

	function Least_Common_Multiple(A, B : in Long_Long_Integer) return Long_Long_Integer with Pure_Function;
	--Calculates the least common multiple of A and B

	function LCM(A, B : in Long_Long_Integer) return Long_Long_Integer renames Mathematics.Least_Common_Multiple;
	--Calculates the least common multiple of A and B

end Mathematics;
