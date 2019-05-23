with Ada.Strings.Unbounded, Ada.Strings.Wide_Unbounded, Ada.Strings.Wide_Wide_Unbounded;
use Ada.Strings.Unbounded, Ada.Strings.Wide_Unbounded, Ada.Strings.Wide_Wide_Unbounded;

package body Containers.Buffers.Ring.IO is

	function Image(Self : Buffer) return String is
		Result : Unbounded_String;
	begin
		Result := Result & "(";
		for I in Self.Backing'Range loop
			if I = Self.Take_Index then
				Result := Result & "[" & Image(Self.Backing(I));
			elsif I = Self.Stock_Index then
				Result := Result & Image(Self.Backing(I)) & "]";
			else
				Result := Result & Image(Self.Backing(I));
			end if;
			if I /= Buffer_Length then
				Result := Result & "->";
			end if;
		end loop;
		Result := Result & ")";
		return To_String(Result);
	end Image;

	function Wide_Image(Self : Buffer) return Wide_String is
		Result : Unbounded_Wide_String;
	begin
		Result := Result & "(";
		for I in Self.Backing'Range loop
			if I = Self.Take_Index then
				Result := Result & "[" & Wide_Image(Self.Backing(I));
			elsif I = Self.Stock_Index then
				Result := Result & Wide_Image(Self.Backing(I)) & "]";
			else
				Result := Result & Wide_Image(Self.Backing(I));
			end if;
			if I /= Buffer_Length then
				Result := Result & "→";
			end if;
		end loop;
		Result := Result & ")";
		return To_Wide_String(Result);
	end Wide_Image;

	function Wide_Wide_Image(Self : Buffer) return Wide_Wide_String is
		Result : Unbounded_Wide_Wide_String;
	begin
		Result := Result & "(";
		for I in Self.Backing'Range loop
			if I = Self.Take_Index then
				Result := Result & "[" & Wide_Wide_Image(Self.Backing(I));
			elsif I = Self.Stock_Index then
				Result := Result & Wide_Wide_Image(Self.Backing(I)) & "]";
			else
				Result := Result & Wide_Wide_Image(Self.Backing(I));
			end if;
			if I /= Buffer_Length then
				Result := Result & "→";
			end if;
		end loop;
		Result := Result & ")";
		return To_Wide_Wide_String(Result);
	end Wide_Wide_Image;

end Containers.Buffers.Ring.IO;