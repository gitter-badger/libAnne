with Numerics, Mathematics.Angles, Mathematics.Percents;
use Numerics, Mathematics.Angles, Mathematics.Percents;

package Colors.Models with Pure, Remote_Types is

	-----------
	-- Color --
	-----------
	
	type Color is abstract tagged private;
	--Represents a color of no particular model

	function Red(Self : Color) return Percent is abstract;
	--The red component as a percentage

	function Red(Self : Color) return Short_Short_Modular is abstract;
	--The red component as an 8-bit value

	function Green(Self : Color) return Percent is abstract;
	--The green component as a percentage

	function Green(Self : Color) return Short_Short_Modular is abstract;
	--The green component as an 8-bit value

	function Blue(Self : Color) return Percent is abstract;
	--The blue component as a percentage

	function Blue(Self : Color) return Short_Short_Modular is abstract;
	--The blue component as an 8-bit value

	--function Chroma(Self : Color) return Percent is abstract;
	--The chroma as a percentage

	--function Chroma(Self : Color) return Short_Short_Modular is abstract;
	--The chroma as an 8-bit value
	
	--function Hue(Self : Color) return Angle is abstract;
	--The hue as an angle
		
	function α(Self : Color'Class) return Percent with Inline, Pure_Function;
	--The alpha channel, or visibility, as a percentage

	function Alpha(Self : Color'Class) return Percent renames α;
	--The alpha channel, or visibility, as a percentage

	function α(Self : Color'Class) return Short_Short_Modular with Inline, Pure_Function;
	--The alpha channel, or visibility, as an 8-bit value

	function Alpha(Self : Color'Class) return Short_Short_Modular renames α;
	--The alpha channel, or visibility, as an 8-bit value

private
	type Color is abstract tagged record
		α : Short_Short_Modular;
	end record;
		
end Colors.Models;
