package body Generics.Text.Handling is

	function Is_All_Of(Str : String_Type) return Boolean is
	begin
		for S of Str loop
			if not Is_Of(S) then
				return False;
			end if;
		end loop;
		return True;
	end Is_All_Of;

	function Is_Any_Of(Str : String_Type) return Boolean is
	begin
		for S of Str loop
			if Is_Of(S) then
				return True;
			end if;
		end loop;
		return False;
	end Is_Any_Of;

end Generics.Text.Handling;