package body Mathematics.Angles.IO is

	------------
	-- Degree --
	------------
	
	function Image(Value : in Degree) return String is
	begin
		return Degree'Image(Value) & "°";
	end Image;

	function Wide_Image(Value : in Degree) return Wide_String is
	begin
		return Degree'Wide_Image(Value) & "°";
	end Wide_Image;

	function Wide_Wide_Image(Value : in Degree) return Wide_Wide_String is
	begin
		return Degree'Wide_Wide_Image(Value) & "°";
	end Wide_Wide_Image;

	-------------
	-- Gradian --
	-------------

	function Image(Value : in Gradian) return String is
	begin
		return Gradian'Image(Value) & "grad";
	end Image;

	function Wide_Image(Value : in Gradian) return Wide_String is
	begin
		return Gradian'Wide_Image(Value) & "grad";
	end Wide_Image;

	function Wide_Wide_Image(Value : in Gradian) return Wide_Wide_String is
	begin
		return Gradian'Wide_Wide_Image(Value) & "grad";
	end Wide_Wide_Image;

end Mathematics.Angles.IO;
