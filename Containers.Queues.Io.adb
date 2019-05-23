with Ada.Strings.Unbounded, Ada.Strings.Wide_Unbounded, Ada.Strings.Wide_Wide_Unbounded;
use Ada.Strings.Unbounded, Ada.Strings.Wide_Unbounded, Ada.Strings.Wide_Wide_Unbounded;

package body Containers.Queues.IO is

	----------
	-- Node --
	----------

	function Image(Self : in Node) return String is (Image(Self.Value));

	function Wide_Image(Self : in Node) return Wide_String is (Wide_Image(Self.Value));

	function Wide_Wide_Image(Self : in Node) return Wide_Wide_String is (Wide_Wide_Image(Self.Value));

	-----------
	-- Queue --
	-----------

	function Image(Self : in Queue) return String is
		Result : Unbounded_String;
		N : Node_Access := Self.Front;
	begin
		Result := Result & "(";
		while N /= null loop
			Result := Result & Image(N.Value);
			if N.Next /= null then
				Result := Result & "<-";
			end if;
			N := N.Next;
		end loop;
		Result := Result & ")";
		return To_String(Result);
	end Image;

	function Wide_Image(Self : in Queue) return Wide_String is
		Result : Unbounded_Wide_String;
		N : Node_Access := Self.Front;
	begin
		Result := Result & "(";
		while N /= null loop
			Result := Result & Wide_Image(N.Value);
			if N.Next /= null then
				Result := Result & "←";
			end if;
			N := N.Next;
		end loop;
		Result := Result & ")";
		return To_Wide_String(Result);
	end Wide_Image;

	function Wide_Wide_Image(Self : in Queue) return Wide_Wide_String is
		Result : Unbounded_Wide_Wide_String;
		N : Node_Access := Self.Front;
	begin
		Result := Result & "(";
		while N /= null loop
			Result := Result & Wide_Wide_Image(N.Value);
			if N.Next /= null then
				Result := Result & "←";
			end if;
			N := N.Next;
		end loop;
		Result := Result & ")";
		return To_Wide_Wide_String(Result);
	end Wide_Wide_Image;

end Containers.Queues.IO;
