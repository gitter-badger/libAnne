with Ada.Strings.Unbounded, Ada.Strings.Wide_Unbounded, Ada.Strings.Wide_Wide_Unbounded;
use Ada.Strings.Unbounded, Ada.Strings.Wide_Unbounded, Ada.Strings.Wide_Wide_Unbounded;

package body Containers.Lists.Doubly_Linked.IO is

	----------
	-- Node --
	----------

	function Image(Self : in Node) return String is (Image(Self.Value));

	function Wide_Image(Self : in Node) return Wide_String is (Wide_Image(Self.Value));

	function Wide_Wide_Image(Self : in Node) return Wide_Wide_String is (Wide_Wide_Image(Self.Value));
	
	----------
	-- List --
	----------
	
	function Image(Self : in List) return String is
		Result : Unbounded_String;
		N : Node_Access := Self.Foremost;
	begin
		Result := Result & "(";
		while N /= null loop
			Result := Result & Image(N.Value);
			if Next(N) /= null then
				Result := Result & "<->";
			end if;
			N := N.Hind;
		end loop;
		Result := Result & ")";
		return To_String(Result);
	end Image;

	function Wide_Image(Self : in List) return Wide_String is
		Result : Unbounded_Wide_String;
		N : Node_Access := Self.Foremost;
	begin
		Result := Result & "(";
		while N /= null loop
			Result := Result & Wide_Image(N.Value);
			if Next(N) /= null then
				Result := Result & "↔";
			end if;
			N := N.Hind;
		end loop;
		Result := Result & ")";
		return To_Wide_String(Result);
	end Wide_Image;

	function Wide_Wide_Image(Self : in List) return Wide_Wide_String is
		Result : Unbounded_Wide_Wide_String;
		N : Node_Access := Self.Foremost;
	begin
		Result := Result & "(";
		while N /= null loop
			Result := Result & Wide_Wide_Image(N.Value);
			if Next(N) /= null then
				Result := Result & "↔";
			end if;
			N := N.Hind;
		end loop;
		Result := Result & ")";
		return To_Wide_Wide_String(Result);
	end Wide_Wide_Image;
	
end Containers.Lists.Doubly_Linked.IO;
