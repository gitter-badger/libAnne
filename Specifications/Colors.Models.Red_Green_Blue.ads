package Colors.Models.Red_Green_Blue with Pure, Remote_Types is
--Since this is the most likely to be misunderstood, this disclaimer is repeated here. This is not a representation of any color space such as sRGB or Adobe RGB. Rather, it is a naive and relatavistic representation of colors. 100% Red is the absolute maximum the display can present, regardless of what space the monitor has. Therefore any color made using this model will not be the same across displays. As such, this package is not suited for digital photography, digital video, digital illustration, or digital artwork. It is intended merely to provide easy to use and efficient color representations for common computer uses, such as text coloring and UI coloring.

	type RGB_Color is new Colors.Models.Color with private;

	overriding function Red(Self : RGB_Color) return Percent with Pure_Function;

	overriding function Red(Self : RGB_Color) return Short_Short_Modular with Pure_Function;

	overriding function Green(Self : RGB_Color) return Percent with Pure_Function;

	overriding function Green(Self : RGB_Color) return Short_Short_Modular with Pure_Function;

	overriding function Blue(Self : RGB_Color) return Percent with Pure_Function;

	overriding function Blue(Self : RGB_Color) return Short_Short_Modular with Pure_Function;
	
	function RGB(Red, Green, Blue : Percent; α : Percent := 100.0) return RGB_Color with Pure_Function;

	function RGB(Red, Green, Blue : Short_Short_Modular; α : Short_Short_Modular := Short_Short_Modular'Last) return RGB_Color with Pure_Function;

private
	type RGB_Color is new Colors.Models.Color with record
		Red : Short_Short_Modular;
		Green : Short_Short_Modular;
		Blue : Short_Short_Modular;
	end record;
	
end Colors.Models.Red_Green_Blue;
