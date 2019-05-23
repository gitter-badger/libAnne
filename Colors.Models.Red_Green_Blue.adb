with Mathematics.Arrays;
use Mathematics.Arrays;

package body Colors.Models.Red_Green_Blue is

	function Red(Self : RGB_Color) return Percent is (Percent(Self.Red / Short_Short_Modular'Last));

	function Red(Self : RGB_Color) return Short_Short_Modular is (Self.Red);

	function Green(Self : RGB_Color) return Percent is (Percent(Self.Green / Short_Short_Modular'Last));

	function Green(Self : RGB_Color) return Short_Short_Modular is (Self.Green);

	function Blue(Self : RGB_Color) return Percent is (Percent(Self.Blue / Short_Short_Modular'Last));

	function Blue(Self : RGB_Color) return Short_Short_Modular is (Self.Blue);
	
	function RGB(Red, Green, Blue : Percent; α : Percent := 100.0) return RGB_Color is
		A : Short_Short_Modular := Short_Short_Modular(Decimal(α) * 2.55);
		R : Short_Short_Modular := Short_Short_Modular(Decimal(Red) * 2.55);
		G : Short_Short_Modular := Short_Short_Modular(Decimal(Green) * 2.55);
		B : Short_Short_Modular := Short_Short_Modular(Decimal(Blue) * 2.55);
	begin
		return RGB_Color'(A, R, G, B);
	end RGB;

	function RGB(Red, Green, Blue : Short_Short_Modular; α : Short_Short_Modular := Short_Short_Modular'Last) return RGB_Color is (RGB_Color'(α, Red, Green, Blue));
	
end Colors.Models.Red_Green_Blue;
