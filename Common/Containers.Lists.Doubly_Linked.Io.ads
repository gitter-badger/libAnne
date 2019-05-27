generic
	with function Image(Self : in Value_Type) return String is <>;
	with function Wide_Image(Self : in Value_Type) return Wide_String is <>;
	with function Wide_Wide_Image(Self : in Value_Type) return Wide_Wide_String is <>;
package Containers.Lists.Doubly_Linked.IO is

	----------
	-- Node --
	----------

	function Image(Self : in Node) return String with Pure_Function;

	function Wide_Image(Self : in Node) return Wide_String with Pure_Function;

	function Wide_Wide_Image(Self : in Node) return Wide_Wide_String with Pure_Function;
	
	----------
	-- List --
	----------

	function Image(Self : in List) return String with Pure_Function;

	function Wide_Image(Self : in List) return Wide_String with Pure_Function;

	function Wide_Wide_Image(Self : in List) return Wide_Wide_String with Pure_Function;
	
end Containers.Lists.Doubly_Linked.IO;
