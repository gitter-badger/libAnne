with Numerics;
use Numerics;

package Generics.Mathematics with Pure is
--@Description Provides generic versions of functions used in Mathematics
--@Version 1.0

	generic
		type Integer_Type is range <>;
	function Greatest_Common_Divisor(A, B : in Integer_Type) return Integer_Type;
	--Calculates the greatest common divisor of A and B

	generic
		type Integer_Type is range <>;
	function Least_Common_Multiple(A, B : in Integer_Type) return Integer_Type;
	--Calculates the least common multiple of A and B

end Generics.Mathematics;
