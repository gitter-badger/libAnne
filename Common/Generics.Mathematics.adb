package body Generics.Mathematics is
	
	function Greatest_Common_Divisor(A, B : in Integer_Type) return Integer_Type is
		M : Integer_Type := A;
		N : Integer_Type := B;
		T : Integer_Type;
	begin
		while N /= 0 loop
			T := M;
			M := N;
			N := T mod N;
		end loop;
		return M;
	end Greatest_Common_Divisor;
	
	function Least_Common_Multiple(A, B : in Integer_Type) return Integer_Type is
		function GCD is new Greatest_Common_Divisor(Integer_Type);
	begin
		if A = 0 or B = 0 then
			return 0;
		end if;
		return abs(A) * (abs(B) / GCD(A, B));
	end Least_Common_Multiple;

end Generics.Mathematics;
