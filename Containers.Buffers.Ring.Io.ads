generic
	with function Image(Self : in Value_Type) return String is <>;
	with function Wide_Image(Self : in Value_Type) return Wide_String is <>;
	with function Wide_Wide_Image(Self : in Value_Type) return Wide_Wide_String is <>;
package Containers.Buffers.Ring.IO is

	function Image(Self : Buffer) return String;

	function Wide_Image(Self : Buffer) return Wide_String;

	function Wide_Wide_Image(Self : Buffer) return Wide_Wide_String;

end Containers.Buffers.Ring.IO;