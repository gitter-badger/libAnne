with Generics.Mathematics.Arrays.IO;
use Generics.Mathematics.Arrays.IO;

package Mathematics.Arrays.IO is
--@Description Provides input/ouput support for Mathematics.Arrays types
--@Version 1.0

	-------------------------------
	-- Short Short Integer Array --
	-------------------------------

	function Image is new Integer_Array_Image(Short_Short_Integer, Short_Short_Integer_Array) with Inline, Pure_Function;
	--Convert the specifed array to a String

	function Wide_Image is new Integer_Array_Wide_Image(Short_Short_Integer, Short_Short_Integer_Array) with Inline, Pure_Function;
	--Convert the specified array to a Wide_String

	function Wide_Wide_Image is new Integer_Array_Wide_Wide_Image(Short_Short_Integer, Short_Short_Integer_Array) with Inline, Pure_Function;
	--Convert the specified array to a Wide_Wide_String

	-------------------------
	-- Short Integer Array --
	-------------------------

	function Image is new Integer_Array_Image(Short_Integer, Short_Integer_Array) with Inline, Pure_Function;
	--Convert the specifed array to a String

	function Wide_Image is new Integer_Array_Wide_Image(Short_Integer, Short_Integer_Array) with Inline, Pure_Function;
	--Convert the specifed array to a Wide_String

	function Wide_Wide_Image is new Integer_Array_Wide_Wide_Image(Short_Integer, Short_Integer_Array) with Inline, Pure_Function;
	--Convert the specifed array to a Wide_Wide_String

	-------------------
	-- Integer Array --
	-------------------

	function Image is new Integer_Array_Image(Integer, Integer_Array) with Inline, Pure_Function;
	--Convert the specifed array to a String

	function Wide_Image is new Integer_Array_Wide_Image(Integer, Integer_Array) with Inline, Pure_Function;
	--Convert the specifed array to a Wide_String

	function Wide_Wide_Image is new Integer_Array_Wide_Wide_Image(Integer, Integer_Array) with Inline, Pure_Function;
	--Convert the specifed array to a Wide_Wide_String

	------------------------
	-- Long Integer Array --
	------------------------

	function Image is new Integer_Array_Image(Long_Integer, Long_Integer_Array) with Inline, Pure_Function;
	--Convert the specifed array to a String

	function Wide_Image is new Integer_Array_Wide_Image(Long_Integer, Long_Integer_Array) with Inline, Pure_Function;
	--Convert the specifed array to a Wide_String

	function Wide_Wide_Image is new Integer_Array_Wide_Wide_Image(Long_Integer, Long_Integer_Array) with Inline, Pure_Function;
	--Convert the specifed array to a Wide_Wide_String

	-----------------------------
	-- Long Long Integer Array --
	-----------------------------

	function Image is new Integer_Array_Image(Long_Long_Integer, Long_Long_Integer_Array) with Inline, Pure_Function;
	--Convert the specifed array to a String

	function Wide_Image is new Integer_Array_Wide_Image(Long_Long_Integer, Long_Long_Integer_Array) with Inline, Pure_Function;
	--Convert the specifed array to a Wide_String

	function Wide_Wide_Image is new Integer_Array_Wide_Wide_Image(Long_Long_Integer, Long_Long_Integer_Array) with Inline, Pure_Function;
	--Convert the specifed array to a Wide_Wide_String

	-------------------------------
	-- Short Short Modular Array --
	-------------------------------

	function Image is new Modular_Array_Image(Short_Short_Modular, Short_Short_Modular_Array) with Inline, Pure_Function;
	--Convert the specifed array to a String

	function Wide_Image is new Modular_Array_Wide_Image(Short_Short_Modular, Short_Short_Modular_Array) with Inline, Pure_Function;
	--Convert the specified array to a Wide_String

	function Wide_Wide_Image is new Modular_Array_Wide_Wide_Image(Short_Short_Modular, Short_Short_Modular_Array) with Inline, Pure_Function;
	--Convert the specified array to a Wide_Wide_String

	-------------------------
	-- Short Modular Array --
	-------------------------

	function Image is new Modular_Array_Image(Short_Modular, Short_Modular_Array) with Inline, Pure_Function;
	--Convert the specifed array to a String

	function Wide_Image is new Modular_Array_Wide_Image(Short_Modular, Short_Modular_Array) with Inline, Pure_Function;
	--Convert the specifed array to a Wide_String

	function Wide_Wide_Image is new Modular_Array_Wide_Wide_Image(Short_Modular, Short_Modular_Array) with Inline, Pure_Function;
	--Convert the specifed array to a Wide_Wide_String

	-------------------
	-- Modular Array --
	-------------------

	function Image is new Modular_Array_Image(Modular, Modular_Array) with Inline, Pure_Function;
	--Convert the specifed array to a String

	function Wide_Image is new Modular_Array_Wide_Image(Modular, Modular_Array) with Inline, Pure_Function;
	--Convert the specifed array to a Wide_String

	function Wide_Wide_Image is new Modular_Array_Wide_Wide_Image(Modular, Modular_Array) with Inline, Pure_Function;
	--Convert the specifed array to a Wide_Wide_String

	------------------------
	-- Long Modular Array --
	------------------------

	function Image is new Modular_Array_Image(Long_Modular, Long_Modular_Array) with Inline, Pure_Function;
	--Convert the specifed array to a String

	function Wide_Image is new Modular_Array_Wide_Image(Long_Modular, Long_Modular_Array) with Inline, Pure_Function;
	--Convert the specifed array to a Wide_String

	function Wide_Wide_Image is new Modular_Array_Wide_Wide_Image(Long_Modular, Long_Modular_Array) with Inline, Pure_Function;
	--Convert the specifed array to a Wide_Wide_String

	-----------------------------
	-- Long Long Modular Array --
	-----------------------------

	function Image is new Modular_Array_Image(Long_Long_Modular, Long_Long_Modular_Array) with Inline, Pure_Function;
	--Convert the specifed array to a String

	function Wide_Image is new Modular_Array_Wide_Image(Long_Long_Modular, Long_Long_Modular_Array) with Inline, Pure_Function;
	--Convert the specifed array to a Wide_String

	function Wide_Wide_Image is new Modular_Array_Wide_Wide_Image(Long_Long_Modular, Long_Long_Modular_Array) with Inline, Pure_Function;
	--Convert the specifed array to a Wide_Wide_String

	-----------------------
	-- Short Float Array --
	-----------------------

	function Image is new Float_Array_Image(Short_Float, Short_Float_Array) with Inline, Pure_Function;
	--Convert the specifed array to a String

	function Wide_Image is new Float_Array_Wide_Image(Short_Float, Short_Float_Array) with Inline, Pure_Function;
	--Convert the specifed array to a Wide_String

	function Wide_Wide_Image is new Float_Array_Wide_Wide_Image(Short_Float, Short_Float_Array) with Inline, Pure_Function;
	--Convert the specifed array to a Wide_Wide_String

	-----------------
	-- Float Array --
	-----------------

	function Image is new Float_Array_Image(Float, Float_Array) with Inline, Pure_Function;
	--Convert the specifed array to a String

	function Wide_Image is new Float_Array_Wide_Image(Float, Float_Array) with Inline, Pure_Function;
	--Convert the specifed array to a Wide_String

	function Wide_Wide_Image is new Float_Array_Wide_Wide_Image(Float, Float_Array) with Inline, Pure_Function;
	--Convert the specifed array to a Wide_Wide_String

	----------------------
	-- Long Float Array --
	----------------------

	function Image is new Float_Array_Image(Long_Float, Long_Float_Array) with Inline, Pure_Function;
	--Convert the specifed array to a String

	function Wide_Image is new Float_Array_Wide_Image(Long_Float, Long_Float_Array) with Inline, Pure_Function;
	--Convert the specifed array to a Wide_String

	function Wide_Wide_Image is new Float_Array_Wide_Wide_Image(Long_Float, Long_Float_Array) with Inline, Pure_Function;
	--Convert the specifed array to a Wide_String

	---------------------------
	-- Long Long Float Array --
	---------------------------

	function Image is new Float_Array_Image(Long_Long_Float, Long_Long_Float_Array) with Inline, Pure_Function;
	--Convert the specifed array to a String

	function Wide_Image is new Float_Array_Wide_Image(Long_Long_Float, Long_Long_Float_Array) with Inline, Pure_Function;
	--Convert the specifed array to a Wide_String

	function Wide_Wide_Image is new Float_Array_Wide_Wide_Image(Long_Long_Float, Long_Long_Float_Array) with Inline, Pure_Function;
	--Convert the specifed array to a Wide_Wide_String

end Mathematics.Arrays.IO;
