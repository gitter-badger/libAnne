package body Colors.Models.Grayscale is

	function Red(Self : Grayscale_Color) return Percent is (Percent(Self.Intensity / Short_Short_Modular'Last));

	function Red(Self : Grayscale_Color) return Short_Short_Modular is (Self.Intensity);

	function Green(Self : Grayscale_Color) return Percent is (Percent(Self.Intensity / Short_Short_Modular'Last));

	function Green(Self : Grayscale_Color) return Short_Short_Modular is (Self.Intensity);

	function Blue(Self : Grayscale_Color) return Percent is (Percent(Self.Intensity / Short_Short_Modular'Last));

	function Blue(Self : Grayscale_Color) return Short_Short_Modular is (Self.Intensity);

	function Chroma(Self : Grayscale_Color) return Percent is (Percent'(0.0));

	function Chroma(Self : Grayscale_Color) return Short_Short_Modular is (0);

	function Hue(Self : Grayscale_Color) return Angle is (Angle'(0));

	function Gray(Intensity : Percent; α : Percent := 100.0) return Grayscale_Color is
		I : Short_Short_Modular := Short_Short_Modular(Decimal(Intensity) * 2.55);
		A : Short_Short_Modular := Short_Short_Modular(Decimal(α) * 2.55);
	begin
		return Grayscale_Color'(A, I);
	end Gray;

	function Gray(Intensity : Short_Short_Modular; α : Short_Short_Modular := Short_Short_Modular'Last) return Grayscale_Color is
	begin
		return Grayscale_Color'(α, Intensity);
	end Gray;
	
end Colors.Models.Grayscale;
