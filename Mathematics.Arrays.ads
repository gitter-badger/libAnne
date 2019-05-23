with Generics.Mathematics.Arrays;
use Generics.Mathematics.Arrays;

package Mathematics.Arrays with Pure, Remote_Types is
--@Description Provides arrays for array math and linear algebra
--@Version 1.0

	-------------------------------
	-- Short Short Integer Array --
	-------------------------------

	type Short_Short_Integer_Array is array(Positive range <>) of Short_Short_Integer;

	function "+"(Value : Short_Short_Integer_Array) return Short_Short_Integer_Array with Pure_Function;
	--Distributed assertion

	function "-"(Value : Short_Short_Integer_Array) return Short_Short_Integer_Array with Pure_Function;
	--Distributed negation

	function "abs"(Value : Short_Short_Integer_Array) return Short_Short_Integer_Array with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer_Array) return Short_Short_Integer_Array with Pure_Function;
	--Array addition, add together each respective element of Left and Right

	function "+"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer) return Short_Short_Integer_Array with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Short_Short_Integer; Right : Short_Short_Integer_Array) return Short_Short_Integer_Array with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer_Array) return Short_Short_Integer_Array with Pure_Function;
	--Array subtraction, subtract each respective element of Left and Right

	function "-"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer) return Short_Short_Integer_Array with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Short_Short_Integer; Right : Short_Short_Integer_Array) return Short_Short_Integer_Array with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer_Array) return Short_Short_Integer_Array with Pure_Function;
	--Array multiplication, multiply together each respective element

	function "*"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer) return Short_Short_Integer_Array with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Short_Short_Integer; Right : Short_Short_Integer_Array) return Short_Short_Integer_Array with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer_Array) return Short_Short_Integer_Array with Pure_Function;
	--Array division, divide each respective element of Left and Right

	function "/"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer) return Short_Short_Integer_Array with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Short_Short_Integer; Right : Short_Short_Integer_Array) return Short_Short_Integer_Array with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer_Array) return Short_Short_Integer_Array with Pure_Function;
	--Array remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer) return Short_Short_Integer_Array with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Short_Short_Integer; Right : Short_Short_Integer_Array) return Short_Short_Integer_Array with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer_Array) return Short_Short_Integer_Array with Pure_Function;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer) return Short_Short_Integer_Array with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Short_Short_Integer; Right : Short_Short_Integer_Array) return Short_Short_Integer_Array with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Short_Short_Integer_Array; Right : Short_Short_Integer_Array) return Boolean with Pure_Function;
	--Array equality, test each respective element of Left and Right

	function "="(Left : Short_Short_Integer_Array; Right : Short_Short_Integer) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Short_Short_Integer; Right : Short_Short_Integer_Array) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer_Array) return Boolean with Pure_Function;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Short_Short_Integer; Right : Short_Short_Integer_Array) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer_Array) return Boolean with Pure_Function;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Short_Short_Integer_Array; Right : Short_Short_Integer) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Short_Short_Integer; Right : Short_Short_Integer_Array) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Short_Short_Integer_Array; Right : Short_Short_Integer_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Short_Short_Integer_Array; Right : Short_Short_Integer) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Short_Short_Integer; Right : Short_Short_Integer_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Short_Short_Integer_Array; Right : Short_Short_Integer_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Short_Short_Integer_Array; Right : Short_Short_Integer) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Short_Short_Integer; Right : Short_Short_Integer_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	function Max is new Integer_Max(Short_Short_Integer, Short_Short_Integer_Array) with Pure_Function;
	--Find the maximum value of the array

	function Min is new Integer_Min(Short_Short_Integer, Short_Short_Integer_Array) with Pure_Function;
	--Find the minimum value of the array

	function Apply is new Integer_Apply_Procedure(Short_Short_Integer, Short_Short_Integer_Array);
	--Apply the procedure to each value of the array, returning the result

	function Map(Value : Short_Short_Integer_Array; Callback : access Procedure(Value : in out Short_Short_Integer)) return Short_Short_Integer_Array renames Apply;

	function Apply is new Integer_Apply_Function(Short_Short_Integer, Short_Short_Integer_Array);
	--Apply the function to each value of the array, returning the result

	function Map(Value : Short_Short_Integer_Array; Callback : access Function(Value : Short_Short_Integer) return Short_Short_Integer) return Short_Short_Integer_Array renames Apply;

	function Fold is new Integer_Fold(Short_Short_Integer, Short_Short_Integer_Array);
	--Fold the array using the specified function

	-------------------------
	-- Short Integer Array --
	-------------------------

	type Short_Integer_Array is array(Positive range <>) of Short_Integer;

	function "+"(Value : Short_Integer_Array) return Short_Integer_Array with Pure_Function;
	--Distributed assertion

	function "-"(Value : Short_Integer_Array) return Short_Integer_Array with Pure_Function;
	--Distributed negation

	function "abs"(Value : Short_Integer_Array) return Short_Integer_Array with Pure_Function;
	--Distributed absolute value
	function "+"(Left : Short_Integer_Array; Right : Short_Integer_Array) return Short_Integer_Array with Pure_Function;
	--Array addition, add together each respective element of Left and Right

	function "+"(Left : Short_Integer_Array; Right : Short_Integer) return Short_Integer_Array with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Short_Integer; Right : Short_Integer_Array) return Short_Integer_Array with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Short_Integer_Array; Right : Short_Integer_Array) return Short_Integer_Array with Pure_Function;
	--Array subtraction, subtract each respective element of Left and Right

	function "-"(Left : Short_Integer_Array; Right : Short_Integer) return Short_Integer_Array with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Short_Integer; Right : Short_Integer_Array) return Short_Integer_Array with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Short_Integer_Array; Right : Short_Integer_Array) return Short_Integer_Array with Pure_Function;
	--Array multiplication, multiply together each respective element

	function "*"(Left : Short_Integer_Array; Right : Short_Integer) return Short_Integer_Array with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Short_Integer; Right : Short_Integer_Array) return Short_Integer_Array with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Short_Integer_Array; Right : Short_Integer_Array) return Short_Integer_Array with Pure_Function;
	--Array division, divide each respective element of Left and Right

	function "/"(Left : Short_Integer_Array; Right : Short_Integer) return Short_Integer_Array with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Short_Integer; Right : Short_Integer_Array) return Short_Integer_Array with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Short_Integer_Array; Right : Short_Integer_Array) return Short_Integer_Array with Pure_Function;
	--Array remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Short_Integer_Array; Right : Short_Integer) return Short_Integer_Array with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Short_Integer; Right : Short_Integer_Array) return Short_Integer_Array with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Short_Integer_Array; Right : Short_Integer_Array) return Short_Integer_Array with Pure_Function;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Short_Integer_Array; Right : Short_Integer) return Short_Integer_Array with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Short_Integer; Right : Short_Integer_Array) return Short_Integer_Array with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Short_Integer_Array; Right : Short_Integer_Array) return Boolean with Pure_Function;
	--Array equality, test each respective element of Left and Right

	function "="(Left : Short_Integer_Array; Right : Short_Integer) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Short_Integer; Right : Short_Integer_Array) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Short_Integer_Array; Right : Short_Integer_Array) return Boolean with Pure_Function;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Short_Integer_Array; Right : Short_Integer) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Short_Integer; Right : Short_Integer_Array) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Short_Integer_Array; Right : Short_Integer_Array) return Boolean with Pure_Function;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Short_Integer_Array; Right : Short_Integer) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Short_Integer; Right : Short_Integer_Array) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Short_Integer_Array; Right : Short_Integer_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Short_Integer_Array; Right : Short_Integer) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Short_Integer; Right : Short_Integer_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Short_Integer_Array; Right : Short_Integer_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Short_Integer_Array; Right : Short_Integer) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Short_Integer; Right : Short_Integer_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	function Max is new Integer_Max(Short_Integer, Short_Integer_Array) with Pure_Function;
	--Find the maximum value of the array

	function Min is new Integer_Min(Short_Integer, Short_Integer_Array) with Pure_Function;
	--Find the minimum value of the array

	function Apply is new Integer_Apply_Procedure(Short_Integer, Short_Integer_Array);
	--Apply the procedure to each value of the array, returning the result

	function Map(Value : Short_Integer_Array; Callback : access Procedure(Value : in out Short_Integer)) return Short_Integer_Array renames Apply;

	function Apply is new Integer_Apply_Function(Short_Integer, Short_Integer_Array);
	--Apply the function to each value of the array, returning the result

	function Map(Value : Short_Integer_Array; Callback : access Function(Value : Short_Integer) return Short_Integer) return Short_Integer_Array renames Apply;

	function Fold is new Integer_Fold(Short_Integer, Short_Integer_Array);
	--Fold the array using the specified function

	-------------------
	-- Integer Array --
	-------------------
	
	type Integer_Array is array(Positive range <>) of Integer;

	function Comprehension is new Integer_Fill_Comprehension(Integer, Integer_Array);

	function Comprehension is new Integer_Step_Comprehension(Integer, Integer_Array);

	function "+"(Value : Integer_Array) return Integer_Array with Pure_Function;
	--Distributed assertion

	function "-"(Value : Integer_Array) return Integer_Array with Pure_Function;
	--Distributed negation

	function "abs"(Value : Integer_Array) return Integer_Array with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Integer_Array; Right : Integer_Array) return Integer_Array with Pure_Function;
	--Array addition, add together each respective element of Left and Right

	function "+"(Left : Integer_Array; Right : Integer) return Integer_Array with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Integer; Right : Integer_Array) return Integer_Array with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Integer_Array; Right : Integer_Array) return Integer_Array with Pure_Function;
	--Array subtraction, subtract each respective element of Left and Right

	function "-"(Left : Integer_Array; Right : Integer) return Integer_Array with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Integer; Right : Integer_Array) return Integer_Array with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Integer_Array; Right : Integer_Array) return Integer_Array with Pure_Function;
	--Array multiplication, multiply together each respective element

	function "*"(Left : Integer_Array; Right : Integer) return Integer_Array with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Integer; Right : Integer_Array) return Integer_Array with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Integer_Array; Right : Integer_Array) return Integer_Array with Pure_Function;
	--Array division, divide each respective element of Left and Right

	function "/"(Left : Integer_Array; Right : Integer) return Integer_Array with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Integer; Right : Integer_Array) return Integer_Array with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Integer_Array; Right : Integer_Array) return Integer_Array with Pure_Function;
	--Array remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Integer_Array; Right : Integer) return Integer_Array with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Integer; Right : Integer_Array) return Integer_Array with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Integer_Array; Right : Integer_Array) return Integer_Array with Pure_Function;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Integer_Array; Right : Integer) return Integer_Array with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Integer; Right : Integer_Array) return Integer_Array with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Integer_Array; Right : Integer_Array) return Boolean with Pure_Function;
	--Array equality, test each respective element of Left and Right

	function "="(Left : Integer_Array; Right : Integer) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Integer; Right : Integer_Array) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Integer_Array; Right : Integer_Array) return Boolean with Pure_Function;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Integer_Array; Right : Integer) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Integer; Right : Integer_Array) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Integer_Array; Right : Integer_Array) return Boolean with Pure_Function;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Integer_Array; Right : Integer) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Integer; Right : Integer_Array) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Integer_Array; Right : Integer_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Integer_Array; Right : Integer) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Integer; Right : Integer_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Integer_Array; Right : Integer_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Integer_Array; Right : Integer) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Integer; Right : Integer_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	function Max is new Integer_Max(Integer, Integer_Array) with Pure_Function;
	--Find the maximum value of the array

	function Min is new Integer_Min(Integer, Integer_Array) with Pure_Function;
	--Find the minimum value of the array

	function Apply is new Integer_Apply_Procedure(Integer, Integer_Array);
	--Apply the procedure to each value of the array, returning the result

	function Map(Value : Integer_Array; Callback : access Procedure(Value : in out Integer)) return Integer_Array renames Apply;

	function Apply is new Integer_Apply_Function(Integer, Integer_Array);
	--Apply the function to each value of the array, returning the result

	function Map(Value : Integer_Array; Callback : access Function(Value : Integer) return Integer) return Integer_Array renames Apply;

	function Fold is new Integer_Fold(Integer, Integer_Array);
	--Fold the array using the specified function

	------------------------
	-- Long Integer Array --
	------------------------

	type Long_Integer_Array is array(Positive range <>) of Long_Integer;

	function "+"(Value : Long_Integer_Array) return Long_Integer_Array with Pure_Function;
	--Distributed assertion

	function "-"(Value : Long_Integer_Array) return Long_Integer_Array with Pure_Function;
	--Distributed negation

	function "abs"(Value : Long_Integer_Array) return Long_Integer_Array with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Long_Integer_Array; Right : Long_Integer_Array) return Long_Integer_Array with Pure_Function;
	--Array addition, add together each respective element of Left and Right

	function "+"(Left : Long_Integer_Array; Right : Long_Integer) return Long_Integer_Array with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Long_Integer; Right : Long_Integer_Array) return Long_Integer_Array with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Long_Integer_Array; Right : Long_Integer_Array) return Long_Integer_Array with Pure_Function;
	--Array subtraction, subtract each respective element of Left and Right

	function "-"(Left : Long_Integer_Array; Right : Long_Integer) return Long_Integer_Array with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Long_Integer; Right : Long_Integer_Array) return Long_Integer_Array with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Long_Integer_Array; Right : Long_Integer_Array) return Long_Integer_Array with Pure_Function;
	--Array multiplication, multiply together each respective element

	function "*"(Left : Long_Integer_Array; Right : Long_Integer) return Long_Integer_Array with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Long_Integer; Right : Long_Integer_Array) return Long_Integer_Array with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Long_Integer_Array; Right : Long_Integer_Array) return Long_Integer_Array with Pure_Function;
	--Array division, divide each respective element of Left and Right

	function "/"(Left : Long_Integer_Array; Right : Long_Integer) return Long_Integer_Array with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Long_Integer; Right : Long_Integer_Array) return Long_Integer_Array with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Long_Integer_Array; Right : Long_Integer_Array) return Long_Integer_Array with Pure_Function;
	--Array remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Long_Integer_Array; Right : Long_Integer) return Long_Integer_Array with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Long_Integer; Right : Long_Integer_Array) return Long_Integer_Array with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Long_Integer_Array; Right : Long_Integer_Array) return Long_Integer_Array with Pure_Function;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Long_Integer_Array; Right : Long_Integer) return Long_Integer_Array with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Long_Integer; Right : Long_Integer_Array) return Long_Integer_Array with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Long_Integer_Array; Right : Long_Integer_Array) return Boolean with Pure_Function;
	--Array equality, test each respective element of Left and Right

	function "="(Left : Long_Integer_Array; Right : Long_Integer) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Long_Integer; Right : Long_Integer_Array) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Long_Integer_Array; Right : Long_Integer_Array) return Boolean with Pure_Function;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Long_Integer_Array; Right : Long_Integer) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Long_Integer; Right : Long_Integer_Array) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Long_Integer_Array; Right : Long_Integer_Array) return Boolean with Pure_Function;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Long_Integer_Array; Right : Long_Integer) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Long_Integer; Right : Long_Integer_Array) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Long_Integer_Array; Right : Long_Integer_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Long_Integer_Array; Right : Long_Integer) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Long_Integer; Right : Long_Integer_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Long_Integer_Array; Right : Long_Integer_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Long_Integer_Array; Right : Long_Integer) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Long_Integer; Right : Long_Integer_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	function Max is new Integer_Max(Long_Integer, Long_Integer_Array) with Pure_Function;
	--Find the maximum value of the array

	function Min is new Integer_Min(Long_Integer, Long_Integer_Array) with Pure_Function;
	--Find the minimum value of the array

	function Apply is new Integer_Apply_Procedure(Long_Integer, Long_Integer_Array);
	--Apply the procedure to each value of the array, returning the result

	function Map(Value : Long_Integer_Array; Callback : access Procedure(Value : in out Long_Integer)) return Long_Integer_Array renames Apply;

	function Apply is new Integer_Apply_Function(Long_Integer, Long_Integer_Array);
	--Apply the function to each value of the array, returning the result

	function Map(Value : Long_Integer_Array; Callback : access Function(Value : Long_Integer) return Long_Integer) return Long_Integer_Array renames Apply;

	function Fold is new Integer_Fold(Long_Integer, Long_Integer_Array);
	--Fold the array using the specified function

	-----------------------------
	-- Long Long Integer Array --
	-----------------------------

	type Long_Long_Integer_Array is array(Positive range <>) of Long_Long_Integer;

	function "+"(Value : Long_Long_Integer_Array) return Long_Long_Integer_Array with Pure_Function;
	--Distributed assertion

	function "-"(Value : Long_Long_Integer_Array) return Long_Long_Integer_Array with Pure_Function;
	--Distributed negation

	function "abs"(Value : Long_Long_Integer_Array) return Long_Long_Integer_Array with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer_Array) return Long_Long_Integer_Array with Pure_Function;
	--Array addition, add together each respective element of Left and Right

	function "+"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer) return Long_Long_Integer_Array with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Long_Long_Integer; Right : Long_Long_Integer_Array) return Long_Long_Integer_Array with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer_Array) return Long_Long_Integer_Array with Pure_Function;
	--Array subtraction, subtract each respective element of Left and Right

	function "-"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer) return Long_Long_Integer_Array with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Long_Long_Integer; Right : Long_Long_Integer_Array) return Long_Long_Integer_Array with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer_Array) return Long_Long_Integer_Array with Pure_Function;
	--Array multiplication, multiply together each respective element

	function "*"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer) return Long_Long_Integer_Array with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Long_Long_Integer; Right : Long_Long_Integer_Array) return Long_Long_Integer_Array with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer_Array) return Long_Long_Integer_Array with Pure_Function;
	--Array division, divide each respective element of Left and Right

	function "/"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer) return Long_Long_Integer_Array with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Long_Long_Integer; Right : Long_Long_Integer_Array) return Long_Long_Integer_Array with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer_Array) return Long_Long_Integer_Array with Pure_Function;
	--Array remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer) return Long_Long_Integer_Array with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Long_Long_Integer; Right : Long_Long_Integer_Array) return Long_Long_Integer_Array with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer_Array) return Long_Long_Integer_Array with Pure_Function;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer) return Long_Long_Integer_Array with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Long_Long_Integer; Right : Long_Long_Integer_Array) return Long_Long_Integer_Array with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Long_Long_Integer_Array; Right : Long_Long_Integer_Array) return Boolean with Pure_Function;
	--Array equality, test each respective element of Left and Right

	function "="(Left : Long_Long_Integer_Array; Right : Long_Long_Integer) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Long_Long_Integer; Right : Long_Long_Integer_Array) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer_Array) return Boolean with Pure_Function;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Long_Long_Integer; Right : Long_Long_Integer_Array) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer_Array) return Boolean with Pure_Function;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Long_Long_Integer_Array; Right : Long_Long_Integer) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Long_Long_Integer; Right : Long_Long_Integer_Array) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Long_Long_Integer_Array; Right : Long_Long_Integer_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Long_Long_Integer_Array; Right : Long_Long_Integer) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Long_Long_Integer; Right : Long_Long_Integer_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Long_Long_Integer_Array; Right : Long_Long_Integer_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Long_Long_Integer_Array; Right : Long_Long_Integer) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Long_Long_Integer; Right : Long_Long_Integer_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	function Max is new Integer_Max(Long_Long_Integer, Long_Long_Integer_Array) with Pure_Function;
	--Find the maximum value of the array

	function Min is new Integer_Min(Long_Long_Integer, Long_Long_Integer_Array) with Pure_Function;
	--Find the minimum value of the array

	function Apply is new Integer_Apply_Procedure(Long_Long_Integer, Long_Long_Integer_Array);
	--Apply the procedure to each value of the array, returning the result

	function Map(Value : Long_Long_Integer_Array; Callback : access Procedure(Value : in out Long_Long_Integer)) return Long_Long_Integer_Array renames Apply;

	function Apply is new Integer_Apply_Function(Long_Long_Integer, Long_Long_Integer_Array);
	--Apply the function to each value of the array, returning the result

	function Map(Value : Long_Long_Integer_Array; Callback : access Function(Value : Long_Long_Integer) return Long_Long_Integer) return Long_Long_Integer_Array renames Apply;

	function Fold is new Integer_Fold(Long_Long_Integer, Long_Long_Integer_Array);
	--Fold the array using the specified function

	-------------------------------
	-- Short Short Modular Array --
	-------------------------------

	type Short_Short_Modular_Array is array(Positive range <>) of Short_Short_Modular;

	function "+"(Value : Short_Short_Modular_Array) return Short_Short_Modular_Array with Pure_Function;
	--Distributed assertion

	function "abs"(Value : Short_Short_Modular_Array) return Short_Short_Modular_Array with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array with Pure_Function;
	--Array addition, add together each respective element of Left and Right

	function "+"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Short_Short_Modular_Array with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array with Pure_Function;
	--Array subtraction, subtract each respective element of Left and Right

	function "-"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Short_Short_Modular_Array with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array with Pure_Function;
	--Array multiplication, multiply together each respective element

	function "*"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Short_Short_Modular_Array with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array with Pure_Function;
	--Array division, divide each respective element of Left and Right

	function "/"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Short_Short_Modular_Array with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array with Pure_Function;
	--Array remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Short_Short_Modular_Array with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array with Pure_Function;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Short_Short_Modular_Array with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "not"(Value : Short_Short_Modular_Array) return Short_Short_Modular_Array with Pure_Function;
	--Distributed bitwise not, not each element

	function "and"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array with Pure_Function;
	--Array bitwise and, and each respective element of Left and Right

	function "and"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Short_Short_Modular_Array with Pure_Function;
	--Distributed bitwise and, and each element of Left with Right

	function "and"(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array with Pure_Function;
	--Distributed bitwise and, and each element of Right with Left

	function "or"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array with Pure_Function;
	--Array bitwise or, or each respective element of Left and Right

	function "or"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Short_Short_Modular_Array with Pure_Function;
	--Distributed bitwise or, or each element of Left with Right

	function "or"(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array with Pure_Function;
	--Distributed bitwise or, or each element of Right with Left

	function "xor"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array with Pure_Function;
	--Array bitwise xor, xor each respective element of Left and Right

	function "xor"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Short_Short_Modular_Array with Pure_Function;
	--Distributed bitwise xor, xor each element of Left with Right

	function "xor"(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Short_Short_Modular_Array with Pure_Function;
	--Distributed bitwise xor, xor each element of Right with Left

	function "="(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Boolean with Pure_Function;
	--Array equality, test each respective element of Left and Right

	function "="(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Boolean with Pure_Function;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Boolean with Pure_Function;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Short_Short_Modular_Array; Right : Short_Short_Modular_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Short_Short_Modular_Array; Right : Short_Short_Modular) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Short_Short_Modular; Right : Short_Short_Modular_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	function Max is new Modular_Max(Short_Short_Modular, Short_Short_Modular_Array) with Pure_Function;
	--Find the maximum value of the array

	function Min is new Modular_Min(Short_Short_Modular, Short_Short_Modular_Array) with Pure_Function;
	--Find the minimum value of the array

	function Apply is new Modular_Apply_Procedure(Short_Short_Modular, Short_Short_Modular_Array);
	--Apply the procedure to each value of the array, returning the result

	function Map(Value : Short_Short_Modular_Array; Callback : access Procedure(Value : in out Short_Short_Modular)) return Short_Short_Modular_Array renames Apply;

	function Apply is new Modular_Apply_Function(Short_Short_Modular, Short_Short_Modular_Array);
	--Apply the function to each value of the array, returning the result

	function Map(Value : Short_Short_Modular_Array; Callback : access Function(Value : Short_Short_Modular) return Short_Short_Modular) return Short_Short_Modular_Array renames Apply;

	function Fold is new Modular_Fold(Short_Short_Modular, Short_Short_Modular_Array);
	--Fold the array using the specified function

	-------------------------
	-- Short Modular Array --
	-------------------------

	type Short_Modular_Array is array(Positive range <>) of Short_Modular;

	function "+"(Value : Short_Modular_Array) return Short_Modular_Array with Pure_Function;
	--Distributed assertion

	function "abs"(Value : Short_Modular_Array) return Short_Modular_Array with Pure_Function;
	--Distributed absolute value
	function "+"(Left : Short_Modular_Array; Right : Short_Modular_Array) return Short_Modular_Array with Pure_Function;
	--Array addition, add together each respective element of Left and Right

	function "+"(Left : Short_Modular_Array; Right : Short_Modular) return Short_Modular_Array with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Short_Modular; Right : Short_Modular_Array) return Short_Modular_Array with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Short_Modular_Array; Right : Short_Modular_Array) return Short_Modular_Array with Pure_Function;
	--Array subtraction, subtract each respective element of Left and Right

	function "-"(Left : Short_Modular_Array; Right : Short_Modular) return Short_Modular_Array with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Short_Modular; Right : Short_Modular_Array) return Short_Modular_Array with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Short_Modular_Array; Right : Short_Modular_Array) return Short_Modular_Array with Pure_Function;
	--Array multiplication, multiply together each respective element

	function "*"(Left : Short_Modular_Array; Right : Short_Modular) return Short_Modular_Array with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Short_Modular; Right : Short_Modular_Array) return Short_Modular_Array with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Short_Modular_Array; Right : Short_Modular_Array) return Short_Modular_Array with Pure_Function;
	--Array division, divide each respective element of Left and Right

	function "/"(Left : Short_Modular_Array; Right : Short_Modular) return Short_Modular_Array with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Short_Modular; Right : Short_Modular_Array) return Short_Modular_Array with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Short_Modular_Array; Right : Short_Modular_Array) return Short_Modular_Array with Pure_Function;
	--Array remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Short_Modular_Array; Right : Short_Modular) return Short_Modular_Array with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Short_Modular; Right : Short_Modular_Array) return Short_Modular_Array with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Short_Modular_Array; Right : Short_Modular_Array) return Short_Modular_Array with Pure_Function;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Short_Modular_Array; Right : Short_Modular) return Short_Modular_Array with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Short_Modular; Right : Short_Modular_Array) return Short_Modular_Array with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "not"(Value : Short_Modular_Array) return Short_Modular_Array with Pure_Function;
	--Distributed bitwise not, not each element

	function "and"(Left : Short_Modular_Array; Right : Short_Modular_Array) return Short_Modular_Array with Pure_Function;
	--Array bitwise and, and each respective element of Left and Right

	function "and"(Left : Short_Modular_Array; Right : Short_Modular) return Short_Modular_Array with Pure_Function;
	--Distributed bitwise and, and each element of Left with Right

	function "and"(Left : Short_Modular; Right : Short_Modular_Array) return Short_Modular_Array with Pure_Function;
	--Distributed bitwise and, and each element of Right with Left

	function "or"(Left : Short_Modular_Array; Right : Short_Modular_Array) return Short_Modular_Array with Pure_Function;
	--Array bitwise or, or each respective element of Left and Right

	function "or"(Left : Short_Modular_Array; Right : Short_Modular) return Short_Modular_Array with Pure_Function;
	--Distributed bitwise or, or each element of Left with Right

	function "or"(Left : Short_Modular; Right : Short_Modular_Array) return Short_Modular_Array with Pure_Function;
	--Distributed bitwise or, or each element of Right with Left

	function "xor"(Left : Short_Modular_Array; Right : Short_Modular_Array) return Short_Modular_Array with Pure_Function;
	--Array bitwise xor, xor each respective element of Left and Right

	function "xor"(Left : Short_Modular_Array; Right : Short_Modular) return Short_Modular_Array with Pure_Function;
	--Distributed bitwise xor, xor each element of Left with Right

	function "xor"(Left : Short_Modular; Right : Short_Modular_Array) return Short_Modular_Array with Pure_Function;
	--Distributed bitwise xor, xor each element of Right with Left

	function "="(Left : Short_Modular_Array; Right : Short_Modular_Array) return Boolean with Pure_Function;
	--Array equality, test each respective element of Left and Right

	function "="(Left : Short_Modular_Array; Right : Short_Modular) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Short_Modular; Right : Short_Modular_Array) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Short_Modular_Array; Right : Short_Modular_Array) return Boolean with Pure_Function;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Short_Modular_Array; Right : Short_Modular) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Short_Modular; Right : Short_Modular_Array) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Short_Modular_Array; Right : Short_Modular_Array) return Boolean with Pure_Function;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Short_Modular_Array; Right : Short_Modular) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Short_Modular; Right : Short_Modular_Array) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Short_Modular_Array; Right : Short_Modular_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Short_Modular_Array; Right : Short_Modular) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Short_Modular; Right : Short_Modular_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Short_Modular_Array; Right : Short_Modular_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Short_Modular_Array; Right : Short_Modular) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Short_Modular; Right : Short_Modular_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	function Max is new Modular_Max(Short_Modular, Short_Modular_Array) with Pure_Function;
	--Find the maximum value of the array

	function Min is new Modular_Min(Short_Modular, Short_Modular_Array) with Pure_Function;
	--Find the minimum value of the array

	function Apply is new Modular_Apply_Procedure(Short_Modular, Short_Modular_Array);
	--Apply the procedure to each value of the array, returning the result

	function Map(Value : Short_Modular_Array; Callback : access Procedure(Value : in out Short_Modular)) return Short_Modular_Array renames Apply;

	function Apply is new Modular_Apply_Function(Short_Modular, Short_Modular_Array);
	--Apply the function to each value of the array, returning the result

	function Map(Value : Short_Modular_Array; Callback : access Function(Value : Short_Modular) return Short_Modular) return Short_Modular_Array renames Apply;

	function Fold is new Modular_Fold(Short_Modular, Short_Modular_Array);
	--Fold the array using the specified function

	-------------------
	-- Modular Array --
	-------------------

	type Modular_Array is array(Positive range <>) of Modular;

	function "+"(Value : Modular_Array) return Modular_Array with Pure_Function;
	--Distributed assertion

	function "abs"(Value : Modular_Array) return Modular_Array with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Modular_Array; Right : Modular_Array) return Modular_Array with Pure_Function;
	--Array addition, add together each respective element of Left and Right

	function "+"(Left : Modular_Array; Right : Modular) return Modular_Array with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Modular; Right : Modular_Array) return Modular_Array with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Modular_Array; Right : Modular_Array) return Modular_Array with Pure_Function;
	--Array subtraction, subtract each respective element of Left and Right

	function "-"(Left : Modular_Array; Right : Modular) return Modular_Array with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Modular; Right : Modular_Array) return Modular_Array with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Modular_Array; Right : Modular_Array) return Modular_Array with Pure_Function;
	--Array multiplication, multiply together each respective element

	function "*"(Left : Modular_Array; Right : Modular) return Modular_Array with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Modular; Right : Modular_Array) return Modular_Array with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Modular_Array; Right : Modular_Array) return Modular_Array with Pure_Function;
	--Array division, divide each respective element of Left and Right

	function "/"(Left : Modular_Array; Right : Modular) return Modular_Array with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Modular; Right : Modular_Array) return Modular_Array with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Modular_Array; Right : Modular_Array) return Modular_Array with Pure_Function;
	--Array remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Modular_Array; Right : Modular) return Modular_Array with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Modular; Right : Modular_Array) return Modular_Array with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Modular_Array; Right : Modular_Array) return Modular_Array with Pure_Function;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Modular_Array; Right : Modular) return Modular_Array with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Modular; Right : Modular_Array) return Modular_Array with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "not"(Value : Modular_Array) return Modular_Array with Pure_Function;
	--Distributed bitwise not, not each element

	function "and"(Left : Modular_Array; Right : Modular_Array) return Modular_Array with Pure_Function;
	--Array bitwise and, and each respective element of Left and Right

	function "and"(Left : Modular_Array; Right : Modular) return Modular_Array with Pure_Function;
	--Distributed bitwise and, and each element of Left with Right

	function "and"(Left : Modular; Right : Modular_Array) return Modular_Array with Pure_Function;
	--Distributed bitwise and, and each element of Right with Left

	function "or"(Left : Modular_Array; Right : Modular_Array) return Modular_Array with Pure_Function;
	--Array bitwise or, or each respective element of Left and Right

	function "or"(Left : Modular_Array; Right : Modular) return Modular_Array with Pure_Function;
	--Distributed bitwise or, or each element of Left with Right

	function "or"(Left : Modular; Right : Modular_Array) return Modular_Array with Pure_Function;
	--Distributed bitwise or, or each element of Right with Left

	function "xor"(Left : Modular_Array; Right : Modular_Array) return Modular_Array with Pure_Function;
	--Array bitwise xor, xor each respective element of Left and Right

	function "xor"(Left : Modular_Array; Right : Modular) return Modular_Array with Pure_Function;
	--Distributed bitwise xor, xor each element of Left with Right

	function "xor"(Left : Modular; Right : Modular_Array) return Modular_Array with Pure_Function;
	--Distributed bitwise xor, xor each element of Right with Left

	function "="(Left : Modular_Array; Right : Modular_Array) return Boolean with Pure_Function;
	--Array equality, test each respective element of Left and Right

	function "="(Left : Modular_Array; Right : Modular) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Modular; Right : Modular_Array) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Modular_Array; Right : Modular_Array) return Boolean with Pure_Function;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Modular_Array; Right : Modular) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Modular; Right : Modular_Array) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Modular_Array; Right : Modular_Array) return Boolean with Pure_Function;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Modular_Array; Right : Modular) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Modular; Right : Modular_Array) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Modular_Array; Right : Modular_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Modular_Array; Right : Modular) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Modular; Right : Modular_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Modular_Array; Right : Modular_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Modular_Array; Right : Modular) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Modular; Right : Modular_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	function Max is new Modular_Max(Modular, Modular_Array) with Pure_Function;
	--Find the maximum value of the array

	function Min is new Modular_Min(Modular, Modular_Array) with Pure_Function;
	--Find the minimum value of the array

	function Apply is new Modular_Apply_Procedure(Modular, Modular_Array);
	--Apply the procedure to each value of the array, returning the result

	function Map(Value : Modular_Array; Callback : access Procedure(Value : in out Modular)) return Modular_Array renames Apply;

	function Apply is new Modular_Apply_Function(Modular, Modular_Array);
	--Apply the function to each value of the array, returning the result

	function Map(Value : Modular_Array; Callback : access Function(Value : Modular) return Modular) return Modular_Array renames Apply;

	function Fold is new Modular_Fold(Modular, Modular_Array);
	--Fold the array using the specified function

	------------------------
	-- Long Modular Array --
	------------------------

	type Long_Modular_Array is array(Positive range <>) of Long_Modular;

	function "+"(Value : Long_Modular_Array) return Long_Modular_Array with Pure_Function;
	--Distributed assertion

	function "abs"(Value : Long_Modular_Array) return Long_Modular_Array with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Long_Modular_Array; Right : Long_Modular_Array) return Long_Modular_Array with Pure_Function;
	--Array addition, add together each respective element of Left and Right

	function "+"(Left : Long_Modular_Array; Right : Long_Modular) return Long_Modular_Array with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Long_Modular; Right : Long_Modular_Array) return Long_Modular_Array with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Long_Modular_Array; Right : Long_Modular_Array) return Long_Modular_Array with Pure_Function;
	--Array subtraction, subtract each respective element of Left and Right

	function "-"(Left : Long_Modular_Array; Right : Long_Modular) return Long_Modular_Array with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Long_Modular; Right : Long_Modular_Array) return Long_Modular_Array with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Long_Modular_Array; Right : Long_Modular_Array) return Long_Modular_Array with Pure_Function;
	--Array multiplication, multiply together each respective element

	function "*"(Left : Long_Modular_Array; Right : Long_Modular) return Long_Modular_Array with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Long_Modular; Right : Long_Modular_Array) return Long_Modular_Array with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Long_Modular_Array; Right : Long_Modular_Array) return Long_Modular_Array with Pure_Function;
	--Array division, divide each respective element of Left and Right

	function "/"(Left : Long_Modular_Array; Right : Long_Modular) return Long_Modular_Array with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Long_Modular; Right : Long_Modular_Array) return Long_Modular_Array with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Long_Modular_Array; Right : Long_Modular_Array) return Long_Modular_Array with Pure_Function;
	--Array remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Long_Modular_Array; Right : Long_Modular) return Long_Modular_Array with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Long_Modular; Right : Long_Modular_Array) return Long_Modular_Array with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Long_Modular_Array; Right : Long_Modular_Array) return Long_Modular_Array with Pure_Function;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Long_Modular_Array; Right : Long_Modular) return Long_Modular_Array with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Long_Modular; Right : Long_Modular_Array) return Long_Modular_Array with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "not"(Value : Long_Modular_Array) return Long_Modular_Array with Pure_Function;
	--Distributed bitwise not, not each element

	function "and"(Left : Long_Modular_Array; Right : Long_Modular_Array) return Long_Modular_Array with Pure_Function;
	--Array bitwise and, and each respective element of Left and Right

	function "and"(Left : Long_Modular_Array; Right : Long_Modular) return Long_Modular_Array with Pure_Function;
	--Distributed bitwise and, and each element of Left with Right

	function "and"(Left : Long_Modular; Right : Long_Modular_Array) return Long_Modular_Array with Pure_Function;
	--Distributed bitwise and, and each element of Right with Left

	function "or"(Left : Long_Modular_Array; Right : Long_Modular_Array) return Long_Modular_Array with Pure_Function;
	--Array bitwise or, or each respective element of Left and Right

	function "or"(Left : Long_Modular_Array; Right : Long_Modular) return Long_Modular_Array with Pure_Function;
	--Distributed bitwise or, or each element of Left with Right

	function "or"(Left : Long_Modular; Right : Long_Modular_Array) return Long_Modular_Array with Pure_Function;
	--Distributed bitwise or, or each element of Right with Left

	function "xor"(Left : Long_Modular_Array; Right : Long_Modular_Array) return Long_Modular_Array with Pure_Function;
	--Array bitwise xor, xor each respective element of Left and Right

	function "xor"(Left : Long_Modular_Array; Right : Long_Modular) return Long_Modular_Array with Pure_Function;
	--Distributed bitwise xor, xor each element of Left with Right

	function "xor"(Left : Long_Modular; Right : Long_Modular_Array) return Long_Modular_Array with Pure_Function;
	--Distributed bitwise xor, xor each element of Right with Left

	function "="(Left : Long_Modular_Array; Right : Long_Modular_Array) return Boolean with Pure_Function;
	--Array equality, test each respective element of Left and Right

	function "="(Left : Long_Modular_Array; Right : Long_Modular) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Long_Modular; Right : Long_Modular_Array) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Long_Modular_Array; Right : Long_Modular_Array) return Boolean with Pure_Function;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Long_Modular_Array; Right : Long_Modular) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Long_Modular; Right : Long_Modular_Array) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Long_Modular_Array; Right : Long_Modular_Array) return Boolean with Pure_Function;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Long_Modular_Array; Right : Long_Modular) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Long_Modular; Right : Long_Modular_Array) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Long_Modular_Array; Right : Long_Modular_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Long_Modular_Array; Right : Long_Modular) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Long_Modular; Right : Long_Modular_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Long_Modular_Array; Right : Long_Modular_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Long_Modular_Array; Right : Long_Modular) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Long_Modular; Right : Long_Modular_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	function Max is new Modular_Max(Long_Modular, Long_Modular_Array) with Pure_Function;
	--Find the maximum value of the array

	function Min is new Modular_Min(Long_Modular, Long_Modular_Array) with Pure_Function;
	--Find the minimum value of the array

	function Apply is new Modular_Apply_Procedure(Long_Modular, Long_Modular_Array);
	--Apply the procedure to each value of the array, returning the result

	function Map(Value : Long_Modular_Array; Callback : access Procedure(Value : in out Long_Modular)) return Long_Modular_Array renames Apply;

	function Apply is new Modular_Apply_Function(Long_Modular, Long_Modular_Array);
	--Apply the function to each value of the array, returning the result

	function Map(Value : Long_Modular_Array; Callback : access Function(Value : Long_Modular) return Long_Modular) return Long_Modular_Array renames Apply;

	function Fold is new Modular_Fold(Long_Modular, Long_Modular_Array);
	--Fold the array using the specified function

	-----------------------------
	-- Long Long Modular Array --
	-----------------------------

	type Long_Long_Modular_Array is array(Positive range <>) of Long_Long_Modular;

	function "+"(Value : Long_Long_Modular_Array) return Long_Long_Modular_Array with Pure_Function;
	--Distributed assertion

	function "abs"(Value : Long_Long_Modular_Array) return Long_Long_Modular_Array with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array with Pure_Function;
	--Array addition, add together each respective element of Left and Right

	function "+"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Long_Long_Modular_Array with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array with Pure_Function;
	--Array subtraction, subtract each respective element of Left and Right

	function "-"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Long_Long_Modular_Array with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array with Pure_Function;
	--Array multiplication, multiply together each respective element

	function "*"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Long_Long_Modular_Array with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array with Pure_Function;
	--Array division, divide each respective element of Left and Right

	function "/"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Long_Long_Modular_Array with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array with Pure_Function;
	--Array remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Long_Long_Modular_Array with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array with Pure_Function;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Long_Long_Modular_Array with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "not"(Value : Long_Long_Modular_Array) return Long_Long_Modular_Array with Pure_Function;
	--Distributed bitwise not, not each element

	function "and"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array with Pure_Function;
	--Array bitwise and, and each respective element of Left and Right

	function "and"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Long_Long_Modular_Array with Pure_Function;
	--Distributed bitwise and, and each element of Left with Right

	function "and"(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array with Pure_Function;
	--Distributed bitwise and, and each element of Right with Left

	function "or"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array with Pure_Function;
	--Array bitwise or, or each respective element of Left and Right

	function "or"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Long_Long_Modular_Array with Pure_Function;
	--Distributed bitwise or, or each element of Left with Right

	function "or"(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array with Pure_Function;
	--Distributed bitwise or, or each element of Right with Left

	function "xor"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array with Pure_Function;
	--Array bitwise xor, xor each respective element of Left and Right

	function "xor"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Long_Long_Modular_Array with Pure_Function;
	--Distributed bitwise xor, xor each element of Left with Right

	function "xor"(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Long_Long_Modular_Array with Pure_Function;
	--Distributed bitwise xor, xor each element of Right with Left

	function "="(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Boolean with Pure_Function;
	--Array equality, test each respective element of Left and Right

	function "="(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Boolean with Pure_Function;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Boolean with Pure_Function;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Long_Long_Modular_Array; Right : Long_Long_Modular_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Long_Long_Modular_Array; Right : Long_Long_Modular) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Long_Long_Modular; Right : Long_Long_Modular_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	function Max is new Modular_Max(Long_Long_Modular, Long_Long_Modular_Array) with Pure_Function;
	--Find the maximum value of the array

	function Min is new Modular_Min(Long_Long_Modular, Long_Long_Modular_Array) with Pure_Function;
	--Find the minimum value of the array

	function Apply is new Modular_Apply_Procedure(Long_Long_Modular, Long_Long_Modular_Array);
	--Apply the procedure to each value of the array, returning the result

	function Map(Value : Long_Long_Modular_Array; Callback : access Procedure(Value : in out Long_Long_Modular)) return Long_Long_Modular_Array renames Apply;

	function Apply is new Modular_Apply_Function(Long_Long_Modular, Long_Long_Modular_Array);
	--Apply the function to each value of the array, returning the result

	function Map(Value : Long_Long_Modular_Array; Callback : access Function(Value : Long_Long_Modular) return Long_Long_Modular) return Long_Long_Modular_Array renames Apply;

	function Fold is new Modular_Fold(Long_Long_Modular, Long_Long_Modular_Array);
	--Fold the array using the specified function

	-----------------------------
	-- Short Short Fixed Array --
	-----------------------------

	type Short_Short_Fixed_Array is array(Positive range <>) of Short_Short_Fixed;

	function "+"(Value : Short_Short_Fixed_Array) return Short_Short_Fixed_Array with Pure_Function;
	--Distributed assertion

	function "-"(Value : Short_Short_Fixed_Array) return Short_Short_Fixed_Array with Pure_Function;
	--Distributed negation

	function "abs"(Value : Short_Short_Fixed_Array) return Short_Short_Fixed_Array with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed_Array) return Short_Short_Fixed_Array with Pure_Function;
	--Array addition, add together each respective element of Left and Right

	function "+"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed) return Short_Short_Fixed_Array with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Array) return Short_Short_Fixed_Array with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed_Array) return Short_Short_Fixed_Array with Pure_Function;
	--Array subtraction, subtract each respective element of Left and Right

	function "-"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed) return Short_Short_Fixed_Array with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Array) return Short_Short_Fixed_Array with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed_Array) return Short_Short_Fixed_Array with Pure_Function;
	--Array multiplication, multiply together each respective element

	function "*"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed) return Short_Short_Fixed_Array with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Array) return Short_Short_Fixed_Array with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed_Array) return Short_Short_Fixed_Array with Pure_Function;
	--Array division, divide each respective element of Left and Right

	function "/"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed) return Short_Short_Fixed_Array with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Array) return Short_Short_Fixed_Array with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed_Array) return Short_Short_Fixed_Array with Pure_Function;
	--Array remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed) return Short_Short_Fixed_Array with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Array) return Short_Short_Fixed_Array with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed_Array) return Short_Short_Fixed_Array with Pure_Function;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed) return Short_Short_Fixed_Array with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Array) return Short_Short_Fixed_Array with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed_Array) return Boolean with Pure_Function;
	--Array equality, test each respective element of Left and Right

	function "="(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Array) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed_Array) return Boolean with Pure_Function;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Array) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed_Array) return Boolean with Pure_Function;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Array) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Short_Short_Fixed_Array; Right : Short_Short_Fixed) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	function Max is new Fixed_Max(Short_Short_Fixed, Short_Short_Fixed_Array) with Pure_Function;
	--Find the maximum value of the array

	function Min is new Fixed_Min(Short_Short_Fixed, Short_Short_Fixed_Array) with Pure_Function;
	--Find the minimum value of the array

	function Apply is new Fixed_Apply_Procedure(Short_Short_Fixed, Short_Short_Fixed_Array);
	--Apply the procedure to each value of the array, returning the result

	function Map(Value : Short_Short_Fixed_Array; Callback : access Procedure(Value : in out Short_Short_Fixed)) return Short_Short_Fixed_Array renames Apply;

	function Apply is new Fixed_Apply_Function(Short_Short_Fixed, Short_Short_Fixed_Array);
	--Apply the function to each value of the array, returning the result

	function Map(Value : Short_Short_Fixed_Array; Callback : access Function(Value : Short_Short_Fixed) return Short_Short_Fixed) return Short_Short_Fixed_Array renames Apply;

	function Fold is new Fixed_Fold(Short_Short_Fixed, Short_Short_Fixed_Array);
	--Fold the array using the specified function

	-----------------------
	-- Short Fixed Array --
	-----------------------

	type Short_Fixed_Array is array(Positive range <>) of Short_Fixed;

	function "+"(Value : Short_Fixed_Array) return Short_Fixed_Array with Pure_Function;
	--Distributed assertion

	function "-"(Value : Short_Fixed_Array) return Short_Fixed_Array with Pure_Function;
	--Distributed negation

	function "abs"(Value : Short_Fixed_Array) return Short_Fixed_Array with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Short_Fixed_Array; Right : Short_Fixed_Array) return Short_Fixed_Array with Pure_Function;
	--Array addition, add together each respective element of Left and Right

	function "+"(Left : Short_Fixed_Array; Right : Short_Fixed) return Short_Fixed_Array with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Short_Fixed; Right : Short_Fixed_Array) return Short_Fixed_Array with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Short_Fixed_Array; Right : Short_Fixed_Array) return Short_Fixed_Array with Pure_Function;
	--Array subtraction, subtract each respective element of Left and Right

	function "-"(Left : Short_Fixed_Array; Right : Short_Fixed) return Short_Fixed_Array with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Short_Fixed; Right : Short_Fixed_Array) return Short_Fixed_Array with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Short_Fixed_Array; Right : Short_Fixed_Array) return Short_Fixed_Array with Pure_Function;
	--Array multiplication, multiply together each respective element

	function "*"(Left : Short_Fixed_Array; Right : Short_Fixed) return Short_Fixed_Array with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Short_Fixed; Right : Short_Fixed_Array) return Short_Fixed_Array with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Short_Fixed_Array; Right : Short_Fixed_Array) return Short_Fixed_Array with Pure_Function;
	--Array division, divide each respective element of Left and Right

	function "/"(Left : Short_Fixed_Array; Right : Short_Fixed) return Short_Fixed_Array with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Short_Fixed; Right : Short_Fixed_Array) return Short_Fixed_Array with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Short_Fixed_Array; Right : Short_Fixed_Array) return Short_Fixed_Array with Pure_Function;
	--Array remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Short_Fixed_Array; Right : Short_Fixed) return Short_Fixed_Array with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Short_Fixed; Right : Short_Fixed_Array) return Short_Fixed_Array with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Short_Fixed_Array; Right : Short_Fixed_Array) return Short_Fixed_Array with Pure_Function;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Short_Fixed_Array; Right : Short_Fixed) return Short_Fixed_Array with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Short_Fixed; Right : Short_Fixed_Array) return Short_Fixed_Array with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Short_Fixed_Array; Right : Short_Fixed_Array) return Boolean with Pure_Function;
	--Array equality, test each respective element of Left and Right

	function "="(Left : Short_Fixed_Array; Right : Short_Fixed) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Short_Fixed; Right : Short_Fixed_Array) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Short_Fixed_Array; Right : Short_Fixed_Array) return Boolean with Pure_Function;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Short_Fixed_Array; Right : Short_Fixed) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Short_Fixed; Right : Short_Fixed_Array) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Short_Fixed_Array; Right : Short_Fixed_Array) return Boolean with Pure_Function;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Short_Fixed_Array; Right : Short_Fixed) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Short_Fixed; Right : Short_Fixed_Array) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Short_Fixed_Array; Right : Short_Fixed_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Short_Fixed_Array; Right : Short_Fixed) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Short_Fixed; Right : Short_Fixed_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Short_Fixed_Array; Right : Short_Fixed_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Short_Fixed_Array; Right : Short_Fixed) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Short_Fixed; Right : Short_Fixed_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	function Max is new Fixed_Max(Short_Fixed, Short_Fixed_Array) with Pure_Function;
	--Find the maximum value of the array

	function Min is new Fixed_Min(Short_Fixed, Short_Fixed_Array) with Pure_Function;
	--Find the minimum value of the array

	function Apply is new Fixed_Apply_Procedure(Short_Fixed, Short_Fixed_Array);
	--Apply the procedure to each value of the array, returning the result

	function Map(Value : Short_Fixed_Array; Callback : access Procedure(Value : in out Short_Fixed)) return Short_Fixed_Array renames Apply;

	function Apply is new Fixed_Apply_Function(Short_Fixed, Short_Fixed_Array);
	--Apply the function to each value of the array, returning the result

	function Map(Value : Short_Fixed_Array; Callback : access Function(Value : Short_Fixed) return Short_Fixed) return Short_Fixed_Array renames Apply;

	function Fold is new Fixed_Fold(Short_Fixed, Short_Fixed_Array);
	--Fold the array using the specified function

	-----------------
	-- Fixed Array --
	-----------------

	type Fixed_Array is array(Positive range <>) of Fixed;

	function "+"(Value : Fixed_Array) return Fixed_Array with Pure_Function;
	--Distributed assertion

	function "-"(Value : Fixed_Array) return Fixed_Array with Pure_Function;
	--Distributed negation

	function "abs"(Value : Fixed_Array) return Fixed_Array with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Fixed_Array; Right : Fixed_Array) return Fixed_Array with Pure_Function;
	--Array addition, add together each respective element of Left and Right

	function "+"(Left : Fixed_Array; Right : Fixed) return Fixed_Array with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Fixed; Right : Fixed_Array) return Fixed_Array with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Fixed_Array; Right : Fixed_Array) return Fixed_Array with Pure_Function;
	--Array subtraction, subtract each respective element of Left and Right

	function "-"(Left : Fixed_Array; Right : Fixed) return Fixed_Array with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Fixed; Right : Fixed_Array) return Fixed_Array with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Fixed_Array; Right : Fixed_Array) return Fixed_Array with Pure_Function;
	--Array multiplication, multiply together each respective element

	function "*"(Left : Fixed_Array; Right : Fixed) return Fixed_Array with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Fixed; Right : Fixed_Array) return Fixed_Array with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Fixed_Array; Right : Fixed_Array) return Fixed_Array with Pure_Function;
	--Array division, divide each respective element of Left and Right

	function "/"(Left : Fixed_Array; Right : Fixed) return Fixed_Array with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Fixed; Right : Fixed_Array) return Fixed_Array with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Fixed_Array; Right : Fixed_Array) return Fixed_Array with Pure_Function;
	--Array remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Fixed_Array; Right : Fixed) return Fixed_Array with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Fixed; Right : Fixed_Array) return Fixed_Array with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Fixed_Array; Right : Fixed_Array) return Fixed_Array with Pure_Function;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Fixed_Array; Right : Fixed) return Fixed_Array with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Fixed; Right : Fixed_Array) return Fixed_Array with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Fixed_Array; Right : Fixed_Array) return Boolean with Pure_Function;
	--Array equality, test each respective element of Left and Right

	function "="(Left : Fixed_Array; Right : Fixed) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Fixed; Right : Fixed_Array) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Fixed_Array; Right : Fixed_Array) return Boolean with Pure_Function;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Fixed_Array; Right : Fixed) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Fixed; Right : Fixed_Array) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Fixed_Array; Right : Fixed_Array) return Boolean with Pure_Function;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Fixed_Array; Right : Fixed) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Fixed; Right : Fixed_Array) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Fixed_Array; Right : Fixed_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Fixed_Array; Right : Fixed) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Fixed; Right : Fixed_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Fixed_Array; Right : Fixed_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Fixed_Array; Right : Fixed) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Fixed; Right : Fixed_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	function Max is new Fixed_Max(Fixed, Fixed_Array) with Pure_Function;
	--Find the maximum value of the array

	function Min is new Fixed_Min(Fixed, Fixed_Array) with Pure_Function;
	--Find the minimum value of the array

	function Apply is new Fixed_Apply_Procedure(Fixed, Fixed_Array);
	--Apply the procedure to each value of the array, returning the result

	function Map(Value : Fixed_Array; Callback : access Procedure(Value : in out Fixed)) return Fixed_Array renames Apply;

	function Apply is new Fixed_Apply_Function(Fixed, Fixed_Array);
	--Apply the function to each value of the array, returning the result

	function Map(Value : Fixed_Array; Callback : access Function(Value : Fixed) return Fixed) return Fixed_Array renames Apply;

	function Fold is new Fixed_Fold(Fixed, Fixed_Array);
	--Fold the array using the specified function

	----------------------
	-- Long_Fixed Array --
	----------------------

	type Long_Fixed_Array is array(Positive range <>) of Long_Fixed;

	function "+"(Value : Long_Fixed_Array) return Long_Fixed_Array with Pure_Function;
	--Distributed assertion

	function "-"(Value : Long_Fixed_Array) return Long_Fixed_Array with Pure_Function;
	--Distributed negation

	function "abs"(Value : Long_Fixed_Array) return Long_Fixed_Array with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Long_Fixed_Array; Right : Long_Fixed_Array) return Long_Fixed_Array with Pure_Function;
	--Array addition, add together each respective element of Left and Right

	function "+"(Left : Long_Fixed_Array; Right : Long_Fixed) return Long_Fixed_Array with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Long_Fixed; Right : Long_Fixed_Array) return Long_Fixed_Array with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Long_Fixed_Array; Right : Long_Fixed_Array) return Long_Fixed_Array with Pure_Function;
	--Array subtraction, subtract each respective element of Left and Right

	function "-"(Left : Long_Fixed_Array; Right : Long_Fixed) return Long_Fixed_Array with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Long_Fixed; Right : Long_Fixed_Array) return Long_Fixed_Array with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Long_Fixed_Array; Right : Long_Fixed_Array) return Long_Fixed_Array with Pure_Function;
	--Array multiplication, multiply together each respective element

	function "*"(Left : Long_Fixed_Array; Right : Long_Fixed) return Long_Fixed_Array with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Long_Fixed; Right : Long_Fixed_Array) return Long_Fixed_Array with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Long_Fixed_Array; Right : Long_Fixed_Array) return Long_Fixed_Array with Pure_Function;
	--Array division, divide each respective element of Left and Right

	function "/"(Left : Long_Fixed_Array; Right : Long_Fixed) return Long_Fixed_Array with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Long_Fixed; Right : Long_Fixed_Array) return Long_Fixed_Array with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Long_Fixed_Array; Right : Long_Fixed_Array) return Long_Fixed_Array with Pure_Function;
	--Array remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Long_Fixed_Array; Right : Long_Fixed) return Long_Fixed_Array with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Long_Fixed; Right : Long_Fixed_Array) return Long_Fixed_Array with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Long_Fixed_Array; Right : Long_Fixed_Array) return Long_Fixed_Array with Pure_Function;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Long_Fixed_Array; Right : Long_Fixed) return Long_Fixed_Array with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Long_Fixed; Right : Long_Fixed_Array) return Long_Fixed_Array with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Long_Fixed_Array; Right : Long_Fixed_Array) return Boolean with Pure_Function;
	--Array equality, test each respective element of Left and Right

	function "="(Left : Long_Fixed_Array; Right : Long_Fixed) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Long_Fixed; Right : Long_Fixed_Array) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Long_Fixed_Array; Right : Long_Fixed_Array) return Boolean with Pure_Function;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Long_Fixed_Array; Right : Long_Fixed) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Long_Fixed; Right : Long_Fixed_Array) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Long_Fixed_Array; Right : Long_Fixed_Array) return Boolean with Pure_Function;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Long_Fixed_Array; Right : Long_Fixed) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Long_Fixed; Right : Long_Fixed_Array) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Long_Fixed_Array; Right : Long_Fixed_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Long_Fixed_Array; Right : Long_Fixed) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Long_Fixed; Right : Long_Fixed_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Long_Fixed_Array; Right : Long_Fixed_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Long_Fixed_Array; Right : Long_Fixed) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Long_Fixed; Right : Long_Fixed_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	function Max is new Fixed_Max(Long_Fixed, Long_Fixed_Array) with Pure_Function;
	--Find the maximum value of the array

	function Min is new Fixed_Min(Long_Fixed, Long_Fixed_Array) with Pure_Function;
	--Find the minimum value of the array

	function Apply is new Fixed_Apply_Procedure(Long_Fixed, Long_Fixed_Array);
	--Apply the procedure to each value of the array, returning the result

	function Map(Value : Long_Fixed_Array; Callback : access Procedure(Value : in out Long_Fixed)) return Long_Fixed_Array renames Apply;

	function Apply is new Fixed_Apply_Function(Long_Fixed, Long_Fixed_Array);
	--Apply the function to each value of the array, returning the result

	function Map(Value : Long_Fixed_Array; Callback : access Function(Value : Long_Fixed) return Long_Fixed) return Long_Fixed_Array renames Apply;

	function Fold is new Fixed_Fold(Long_Fixed, Long_Fixed_Array);
	--Fold the array using the specified function

	-------------------------
	-- Short Decimal Array --
	-------------------------

	type Short_Decimal_Array is array(Positive range <>) of Short_Decimal;

	function "+"(Value : Short_Decimal_Array) return Short_Decimal_Array with Pure_Function;
	--Distributed assertion

	function "-"(Value : Short_Decimal_Array) return Short_Decimal_Array with Pure_Function;
	--Distributed negation

	function "abs"(Value : Short_Decimal_Array) return Short_Decimal_Array with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Short_Decimal_Array; Right : Short_Decimal_Array) return Short_Decimal_Array with Pure_Function;
	--Array addition, add together each respective element of Left and Right

	function "+"(Left : Short_Decimal_Array; Right : Short_Decimal) return Short_Decimal_Array with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Short_Decimal; Right : Short_Decimal_Array) return Short_Decimal_Array with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Short_Decimal_Array; Right : Short_Decimal_Array) return Short_Decimal_Array with Pure_Function;
	--Array subtraction, subtract each respective element of Left and Right

	function "-"(Left : Short_Decimal_Array; Right : Short_Decimal) return Short_Decimal_Array with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Short_Decimal; Right : Short_Decimal_Array) return Short_Decimal_Array with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Short_Decimal_Array; Right : Short_Decimal_Array) return Short_Decimal_Array with Pure_Function;
	--Array multiplication, multiply together each respective element

	function "*"(Left : Short_Decimal_Array; Right : Short_Decimal) return Short_Decimal_Array with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Short_Decimal; Right : Short_Decimal_Array) return Short_Decimal_Array with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Short_Decimal_Array; Right : Short_Decimal_Array) return Short_Decimal_Array with Pure_Function;
	--Array division, divide each respective element of Left and Right

	function "/"(Left : Short_Decimal_Array; Right : Short_Decimal) return Short_Decimal_Array with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Short_Decimal; Right : Short_Decimal_Array) return Short_Decimal_Array with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Short_Decimal_Array; Right : Short_Decimal_Array) return Short_Decimal_Array with Pure_Function;
	--Array remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Short_Decimal_Array; Right : Short_Decimal) return Short_Decimal_Array with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Short_Decimal; Right : Short_Decimal_Array) return Short_Decimal_Array with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Short_Decimal_Array; Right : Short_Decimal_Array) return Short_Decimal_Array with Pure_Function;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Short_Decimal_Array; Right : Short_Decimal) return Short_Decimal_Array with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Short_Decimal; Right : Short_Decimal_Array) return Short_Decimal_Array with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Short_Decimal_Array; Right : Short_Decimal_Array) return Boolean with Pure_Function;
	--Array equality, test each respective element of Left and Right

	function "="(Left : Short_Decimal_Array; Right : Short_Decimal) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Short_Decimal; Right : Short_Decimal_Array) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Short_Decimal_Array; Right : Short_Decimal_Array) return Boolean with Pure_Function;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Short_Decimal_Array; Right : Short_Decimal) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Short_Decimal; Right : Short_Decimal_Array) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Short_Decimal_Array; Right : Short_Decimal_Array) return Boolean with Pure_Function;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Short_Decimal_Array; Right : Short_Decimal) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Short_Decimal; Right : Short_Decimal_Array) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Short_Decimal_Array; Right : Short_Decimal_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Short_Decimal_Array; Right : Short_Decimal) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Short_Decimal; Right : Short_Decimal_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Short_Decimal_Array; Right : Short_Decimal_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Short_Decimal_Array; Right : Short_Decimal) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Short_Decimal; Right : Short_Decimal_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	function Max is new Decimal_Max(Short_Decimal, Short_Decimal_Array) with Pure_Function;
	--Find the maximum value of the array

	function Min is new Decimal_Min(Short_Decimal, Short_Decimal_Array) with Pure_Function;
	--Find the minimum value of the array

	function Apply is new Decimal_Apply_Procedure(Short_Decimal, Short_Decimal_Array);
	--Apply the procedure to each value of the array, returning the result

	function Map(Value : Short_Decimal_Array; Callback : access Procedure(Value : in out Short_Decimal)) return Short_Decimal_Array renames Apply;

	function Apply is new Decimal_Apply_Function(Short_Decimal, Short_Decimal_Array);
	--Apply the function to each value of the array, returning the result

	function Map(Value : Short_Decimal_Array; Callback : access Function(Value : Short_Decimal) return Short_Decimal) return Short_Decimal_Array renames Apply;

	function Fold is new Decimal_Fold(Short_Decimal, Short_Decimal_Array);
	--Fold the array using the specified function

	-------------------
	-- Decimal Array --
	-------------------

	type Decimal_Array is array(Positive range <>) of Decimal;

	function "+"(Value : Decimal_Array) return Decimal_Array with Pure_Function;
	--Distributed assertion

	function "-"(Value : Decimal_Array) return Decimal_Array with Pure_Function;
	--Distributed negation

	function "abs"(Value : Decimal_Array) return Decimal_Array with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Decimal_Array; Right : Decimal_Array) return Decimal_Array with Pure_Function;
	--Array addition, add together each respective element of Left and Right

	function "+"(Left : Decimal_Array; Right : Decimal) return Decimal_Array with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Decimal; Right : Decimal_Array) return Decimal_Array with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Decimal_Array; Right : Decimal_Array) return Decimal_Array with Pure_Function;
	--Array subtraction, subtract each respective element of Left and Right

	function "-"(Left : Decimal_Array; Right : Decimal) return Decimal_Array with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Decimal; Right : Decimal_Array) return Decimal_Array with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Decimal_Array; Right : Decimal_Array) return Decimal_Array with Pure_Function;
	--Array multiplication, multiply together each respective element

	function "*"(Left : Decimal_Array; Right : Decimal) return Decimal_Array with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Decimal; Right : Decimal_Array) return Decimal_Array with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Decimal_Array; Right : Decimal_Array) return Decimal_Array with Pure_Function;
	--Array division, divide each respective element of Left and Right

	function "/"(Left : Decimal_Array; Right : Decimal) return Decimal_Array with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Decimal; Right : Decimal_Array) return Decimal_Array with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Decimal_Array; Right : Decimal_Array) return Decimal_Array with Pure_Function;
	--Array remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Decimal_Array; Right : Decimal) return Decimal_Array with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Decimal; Right : Decimal_Array) return Decimal_Array with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Decimal_Array; Right : Decimal_Array) return Decimal_Array with Pure_Function;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Decimal_Array; Right : Decimal) return Decimal_Array with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Decimal; Right : Decimal_Array) return Decimal_Array with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Decimal_Array; Right : Decimal_Array) return Boolean with Pure_Function;
	--Array equality, test each respective element of Left and Right

	function "="(Left : Decimal_Array; Right : Decimal) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Decimal; Right : Decimal_Array) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Decimal_Array; Right : Decimal_Array) return Boolean with Pure_Function;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Decimal_Array; Right : Decimal) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Decimal; Right : Decimal_Array) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Decimal_Array; Right : Decimal_Array) return Boolean with Pure_Function;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Decimal_Array; Right : Decimal) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Decimal; Right : Decimal_Array) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Decimal_Array; Right : Decimal_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Decimal_Array; Right : Decimal) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Decimal; Right : Decimal_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Decimal_Array; Right : Decimal_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Decimal_Array; Right : Decimal) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Decimal; Right : Decimal_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	function Max is new Decimal_Max(Decimal, Decimal_Array) with Pure_Function;
	--Find the maximum value of the array

	function Min is new Decimal_Min(Decimal, Decimal_Array) with Pure_Function;
	--Find the minimum value of the array

	function Apply is new Decimal_Apply_Procedure(Decimal, Decimal_Array);
	--Apply the procedure to each value of the array, returning the result

	function Map(Value : Decimal_Array; Callback : access Procedure(Value : in out Decimal)) return Decimal_Array renames Apply;

	function Apply is new Decimal_Apply_Function(Decimal, Decimal_Array);
	--Apply the function to each value of the array, returning the result

	function Map(Value : Decimal_Array; Callback : access Function(Value : Decimal) return Decimal) return Decimal_Array renames Apply;

	function Fold is new Decimal_Fold(Decimal, Decimal_Array);
	--Fold the array using the specified function

	------------------------
	-- Long Decimal Array --
	------------------------

	type Long_Decimal_Array is array(Positive range <>) of Long_Decimal;

	function "+"(Value : Long_Decimal_Array) return Long_Decimal_Array with Pure_Function;
	--Distributed assertion

	function "-"(Value : Long_Decimal_Array) return Long_Decimal_Array with Pure_Function;
	--Distributed negation

	function "abs"(Value : Long_Decimal_Array) return Long_Decimal_Array with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Long_Decimal_Array; Right : Long_Decimal_Array) return Long_Decimal_Array with Pure_Function;
	--Array addition, add together each respective element of Left and Right

	function "+"(Left : Long_Decimal_Array; Right : Long_Decimal) return Long_Decimal_Array with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Long_Decimal; Right : Long_Decimal_Array) return Long_Decimal_Array with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Long_Decimal_Array; Right : Long_Decimal_Array) return Long_Decimal_Array with Pure_Function;
	--Array subtraction, subtract each respective element of Left and Right

	function "-"(Left : Long_Decimal_Array; Right : Long_Decimal) return Long_Decimal_Array with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Long_Decimal; Right : Long_Decimal_Array) return Long_Decimal_Array with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Long_Decimal_Array; Right : Long_Decimal_Array) return Long_Decimal_Array with Pure_Function;
	--Array multiplication, multiply together each respective element

	function "*"(Left : Long_Decimal_Array; Right : Long_Decimal) return Long_Decimal_Array with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Long_Decimal; Right : Long_Decimal_Array) return Long_Decimal_Array with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Long_Decimal_Array; Right : Long_Decimal_Array) return Long_Decimal_Array with Pure_Function;
	--Array division, divide each respective element of Left and Right

	function "/"(Left : Long_Decimal_Array; Right : Long_Decimal) return Long_Decimal_Array with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Long_Decimal; Right : Long_Decimal_Array) return Long_Decimal_Array with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Long_Decimal_Array; Right : Long_Decimal_Array) return Long_Decimal_Array with Pure_Function;
	--Array remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Long_Decimal_Array; Right : Long_Decimal) return Long_Decimal_Array with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Long_Decimal; Right : Long_Decimal_Array) return Long_Decimal_Array with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Long_Decimal_Array; Right : Long_Decimal_Array) return Long_Decimal_Array with Pure_Function;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Long_Decimal_Array; Right : Long_Decimal) return Long_Decimal_Array with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Long_Decimal; Right : Long_Decimal_Array) return Long_Decimal_Array with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Long_Decimal_Array; Right : Long_Decimal_Array) return Boolean with Pure_Function;
	--Array equality, test each respective element of Left and Right

	function "="(Left : Long_Decimal_Array; Right : Long_Decimal) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Long_Decimal; Right : Long_Decimal_Array) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Long_Decimal_Array; Right : Long_Decimal_Array) return Boolean with Pure_Function;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Long_Decimal_Array; Right : Long_Decimal) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Long_Decimal; Right : Long_Decimal_Array) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Long_Decimal_Array; Right : Long_Decimal_Array) return Boolean with Pure_Function;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Long_Decimal_Array; Right : Long_Decimal) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Long_Decimal; Right : Long_Decimal_Array) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Long_Decimal_Array; Right : Long_Decimal_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Long_Decimal_Array; Right : Long_Decimal) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Long_Decimal; Right : Long_Decimal_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Long_Decimal_Array; Right : Long_Decimal_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Long_Decimal_Array; Right : Long_Decimal) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Long_Decimal; Right : Long_Decimal_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	function Max is new Decimal_Max(Long_Decimal, Long_Decimal_Array) with Pure_Function;
	--Find the maximum value of the array

	function Min is new Decimal_Min(Long_Decimal, Long_Decimal_Array) with Pure_Function;
	--Find the minimum value of the array

	function Apply is new Decimal_Apply_Procedure(Long_Decimal, Long_Decimal_Array);
	--Apply the procedure to each value of the array, returning the result

	function Map(Value : Long_Decimal_Array; Callback : access Procedure(Value : in out Long_Decimal)) return Long_Decimal_Array renames Apply;

	function Apply is new Decimal_Apply_Function(Long_Decimal, Long_Decimal_Array);
	--Apply the function to each value of the array, returning the result

	function Map(Value : Long_Decimal_Array; Callback : access Function(Value : Long_Decimal) return Long_Decimal) return Long_Decimal_Array renames Apply;

	function Fold is new Decimal_Fold(Long_Decimal, Long_Decimal_Array);
	--Fold the array using the specified function

	-----------------------------
	-- Long Long Decimal Array --
	-----------------------------

	type Long_Long_Decimal_Array is array(Positive range <>) of Long_Long_Decimal;

	function "+"(Value : Long_Long_Decimal_Array) return Long_Long_Decimal_Array with Pure_Function;
	--Distributed assertion

	function "-"(Value : Long_Long_Decimal_Array) return Long_Long_Decimal_Array with Pure_Function;
	--Distributed negation

	function "abs"(Value : Long_Long_Decimal_Array) return Long_Long_Decimal_Array with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal_Array) return Long_Long_Decimal_Array with Pure_Function;
	--Array addition, add together each respective element of Left and Right

	function "+"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal) return Long_Long_Decimal_Array with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Array) return Long_Long_Decimal_Array with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal_Array) return Long_Long_Decimal_Array with Pure_Function;
	--Array subtraction, subtract each respective element of Left and Right

	function "-"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal) return Long_Long_Decimal_Array with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Array) return Long_Long_Decimal_Array with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal_Array) return Long_Long_Decimal_Array with Pure_Function;
	--Array multiplication, multiply together each respective element

	function "*"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal) return Long_Long_Decimal_Array with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Array) return Long_Long_Decimal_Array with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal_Array) return Long_Long_Decimal_Array with Pure_Function;
	--Array division, divide each respective element of Left and Right

	function "/"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal) return Long_Long_Decimal_Array with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Array) return Long_Long_Decimal_Array with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal_Array) return Long_Long_Decimal_Array with Pure_Function;
	--Array remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal) return Long_Long_Decimal_Array with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Array) return Long_Long_Decimal_Array with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal_Array) return Long_Long_Decimal_Array with Pure_Function;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal) return Long_Long_Decimal_Array with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Array) return Long_Long_Decimal_Array with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal_Array) return Boolean with Pure_Function;
	--Array equality, test each respective element of Left and Right

	function "="(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Array) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal_Array) return Boolean with Pure_Function;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Array) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal_Array) return Boolean with Pure_Function;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Array) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Long_Long_Decimal_Array; Right : Long_Long_Decimal) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	function Max is new Decimal_Max(Long_Long_Decimal, Long_Long_Decimal_Array) with Pure_Function;
	--Find the maximum value of the array

	function Min is new Decimal_Min(Long_Long_Decimal, Long_Long_Decimal_Array) with Pure_Function;
	--Find the minimum value of the array

	function Apply is new Decimal_Apply_Procedure(Long_Long_Decimal, Long_Long_Decimal_Array);
	--Apply the procedure to each value of the array, returning the result

	function Map(Value : Long_Long_Decimal_Array; Callback : access Procedure(Value : in out Long_Long_Decimal)) return Long_Long_Decimal_Array renames Apply;

	function Apply is new Decimal_Apply_Function(Long_Long_Decimal, Long_Long_Decimal_Array);
	--Apply the function to each value of the array, returning the result

	function Map(Value : Long_Long_Decimal_Array; Callback : access Function(Value : Long_Long_Decimal) return Long_Long_Decimal) return Long_Long_Decimal_Array renames Apply;

	function Fold is new Decimal_Fold(Long_Long_Decimal, Long_Long_Decimal_Array);
	--Fold the array using the specified function

	-----------------------
	-- Short Float Array --
	-----------------------

	type Short_Float_Array is array(Positive range <>) of Short_Float;

	function "+"(Value : Short_Float_Array) return Short_Float_Array with Pure_Function;
	--Distributed assertion

	function "-"(Value : Short_Float_Array) return Short_Float_Array with Pure_Function;
	--Distributed negation

	function "abs"(Value : Short_Float_Array) return Short_Float_Array with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Short_Float_Array; Right : Short_Float_Array) return Short_Float_Array with Pure_Function;
	--Array addition, add together each respective element of Left and Right

	function "+"(Left : Short_Float_Array; Right : Short_Float) return Short_Float_Array with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Short_Float; Right : Short_Float_Array) return Short_Float_Array with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Short_Float_Array; Right : Short_Float_Array) return Short_Float_Array with Pure_Function;
	--Array subtraction, subtract each respective element of Left and Right

	function "-"(Left : Short_Float_Array; Right : Short_Float) return Short_Float_Array with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Short_Float; Right : Short_Float_Array) return Short_Float_Array with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Short_Float_Array; Right : Short_Float_Array) return Short_Float_Array with Pure_Function;
	--Array multiplication, multiply together each respective element

	function "*"(Left : Short_Float_Array; Right : Short_Float) return Short_Float_Array with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Short_Float; Right : Short_Float_Array) return Short_Float_Array with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Short_Float_Array; Right : Short_Float_Array) return Short_Float_Array with Pure_Function;
	--Array division, divide each respective element of Left and Right

	function "/"(Left : Short_Float_Array; Right : Short_Float) return Short_Float_Array with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Short_Float; Right : Short_Float_Array) return Short_Float_Array with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Short_Float_Array; Right : Short_Float_Array) return Short_Float_Array with Pure_Function;
	--Array remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Short_Float_Array; Right : Short_Float) return Short_Float_Array with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Short_Float; Right : Short_Float_Array) return Short_Float_Array with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Short_Float_Array; Right : Short_Float_Array) return Short_Float_Array with Pure_Function;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Short_Float_Array; Right : Short_Float) return Short_Float_Array with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Short_Float; Right : Short_Float_Array) return Short_Float_Array with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Short_Float_Array; Right : Short_Float_Array) return Boolean with Pure_Function;
	--Array equality, test each respective element of Left and Right

	function "="(Left : Short_Float_Array; Right : Short_Float) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Short_Float; Right : Short_Float_Array) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Short_Float_Array; Right : Short_Float_Array) return Boolean with Pure_Function;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Short_Float_Array; Right : Short_Float) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Short_Float; Right : Short_Float_Array) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Short_Float_Array; Right : Short_Float_Array) return Boolean with Pure_Function;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Short_Float_Array; Right : Short_Float) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Short_Float; Right : Short_Float_Array) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Short_Float_Array; Right : Short_Float_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Short_Float_Array; Right : Short_Float) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Short_Float; Right : Short_Float_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Short_Float_Array; Right : Short_Float_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Short_Float_Array; Right : Short_Float) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Short_Float; Right : Short_Float_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	function Max is new Float_Max(Short_Float, Short_Float_Array) with Pure_Function;
	--Find the maximum value of the array

	function Min is new Float_Min(Short_Float, Short_Float_Array) with Pure_Function;
	--Find the minimum value of the array

	function Apply is new Float_Apply_Procedure(Short_Float, Short_Float_Array);
	--Apply the procedure to each value of the array, returning the result

	function Map(Value : Short_Float_Array; Callback : access Procedure(Value : in out Short_Float)) return Short_Float_Array renames Apply;

	function Apply is new Float_Apply_Function(Short_Float, Short_Float_Array);
	--Apply the function to each value of the array, returning the result

	function Map(Value : Short_Float_Array; Callback : access Function(Value : Short_Float) return Short_Float) return Short_Float_Array renames Apply;

	function Fold is new Float_Fold(Short_Float, Short_Float_Array);
	--Fold the array using the specified function

	-----------------
	-- Float Array --
	-----------------

	type Float_Array is array(Positive range <>) of Float;

	function "+"(Value : Float_Array) return Float_Array with Pure_Function;
	--Distributed assertion

	function "-"(Value : Float_Array) return Float_Array with Pure_Function;
	--Distributed negation

	function "abs"(Value : Float_Array) return Float_Array with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Float_Array; Right : Float_Array) return Float_Array with Pure_Function;
	--Array addition, add together each respective element of Left and Right

	function "+"(Left : Float_Array; Right : Float) return Float_Array with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Float; Right : Float_Array) return Float_Array with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Float_Array; Right : Float_Array) return Float_Array with Pure_Function;
	--Array subtraction, subtract each respective element of Left and Right

	function "-"(Left : Float_Array; Right : Float) return Float_Array with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Float; Right : Float_Array) return Float_Array with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Float_Array; Right : Float_Array) return Float_Array with Pure_Function;
	--Array multiplication, multiply together each respective element

	function "*"(Left : Float_Array; Right : Float) return Float_Array with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Float; Right : Float_Array) return Float_Array with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Float_Array; Right : Float_Array) return Float_Array with Pure_Function;
	--Array division, divide each respective element of Left and Right

	function "/"(Left : Float_Array; Right : Float) return Float_Array with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Float; Right : Float_Array) return Float_Array with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Float_Array; Right : Float_Array) return Float_Array with Pure_Function;
	--Array remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Float_Array; Right : Float) return Float_Array with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Float; Right : Float_Array) return Float_Array with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Float_Array; Right : Float_Array) return Float_Array with Pure_Function;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Float_Array; Right : Float) return Float_Array with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Float; Right : Float_Array) return Float_Array with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Float_Array; Right : Float_Array) return Boolean with Pure_Function;
	--Array equality, test each respective element of Left and Right

	function "="(Left : Float_Array; Right : Float) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Float; Right : Float_Array) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Float_Array; Right : Float_Array) return Boolean with Pure_Function;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Float_Array; Right : Float) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Float; Right : Float_Array) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Float_Array; Right : Float_Array) return Boolean with Pure_Function;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Float_Array; Right : Float) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Float; Right : Float_Array) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Float_Array; Right : Float_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Float_Array; Right : Float) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Float; Right : Float_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Float_Array; Right : Float_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Float_Array; Right : Float) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Float; Right : Float_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	function Max is new Float_Max(Float, Float_Array) with Pure_Function;
	--Find the maximum value of the array

	function Min is new Float_Min(Float, Float_Array) with Pure_Function;
	--Find the minimum value of the array

	function Apply is new Float_Apply_Procedure(Float, Float_Array);
	--Apply the procedure to each value of the array, returning the result

	function Map(Value : Float_Array; Callback : access Procedure(Value : in out Float)) return Float_Array renames Apply;

	function Apply is new Float_Apply_Function(Float, Float_Array);
	--Apply the function to each value of the array, returning the result

	function Map(Value : Float_Array; Callback : access Function(Value : Float) return Float) return Float_Array renames Apply;

	function Fold is new Float_Fold(Float, Float_Array);
	--Fold the array using the specified function

	----------------------
	-- Long Float Array --
	----------------------

	type Long_Float_Array is array(Positive range <>) of Long_Float;

	function "+"(Value : Long_Float_Array) return Long_Float_Array with Pure_Function;
	--Distributed assertion

	function "-"(Value : Long_Float_Array) return Long_Float_Array with Pure_Function;
	--Distributed negation

	function "abs"(Value : Long_Float_Array) return Long_Float_Array with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Long_Float_Array; Right : Long_Float_Array) return Long_Float_Array with Pure_Function;
	--Array addition, add together each respective element of Left and Right

	function "+"(Left : Long_Float_Array; Right : Long_Float) return Long_Float_Array with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Long_Float; Right : Long_Float_Array) return Long_Float_Array with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Long_Float_Array; Right : Long_Float_Array) return Long_Float_Array with Pure_Function;
	--Array subtraction, subtract each respective element of Left and Right

	function "-"(Left : Long_Float_Array; Right : Long_Float) return Long_Float_Array with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Long_Float; Right : Long_Float_Array) return Long_Float_Array with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Long_Float_Array; Right : Long_Float_Array) return Long_Float_Array with Pure_Function;
	--Array multiplication, multiply together each respective element

	function "*"(Left : Long_Float_Array; Right : Long_Float) return Long_Float_Array with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Long_Float; Right : Long_Float_Array) return Long_Float_Array with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Long_Float_Array; Right : Long_Float_Array) return Long_Float_Array with Pure_Function;
	--Array division, divide each respective element of Left and Right

	function "/"(Left : Long_Float_Array; Right : Long_Float) return Long_Float_Array with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Long_Float; Right : Long_Float_Array) return Long_Float_Array with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Long_Float_Array; Right : Long_Float_Array) return Long_Float_Array with Pure_Function;
	--Array remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Long_Float_Array; Right : Long_Float) return Long_Float_Array with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Long_Float; Right : Long_Float_Array) return Long_Float_Array with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Long_Float_Array; Right : Long_Float_Array) return Long_Float_Array with Pure_Function;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Long_Float_Array; Right : Long_Float) return Long_Float_Array with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Long_Float; Right : Long_Float_Array) return Long_Float_Array with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Long_Float_Array; Right : Long_Float_Array) return Boolean with Pure_Function;
	--Array equality, test each respective element of Left and Right

	function "="(Left : Long_Float_Array; Right : Long_Float) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Long_Float; Right : Long_Float_Array) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Long_Float_Array; Right : Long_Float_Array) return Boolean with Pure_Function;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Long_Float_Array; Right : Long_Float) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Long_Float; Right : Long_Float_Array) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Long_Float_Array; Right : Long_Float_Array) return Boolean with Pure_Function;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Long_Float_Array; Right : Long_Float) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Long_Float; Right : Long_Float_Array) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Long_Float_Array; Right : Long_Float_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Long_Float_Array; Right : Long_Float) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Long_Float; Right : Long_Float_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Long_Float_Array; Right : Long_Float_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Long_Float_Array; Right : Long_Float) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Long_Float; Right : Long_Float_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	function Max is new Float_Max(Long_Float, Long_Float_Array) with Pure_Function;
	--Find the maximum value of the array

	function Min is new Float_Min(Long_Float, Long_Float_Array) with Pure_Function;
	--Find the minimum value of the array

	function Apply is new Float_Apply_Procedure(Long_Float, Long_Float_Array);
	--Apply the procedure to each value of the array, returning the result

	function Map(Value : Long_Float_Array; Callback : access Procedure(Value : in out Long_Float)) return Long_Float_Array renames Apply;

	function Apply is new Float_Apply_Function(Long_Float, Long_Float_Array);
	--Apply the function to each value of the array, returning the result

	function Map(Value : Long_Float_Array; Callback : access Function(Value : Long_Float) return Long_Float) return Long_Float_Array renames Apply;

	function Fold is new Float_Fold(Long_Float, Long_Float_Array);
	--Fold the array using the specified function

	---------------------------
	-- Long Long Float Array --
	---------------------------

	type Long_Long_Float_Array is array(Positive range <>) of Long_Long_Float;

	function "+"(Value : Long_Long_Float_Array) return Long_Long_Float_Array with Pure_Function;
	--Distributed assertion

	function "-"(Value : Long_Long_Float_Array) return Long_Long_Float_Array with Pure_Function;
	--Distributed negation

	function "abs"(Value : Long_Long_Float_Array) return Long_Long_Float_Array with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Long_Long_Float_Array; Right : Long_Long_Float_Array) return Long_Long_Float_Array with Pure_Function;
	--Array addition, add together each respective element of Left and Right

	function "+"(Left : Long_Long_Float_Array; Right : Long_Long_Float) return Long_Long_Float_Array with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Long_Long_Float; Right : Long_Long_Float_Array) return Long_Long_Float_Array with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Long_Long_Float_Array; Right : Long_Long_Float_Array) return Long_Long_Float_Array with Pure_Function;
	--Array subtraction, subtract each respective element of Left and Right

	function "-"(Left : Long_Long_Float_Array; Right : Long_Long_Float) return Long_Long_Float_Array with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Long_Long_Float; Right : Long_Long_Float_Array) return Long_Long_Float_Array with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Long_Long_Float_Array; Right : Long_Long_Float_Array) return Long_Long_Float_Array with Pure_Function;
	--Array multiplication, multiply together each respective element

	function "*"(Left : Long_Long_Float_Array; Right : Long_Long_Float) return Long_Long_Float_Array with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Long_Long_Float; Right : Long_Long_Float_Array) return Long_Long_Float_Array with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Long_Long_Float_Array; Right : Long_Long_Float_Array) return Long_Long_Float_Array with Pure_Function;
	--Array division, divide each respective element of Left and Right

	function "/"(Left : Long_Long_Float_Array; Right : Long_Long_Float) return Long_Long_Float_Array with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Long_Long_Float; Right : Long_Long_Float_Array) return Long_Long_Float_Array with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Long_Long_Float_Array; Right : Long_Long_Float_Array) return Long_Long_Float_Array with Pure_Function;
	--Array remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Long_Long_Float_Array; Right : Long_Long_Float) return Long_Long_Float_Array with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Long_Long_Float; Right : Long_Long_Float_Array) return Long_Long_Float_Array with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Long_Long_Float_Array; Right : Long_Long_Float_Array) return Long_Long_Float_Array with Pure_Function;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Long_Long_Float_Array; Right : Long_Long_Float) return Long_Long_Float_Array with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Long_Long_Float; Right : Long_Long_Float_Array) return Long_Long_Float_Array with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Long_Long_Float_Array; Right : Long_Long_Float_Array) return Boolean with Pure_Function;
	--Array equality, test each respective element of Left and Right

	function "="(Left : Long_Long_Float_Array; Right : Long_Long_Float) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Long_Long_Float; Right : Long_Long_Float_Array) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Long_Long_Float_Array; Right : Long_Long_Float_Array) return Boolean with Pure_Function;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Long_Long_Float_Array; Right : Long_Long_Float) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Long_Long_Float; Right : Long_Long_Float_Array) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Long_Long_Float_Array; Right : Long_Long_Float_Array) return Boolean with Pure_Function;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Long_Long_Float_Array; Right : Long_Long_Float) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Long_Long_Float; Right : Long_Long_Float_Array) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Long_Long_Float_Array; Right : Long_Long_Float_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Long_Long_Float_Array; Right : Long_Long_Float) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Long_Long_Float; Right : Long_Long_Float_Array) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Long_Long_Float_Array; Right : Long_Long_Float_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Long_Long_Float_Array; Right : Long_Long_Float) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Long_Long_Float; Right : Long_Long_Float_Array) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	function Max is new Float_Max(Long_Long_Float, Long_Long_Float_Array) with Pure_Function;
	--Find the maximum value of the array

	function Min is new Float_Min(Long_Long_Float, Long_Long_Float_Array) with Pure_Function;
	--Find the minimum value of the array

	function Apply is new Float_Apply_Procedure(Long_Long_Float, Long_Long_Float_Array);
	--Apply the procedure to each value of the array, returning the result

	function Map(Value : Long_Long_Float_Array; Callback : access Procedure(Value : in out Long_Long_Float)) return Long_Long_Float_Array renames Apply;

	function Apply is new Float_Apply_Function(Long_Long_Float, Long_Long_Float_Array);
	--Apply the function to each value of the array, returning the result

	function Map(Value : Long_Long_Float_Array; Callback : access Function(Value : Long_Long_Float) return Long_Long_Float) return Long_Long_Float_Array renames Apply;

	function Fold is new Float_Fold(Long_Long_Float, Long_Long_Float_Array);
	--Fold the array using the specified function

end Mathematics.Arrays;
