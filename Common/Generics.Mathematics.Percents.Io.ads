package Generics.Mathematics.Percents.IO is
--@Description Provides generic input/output operations for Mathematics.Percents

	generic
		type Percent_Type is delta <> digits <>;
	function Percent_Image(Self : Percent_Type) return String with Pure_Function;

	generic
		type Percent_Type is delta <> digits <>;
	function Percent_Wide_Image(Self : Percent_Type) return Wide_String with Pure_Function;

	generic
		type Percent_Type is delta <> digits <>;
	function Percent_Wide_Wide_Image(Self : Percent_Type) return Wide_Wide_String with Pure_Function;
	
end Generics.Mathematics.Percents.IO;
