package Mathematics.Angles.Io is
--@Description Provides input/output operations for Mathematics.Angles

	------------
	-- Degree --
	------------

	function Image(Value : Degree) return String with Pure_Function;

	function Wide_Image(Value : Degree) return Wide_String with Pure_Function;

	function Wide_Wide_Image(Value : Degree) return Wide_Wide_String with Pure_Function;

	-------------
	-- Gradian --
	-------------

	function Image(Value : Gradian) return String with Pure_Function;

	function Wide_Image(Value : Gradian) return Wide_String with Pure_Function;

	function Wide_Wide_Image(Value : Gradian) return Wide_Wide_String with Pure_Function;

end Mathematics.Angles.Io;
