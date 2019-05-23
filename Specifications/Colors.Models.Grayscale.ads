package Colors.Models.Grayscale with Pure, Remote_Types is

	type Grayscale_Color is new Color with private;

	overriding function Red(Self : Grayscale_Color) return Percent with Pure_Function;
	overriding function Red(Self : Grayscale_Color) return Short_Short_Modular with Pure_Function;

	overriding function Green(Self : Grayscale_Color) return Percent with Pure_Function;
	overriding function Green(Self : Grayscale_Color) return Short_Short_Modular with Pure_Function;

	overriding function Blue(Self : Grayscale_Color) return Percent with Pure_Function;
	overriding function Blue(Self : Grayscale_Color) return Short_Short_Modular with Pure_Function;

	--overriding function Chroma(Self : Grayscale_Color) return Percent with Pure_Function;
	--overriding function Chroma(Self : Grayscale_Color) return Short_Short_Modular with Pure_Function;

	--overriding function Hue(Self : Grayscale_Color) return Angle with Pure_Function;

	function Gray(Intensity : Percent; α : Percent := 100.0) return Grayscale_Color with Pure_Function;
	function Gray(Intensity : Short_Short_Modular; α : Short_Short_Modular := Short_Short_Modular'Last) return Grayscale_Color with Pure_Function;
	
private
	type Grayscale_Color is new Color with record
		Intensity : Short_Short_Modular;
	end record;
	
end Colors.Models.Grayscale;
