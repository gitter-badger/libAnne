package body Generics.Mathematics.Percents.IO is

	function Percent_Image(Self : Percent_Type) return String is (Percent_Type'Image(Self) & "%");

	function Percent_Wide_Image(Self : Percent_Type) return Wide_String is (Percent_Type'Wide_Image(Self) & "%");

	function Percent_Wide_Wide_Image(Self : Percent_Type) return Wide_Wide_String is (Percent_Type'Wide_Wide_Image(Self) & "%");
	
end Generics.Mathematics.Percents.IO;
