with Generics.Mathematics.Percents.IO;
use Generics.Mathematics.Percents.IO;

package Mathematics.Percents.IO is
--@Description Provides input/output operations for Mathematics.Percents
--@Version 1.0

	function Image is new Percent_Image(Short_Short_Percent);
	function Wide_Image is new Percent_Wide_Image(Short_Short_Percent);
	function Wide_Wide_Image is new Percent_Wide_Wide_Image(Short_Short_Percent);

	function Image is new Percent_Image(Short_Percent);
	function Wide_Image is new Percent_Wide_Image(Short_Percent);
	function Wide_Wide_Image is new Percent_Wide_Wide_Image(Short_Percent);

	function Image is new Percent_Image(Percent);
	function Wide_Image is new Percent_Wide_Image(Percent);
	function Wide_Wide_Image is new Percent_Wide_Wide_Image(Percent);

	function Image is new Percent_Image(Long_Percent);
	function Wide_Image is new Percent_Wide_Image(Long_Percent);
	function Wide_Wide_Image is new Percent_Wide_Wide_Image(Long_Percent);

	function Image is new Percent_Image(Long_Long_Percent);
	function Wide_Image is new Percent_Wide_Image(Long_Long_Percent);
	function Wide_Wide_Image is new Percent_Wide_Wide_Image(Long_Long_Percent);

end Mathematics.Percents.IO;
