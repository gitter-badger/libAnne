package Mathematics.Matrices with Pure, Remote_Types is
--@Description Provides matrices for matrix math and linear algebra
--@Version 1.0

	--------------------------------
	-- Short Short Integer Matrix --
	--------------------------------

	type Short_Short_Integer_Matrix is array(Positive range <>, Positive range <>) of Short_Short_Integer;

	function "+"(Value : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix with Pure_Function;
	--Distributed assertion

	function "-"(Value : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix with Pure_Function;
	--Distributed negation

	function "abs"(Value : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix addition, add together each respective element of Left and Right

	function "+"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer) return Short_Short_Integer_Matrix with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Short_Short_Integer; Right : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix subtraction, subtract each respective element of Left and Right

	function "-"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer) return Short_Short_Integer_Matrix with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Short_Short_Integer; Right : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix multiplication, multiply together each respective element

	function "*"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer) return Short_Short_Integer_Matrix with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Short_Short_Integer; Right : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix division, divide each respective element of Left and Right

	function "/"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer) return Short_Short_Integer_Matrix with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Short_Short_Integer; Right : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer) return Short_Short_Integer_Matrix with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Short_Short_Integer; Right : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer) return Short_Short_Integer_Matrix with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Short_Short_Integer; Right : Short_Short_Integer_Matrix) return Short_Short_Integer_Matrix with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix equality, test each respective element of Left and Right

	function "="(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Short_Short_Integer; Right : Short_Short_Integer_Matrix) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Short_Short_Integer; Right : Short_Short_Integer_Matrix) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Short_Short_Integer; Right : Short_Short_Integer_Matrix) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Short_Short_Integer; Right : Short_Short_Integer_Matrix) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Short_Short_Integer_Matrix; Right : Short_Short_Integer) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Short_Short_Integer; Right : Short_Short_Integer_Matrix) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	--------------------------
	-- Short Integer Matrix --
	--------------------------

	type Short_Integer_Matrix is array(Positive range <>, Positive range <>) of Short_Integer;

	function "+"(Value : Short_Integer_Matrix) return Short_Integer_Matrix with Pure_Function;
	--Distributed assertion

	function "-"(Value : Short_Integer_Matrix) return Short_Integer_Matrix with Pure_Function;
	--Distributed negation

	function "abs"(Value : Short_Integer_Matrix) return Short_Integer_Matrix with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Short_Integer_Matrix; Right : Short_Integer_Matrix) return Short_Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix addition, add together each respective element of Left and Right

	function "+"(Left : Short_Integer_Matrix; Right : Short_Integer) return Short_Integer_Matrix with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Short_Integer; Right : Short_Integer_Matrix) return Short_Integer_Matrix with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Short_Integer_Matrix; Right : Short_Integer_Matrix) return Short_Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix subtraction, subtract each respective element of Left and Right

	function "-"(Left : Short_Integer_Matrix; Right : Short_Integer) return Short_Integer_Matrix with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Short_Integer; Right : Short_Integer_Matrix) return Short_Integer_Matrix with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Short_Integer_Matrix; Right : Short_Integer_Matrix) return Short_Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix multiplication, multiply together each respective element

	function "*"(Left : Short_Integer_Matrix; Right : Short_Integer) return Short_Integer_Matrix with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Short_Integer; Right : Short_Integer_Matrix) return Short_Integer_Matrix with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Short_Integer_Matrix; Right : Short_Integer_Matrix) return Short_Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix division, divide each respective element of Left and Right

	function "/"(Left : Short_Integer_Matrix; Right : Short_Integer) return Short_Integer_Matrix with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Short_Integer; Right : Short_Integer_Matrix) return Short_Integer_Matrix with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Short_Integer_Matrix; Right : Short_Integer_Matrix) return Short_Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Short_Integer_Matrix; Right : Short_Integer) return Short_Integer_Matrix with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Short_Integer; Right : Short_Integer_Matrix) return Short_Integer_Matrix with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Short_Integer_Matrix; Right : Short_Integer_Matrix) return Short_Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Short_Integer_Matrix; Right : Short_Integer) return Short_Integer_Matrix with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Short_Integer; Right : Short_Integer_Matrix) return Short_Integer_Matrix with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Short_Integer_Matrix; Right : Short_Integer_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix equality, test each respective element of Left and Right

	function "="(Left : Short_Integer_Matrix; Right : Short_Integer) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Short_Integer; Right : Short_Integer_Matrix) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Short_Integer_Matrix; Right : Short_Integer_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Short_Integer_Matrix; Right : Short_Integer) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Short_Integer; Right : Short_Integer_Matrix) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Short_Integer_Matrix; Right : Short_Integer_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Short_Integer_Matrix; Right : Short_Integer) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Short_Integer; Right : Short_Integer_Matrix) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Short_Integer_Matrix; Right : Short_Integer_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Short_Integer_Matrix; Right : Short_Integer) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Short_Integer; Right : Short_Integer_Matrix) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Short_Integer_Matrix; Right : Short_Integer_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Short_Integer_Matrix; Right : Short_Integer) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Short_Integer; Right : Short_Integer_Matrix) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	--------------------
	-- Integer Matrix --
	--------------------

	type Integer_Matrix is array(Positive range <>, Positive range <>) of Integer;

	function "+"(Value : Integer_Matrix) return Integer_Matrix with Pure_Function;
	--Distributed assertion

	function "-"(Value : Integer_Matrix) return Integer_Matrix with Pure_Function;
	--Distributed negation

	function "abs"(Value : Integer_Matrix) return Integer_Matrix with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Integer_Matrix; Right : Integer_Matrix) return Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix addition, add together each respective element of Left and Right

	function "+"(Left : Integer_Matrix; Right : Integer) return Integer_Matrix with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Integer; Right : Integer_Matrix) return Integer_Matrix with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Integer_Matrix; Right : Integer_Matrix) return Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix subtraction, subtract each respective element of Left and Right

	function "-"(Left : Integer_Matrix; Right : Integer) return Integer_Matrix with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Integer; Right : Integer_Matrix) return Integer_Matrix with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Integer_Matrix; Right : Integer_Matrix) return Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix multiplication, multiply together each respective element

	function "*"(Left : Integer_Matrix; Right : Integer) return Integer_Matrix with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Integer; Right : Integer_Matrix) return Integer_Matrix with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Integer_Matrix; Right : Integer_Matrix) return Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix division, divide each respective element of Left and Right

	function "/"(Left : Integer_Matrix; Right : Integer) return Integer_Matrix with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Integer; Right : Integer_Matrix) return Integer_Matrix with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Integer_Matrix; Right : Integer_Matrix) return Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Integer_Matrix; Right : Integer) return Integer_Matrix with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Integer; Right : Integer_Matrix) return Integer_Matrix with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Integer_Matrix; Right : Integer_Matrix) return Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Integer_Matrix; Right : Integer) return Integer_Matrix with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Integer; Right : Integer_Matrix) return Integer_Matrix with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Integer_Matrix; Right : Integer_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix equality, test each respective element of Left and Right

	function "="(Left : Integer_Matrix; Right : Integer) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Integer; Right : Integer_Matrix) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Integer_Matrix; Right : Integer_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Integer_Matrix; Right : Integer) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Integer; Right : Integer_Matrix) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Integer_Matrix; Right : Integer_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Integer_Matrix; Right : Integer) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Integer; Right : Integer_Matrix) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Integer_Matrix; Right : Integer_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Integer_Matrix; Right : Integer) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Integer; Right : Integer_Matrix) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Integer_Matrix; Right : Integer_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Integer_Matrix; Right : Integer) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Integer; Right : Integer_Matrix) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	-------------------------
	-- Long Integer Matrix --
	-------------------------

	type Long_Integer_Matrix is array(Positive range <>, Positive range <>) of Long_Integer;

	function "+"(Value : Long_Integer_Matrix) return Long_Integer_Matrix with Pure_Function;
	--Distributed assertion

	function "-"(Value : Long_Integer_Matrix) return Long_Integer_Matrix with Pure_Function;
	--Distributed negation

	function "abs"(Value : Long_Integer_Matrix) return Long_Integer_Matrix with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Long_Integer_Matrix; Right : Long_Integer_Matrix) return Long_Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix addition, add together each respective element of Left and Right

	function "+"(Left : Long_Integer_Matrix; Right : Long_Integer) return Long_Integer_Matrix with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Long_Integer; Right : Long_Integer_Matrix) return Long_Integer_Matrix with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Long_Integer_Matrix; Right : Long_Integer_Matrix) return Long_Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix subtraction, subtract each respective element of Left and Right

	function "-"(Left : Long_Integer_Matrix; Right : Long_Integer) return Long_Integer_Matrix with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Long_Integer; Right : Long_Integer_Matrix) return Long_Integer_Matrix with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Long_Integer_Matrix; Right : Long_Integer_Matrix) return Long_Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix multiplication, multiply together each respective element

	function "*"(Left : Long_Integer_Matrix; Right : Long_Integer) return Long_Integer_Matrix with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Long_Integer; Right : Long_Integer_Matrix) return Long_Integer_Matrix with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Long_Integer_Matrix; Right : Long_Integer_Matrix) return Long_Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix division, divide each respective element of Left and Right

	function "/"(Left : Long_Integer_Matrix; Right : Long_Integer) return Long_Integer_Matrix with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Long_Integer; Right : Long_Integer_Matrix) return Long_Integer_Matrix with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Long_Integer_Matrix; Right : Long_Integer_Matrix) return Long_Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Long_Integer_Matrix; Right : Long_Integer) return Long_Integer_Matrix with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Long_Integer; Right : Long_Integer_Matrix) return Long_Integer_Matrix with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Long_Integer_Matrix; Right : Long_Integer_Matrix) return Long_Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Long_Integer_Matrix; Right : Long_Integer) return Long_Integer_Matrix with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Long_Integer; Right : Long_Integer_Matrix) return Long_Integer_Matrix with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Long_Integer_Matrix; Right : Long_Integer_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix equality, test each respective element of Left and Right

	function "="(Left : Long_Integer_Matrix; Right : Long_Integer) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Long_Integer; Right : Long_Integer_Matrix) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Long_Integer_Matrix; Right : Long_Integer_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Long_Integer_Matrix; Right : Long_Integer) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Long_Integer; Right : Long_Integer_Matrix) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Long_Integer_Matrix; Right : Long_Integer_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Long_Integer_Matrix; Right : Long_Integer) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Long_Integer; Right : Long_Integer_Matrix) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Long_Integer_Matrix; Right : Long_Integer_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Long_Integer_Matrix; Right : Long_Integer) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Long_Integer; Right : Long_Integer_Matrix) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Long_Integer_Matrix; Right : Long_Integer_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Long_Integer_Matrix; Right : Long_Integer) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Long_Integer; Right : Long_Integer_Matrix) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	------------------------------
	-- Long Long Integer Matrix --
	------------------------------

	type Long_Long_Integer_Matrix is array(Positive range <>, Positive range <>) of Long_Long_Integer;

	function "+"(Value : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix with Pure_Function;
	--Distributed assertion

	function "-"(Value : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix with Pure_Function;
	--Distributed negation

	function "abs"(Value : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix addition, add together each respective element of Left and Right

	function "+"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer) return Long_Long_Integer_Matrix with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Long_Long_Integer; Right : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix subtraction, subtract each respective element of Left and Right

	function "-"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer) return Long_Long_Integer_Matrix with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Long_Long_Integer; Right : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix multiplication, multiply together each respective element

	function "*"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer) return Long_Long_Integer_Matrix with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Long_Long_Integer; Right : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix division, divide each respective element of Left and Right

	function "/"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer) return Long_Long_Integer_Matrix with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Long_Long_Integer; Right : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer) return Long_Long_Integer_Matrix with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Long_Long_Integer; Right : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer) return Long_Long_Integer_Matrix with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Long_Long_Integer; Right : Long_Long_Integer_Matrix) return Long_Long_Integer_Matrix with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix equality, test each respective element of Left and Right

	function "="(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Long_Long_Integer; Right : Long_Long_Integer_Matrix) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Long_Long_Integer; Right : Long_Long_Integer_Matrix) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Long_Long_Integer; Right : Long_Long_Integer_Matrix) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Long_Long_Integer; Right : Long_Long_Integer_Matrix) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Long_Long_Integer_Matrix; Right : Long_Long_Integer) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Long_Long_Integer; Right : Long_Long_Integer_Matrix) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	-------------------------------
	-- Short Short Modular Matrix --
	-------------------------------

	type Short_Short_Modular_Matrix is array(Positive range <>, Positive range <>) of Short_Short_Modular;

	function "+"(Value : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix with Pure_Function;
	--Distributed assertion

	function "abs"(Value : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix addition, add together each respective element of Left and Right

	function "+"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular) return Short_Short_Modular_Matrix with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Short_Short_Modular; Right : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix subtraction, subtract each respective element of Left and Right

	function "-"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular) return Short_Short_Modular_Matrix with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Short_Short_Modular; Right : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix multiplication, multiply together each respective element

	function "*"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular) return Short_Short_Modular_Matrix with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Short_Short_Modular; Right : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix division, divide each respective element of Left and Right

	function "/"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular) return Short_Short_Modular_Matrix with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Short_Short_Modular; Right : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular) return Short_Short_Modular_Matrix with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Short_Short_Modular; Right : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular) return Short_Short_Modular_Matrix with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Short_Short_Modular; Right : Short_Short_Modular_Matrix) return Short_Short_Modular_Matrix with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix equality, test each respective element of Left and Right

	function "="(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Short_Short_Modular; Right : Short_Short_Modular_Matrix) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Short_Short_Modular; Right : Short_Short_Modular_Matrix) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Short_Short_Modular; Right : Short_Short_Modular_Matrix) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Short_Short_Modular; Right : Short_Short_Modular_Matrix) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Short_Short_Modular_Matrix; Right : Short_Short_Modular) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Short_Short_Modular; Right : Short_Short_Modular_Matrix) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	-------------------------
	-- Short Modular Matrix --
	-------------------------

	type Short_Modular_Matrix is array(Positive range <>, Positive range <>) of Short_Modular;

	function "+"(Value : Short_Modular_Matrix) return Short_Modular_Matrix with Pure_Function;
	--Distributed assertion

	function "abs"(Value : Short_Modular_Matrix) return Short_Modular_Matrix with Pure_Function;
	--Distributed absolute value
	function "+"(Left : Short_Modular_Matrix; Right : Short_Modular_Matrix) return Short_Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix addition, add together each respective element of Left and Right

	function "+"(Left : Short_Modular_Matrix; Right : Short_Modular) return Short_Modular_Matrix with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Short_Modular; Right : Short_Modular_Matrix) return Short_Modular_Matrix with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Short_Modular_Matrix; Right : Short_Modular_Matrix) return Short_Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix subtraction, subtract each respective element of Left and Right

	function "-"(Left : Short_Modular_Matrix; Right : Short_Modular) return Short_Modular_Matrix with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Short_Modular; Right : Short_Modular_Matrix) return Short_Modular_Matrix with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Short_Modular_Matrix; Right : Short_Modular_Matrix) return Short_Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix multiplication, multiply together each respective element

	function "*"(Left : Short_Modular_Matrix; Right : Short_Modular) return Short_Modular_Matrix with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Short_Modular; Right : Short_Modular_Matrix) return Short_Modular_Matrix with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Short_Modular_Matrix; Right : Short_Modular_Matrix) return Short_Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix division, divide each respective element of Left and Right

	function "/"(Left : Short_Modular_Matrix; Right : Short_Modular) return Short_Modular_Matrix with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Short_Modular; Right : Short_Modular_Matrix) return Short_Modular_Matrix with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Short_Modular_Matrix; Right : Short_Modular_Matrix) return Short_Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Short_Modular_Matrix; Right : Short_Modular) return Short_Modular_Matrix with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Short_Modular; Right : Short_Modular_Matrix) return Short_Modular_Matrix with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Short_Modular_Matrix; Right : Short_Modular_Matrix) return Short_Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Short_Modular_Matrix; Right : Short_Modular) return Short_Modular_Matrix with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Short_Modular; Right : Short_Modular_Matrix) return Short_Modular_Matrix with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Short_Modular_Matrix; Right : Short_Modular_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix equality, test each respective element of Left and Right

	function "="(Left : Short_Modular_Matrix; Right : Short_Modular) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Short_Modular; Right : Short_Modular_Matrix) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Short_Modular_Matrix; Right : Short_Modular_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Short_Modular_Matrix; Right : Short_Modular) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Short_Modular; Right : Short_Modular_Matrix) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Short_Modular_Matrix; Right : Short_Modular_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Short_Modular_Matrix; Right : Short_Modular) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Short_Modular; Right : Short_Modular_Matrix) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Short_Modular_Matrix; Right : Short_Modular_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Short_Modular_Matrix; Right : Short_Modular) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Short_Modular; Right : Short_Modular_Matrix) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Short_Modular_Matrix; Right : Short_Modular_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Short_Modular_Matrix; Right : Short_Modular) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Short_Modular; Right : Short_Modular_Matrix) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	-------------------
	-- Modular Matrix --
	-------------------

	type Modular_Matrix is array(Positive range <>, Positive range <>) of Modular;

	function "+"(Value : Modular_Matrix) return Modular_Matrix with Pure_Function;
	--Distributed assertion

	function "abs"(Value : Modular_Matrix) return Modular_Matrix with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Modular_Matrix; Right : Modular_Matrix) return Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix addition, add together each respective element of Left and Right

	function "+"(Left : Modular_Matrix; Right : Modular) return Modular_Matrix with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Modular; Right : Modular_Matrix) return Modular_Matrix with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Modular_Matrix; Right : Modular_Matrix) return Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix subtraction, subtract each respective element of Left and Right

	function "-"(Left : Modular_Matrix; Right : Modular) return Modular_Matrix with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Modular; Right : Modular_Matrix) return Modular_Matrix with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Modular_Matrix; Right : Modular_Matrix) return Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix multiplication, multiply together each respective element

	function "*"(Left : Modular_Matrix; Right : Modular) return Modular_Matrix with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Modular; Right : Modular_Matrix) return Modular_Matrix with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Modular_Matrix; Right : Modular_Matrix) return Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix division, divide each respective element of Left and Right

	function "/"(Left : Modular_Matrix; Right : Modular) return Modular_Matrix with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Modular; Right : Modular_Matrix) return Modular_Matrix with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Modular_Matrix; Right : Modular_Matrix) return Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Modular_Matrix; Right : Modular) return Modular_Matrix with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Modular; Right : Modular_Matrix) return Modular_Matrix with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Modular_Matrix; Right : Modular_Matrix) return Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Modular_Matrix; Right : Modular) return Modular_Matrix with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Modular; Right : Modular_Matrix) return Modular_Matrix with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Modular_Matrix; Right : Modular_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix equality, test each respective element of Left and Right

	function "="(Left : Modular_Matrix; Right : Modular) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Modular; Right : Modular_Matrix) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Modular_Matrix; Right : Modular_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Modular_Matrix; Right : Modular) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Modular; Right : Modular_Matrix) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Modular_Matrix; Right : Modular_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Modular_Matrix; Right : Modular) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Modular; Right : Modular_Matrix) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Modular_Matrix; Right : Modular_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Modular_Matrix; Right : Modular) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Modular; Right : Modular_Matrix) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Modular_Matrix; Right : Modular_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Modular_Matrix; Right : Modular) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Modular; Right : Modular_Matrix) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	------------------------
	-- Long Modular Matrix --
	------------------------

	type Long_Modular_Matrix is array(Positive range <>, Positive range <>) of Long_Modular;

	function "+"(Value : Long_Modular_Matrix) return Long_Modular_Matrix with Pure_Function;
	--Distributed assertion

	function "abs"(Value : Long_Modular_Matrix) return Long_Modular_Matrix with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Long_Modular_Matrix; Right : Long_Modular_Matrix) return Long_Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix addition, add together each respective element of Left and Right

	function "+"(Left : Long_Modular_Matrix; Right : Long_Modular) return Long_Modular_Matrix with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Long_Modular; Right : Long_Modular_Matrix) return Long_Modular_Matrix with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Long_Modular_Matrix; Right : Long_Modular_Matrix) return Long_Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix subtraction, subtract each respective element of Left and Right

	function "-"(Left : Long_Modular_Matrix; Right : Long_Modular) return Long_Modular_Matrix with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Long_Modular; Right : Long_Modular_Matrix) return Long_Modular_Matrix with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Long_Modular_Matrix; Right : Long_Modular_Matrix) return Long_Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix multiplication, multiply together each respective element

	function "*"(Left : Long_Modular_Matrix; Right : Long_Modular) return Long_Modular_Matrix with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Long_Modular; Right : Long_Modular_Matrix) return Long_Modular_Matrix with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Long_Modular_Matrix; Right : Long_Modular_Matrix) return Long_Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix division, divide each respective element of Left and Right

	function "/"(Left : Long_Modular_Matrix; Right : Long_Modular) return Long_Modular_Matrix with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Long_Modular; Right : Long_Modular_Matrix) return Long_Modular_Matrix with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Long_Modular_Matrix; Right : Long_Modular_Matrix) return Long_Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Long_Modular_Matrix; Right : Long_Modular) return Long_Modular_Matrix with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Long_Modular; Right : Long_Modular_Matrix) return Long_Modular_Matrix with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Long_Modular_Matrix; Right : Long_Modular_Matrix) return Long_Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Long_Modular_Matrix; Right : Long_Modular) return Long_Modular_Matrix with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Long_Modular; Right : Long_Modular_Matrix) return Long_Modular_Matrix with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Long_Modular_Matrix; Right : Long_Modular_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix equality, test each respective element of Left and Right

	function "="(Left : Long_Modular_Matrix; Right : Long_Modular) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Long_Modular; Right : Long_Modular_Matrix) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Long_Modular_Matrix; Right : Long_Modular_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Long_Modular_Matrix; Right : Long_Modular) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Long_Modular; Right : Long_Modular_Matrix) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Long_Modular_Matrix; Right : Long_Modular_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Long_Modular_Matrix; Right : Long_Modular) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Long_Modular; Right : Long_Modular_Matrix) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Long_Modular_Matrix; Right : Long_Modular_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Long_Modular_Matrix; Right : Long_Modular) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Long_Modular; Right : Long_Modular_Matrix) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Long_Modular_Matrix; Right : Long_Modular_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Long_Modular_Matrix; Right : Long_Modular) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Long_Modular; Right : Long_Modular_Matrix) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	-----------------------------
	-- Long Long Modular Matrix --
	-----------------------------

	type Long_Long_Modular_Matrix is array(Positive range <>, Positive range <>) of Long_Long_Modular;

	function "+"(Value : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix with Pure_Function;
	--Distributed assertion

	function "abs"(Value : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix addition, add together each respective element of Left and Right

	function "+"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular) return Long_Long_Modular_Matrix with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Long_Long_Modular; Right : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix subtraction, subtract each respective element of Left and Right

	function "-"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular) return Long_Long_Modular_Matrix with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Long_Long_Modular; Right : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix multiplication, multiply together each respective element

	function "*"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular) return Long_Long_Modular_Matrix with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Long_Long_Modular; Right : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix division, divide each respective element of Left and Right

	function "/"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular) return Long_Long_Modular_Matrix with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Long_Long_Modular; Right : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular) return Long_Long_Modular_Matrix with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Long_Long_Modular; Right : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular) return Long_Long_Modular_Matrix with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Long_Long_Modular; Right : Long_Long_Modular_Matrix) return Long_Long_Modular_Matrix with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix equality, test each respective element of Left and Right

	function "="(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Long_Long_Modular; Right : Long_Long_Modular_Matrix) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Long_Long_Modular; Right : Long_Long_Modular_Matrix) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Long_Long_Modular; Right : Long_Long_Modular_Matrix) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Long_Long_Modular; Right : Long_Long_Modular_Matrix) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Long_Long_Modular_Matrix; Right : Long_Long_Modular) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Long_Long_Modular; Right : Long_Long_Modular_Matrix) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	-----------------------------
	-- Short Short Fixed Matrix --
	-----------------------------

	type Short_Short_Fixed_Matrix is array(Positive range <>, Positive range <>) of Short_Short_Fixed;

	function "+"(Value : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix with Pure_Function;
	--Distributed assertion

	function "-"(Value : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix with Pure_Function;
	--Distributed negation

	function "abs"(Value : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix addition, add together each respective element of Left and Right

	function "+"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed) return Short_Short_Fixed_Matrix with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix subtraction, subtract each respective element of Left and Right

	function "-"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed) return Short_Short_Fixed_Matrix with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix multiplication, multiply together each respective element

	function "*"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed) return Short_Short_Fixed_Matrix with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix division, divide each respective element of Left and Right

	function "/"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed) return Short_Short_Fixed_Matrix with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed) return Short_Short_Fixed_Matrix with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed) return Short_Short_Fixed_Matrix with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Matrix) return Short_Short_Fixed_Matrix with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix equality, test each respective element of Left and Right

	function "="(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Matrix) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Matrix) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Matrix) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Matrix) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Short_Short_Fixed_Matrix; Right : Short_Short_Fixed) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Short_Short_Fixed; Right : Short_Short_Fixed_Matrix) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	-----------------------
	-- Short Fixed Matrix --
	-----------------------

	type Short_Fixed_Matrix is array(Positive range <>, Positive range <>) of Short_Fixed;

	function "+"(Value : Short_Fixed_Matrix) return Short_Fixed_Matrix with Pure_Function;
	--Distributed assertion

	function "-"(Value : Short_Fixed_Matrix) return Short_Fixed_Matrix with Pure_Function;
	--Distributed negation

	function "abs"(Value : Short_Fixed_Matrix) return Short_Fixed_Matrix with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Short_Fixed_Matrix; Right : Short_Fixed_Matrix) return Short_Fixed_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix addition, add together each respective element of Left and Right

	function "+"(Left : Short_Fixed_Matrix; Right : Short_Fixed) return Short_Fixed_Matrix with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Short_Fixed; Right : Short_Fixed_Matrix) return Short_Fixed_Matrix with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Short_Fixed_Matrix; Right : Short_Fixed_Matrix) return Short_Fixed_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix subtraction, subtract each respective element of Left and Right

	function "-"(Left : Short_Fixed_Matrix; Right : Short_Fixed) return Short_Fixed_Matrix with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Short_Fixed; Right : Short_Fixed_Matrix) return Short_Fixed_Matrix with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Short_Fixed_Matrix; Right : Short_Fixed_Matrix) return Short_Fixed_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix multiplication, multiply together each respective element

	function "*"(Left : Short_Fixed_Matrix; Right : Short_Fixed) return Short_Fixed_Matrix with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Short_Fixed; Right : Short_Fixed_Matrix) return Short_Fixed_Matrix with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Short_Fixed_Matrix; Right : Short_Fixed_Matrix) return Short_Fixed_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix division, divide each respective element of Left and Right

	function "/"(Left : Short_Fixed_Matrix; Right : Short_Fixed) return Short_Fixed_Matrix with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Short_Fixed; Right : Short_Fixed_Matrix) return Short_Fixed_Matrix with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Short_Fixed_Matrix; Right : Short_Fixed_Matrix) return Short_Fixed_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Short_Fixed_Matrix; Right : Short_Fixed) return Short_Fixed_Matrix with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Short_Fixed; Right : Short_Fixed_Matrix) return Short_Fixed_Matrix with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Short_Fixed_Matrix; Right : Short_Fixed_Matrix) return Short_Fixed_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Short_Fixed_Matrix; Right : Short_Fixed) return Short_Fixed_Matrix with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Short_Fixed; Right : Short_Fixed_Matrix) return Short_Fixed_Matrix with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Short_Fixed_Matrix; Right : Short_Fixed_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix equality, test each respective element of Left and Right

	function "="(Left : Short_Fixed_Matrix; Right : Short_Fixed) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Short_Fixed; Right : Short_Fixed_Matrix) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Short_Fixed_Matrix; Right : Short_Fixed_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Short_Fixed_Matrix; Right : Short_Fixed) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Short_Fixed; Right : Short_Fixed_Matrix) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Short_Fixed_Matrix; Right : Short_Fixed_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Short_Fixed_Matrix; Right : Short_Fixed) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Short_Fixed; Right : Short_Fixed_Matrix) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Short_Fixed_Matrix; Right : Short_Fixed_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Short_Fixed_Matrix; Right : Short_Fixed) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Short_Fixed; Right : Short_Fixed_Matrix) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Short_Fixed_Matrix; Right : Short_Fixed_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Short_Fixed_Matrix; Right : Short_Fixed) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Short_Fixed; Right : Short_Fixed_Matrix) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	-----------------
	-- Fixed Matrix --
	-----------------

	type Fixed_Matrix is array(Positive range <>, Positive range <>) of Fixed;

	function "+"(Value : Fixed_Matrix) return Fixed_Matrix with Pure_Function;
	--Distributed assertion

	function "-"(Value : Fixed_Matrix) return Fixed_Matrix with Pure_Function;
	--Distributed negation

	function "abs"(Value : Fixed_Matrix) return Fixed_Matrix with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Fixed_Matrix; Right : Fixed_Matrix) return Fixed_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix addition, add together each respective element of Left and Right

	function "+"(Left : Fixed_Matrix; Right : Fixed) return Fixed_Matrix with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Fixed; Right : Fixed_Matrix) return Fixed_Matrix with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Fixed_Matrix; Right : Fixed_Matrix) return Fixed_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix subtraction, subtract each respective element of Left and Right

	function "-"(Left : Fixed_Matrix; Right : Fixed) return Fixed_Matrix with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Fixed; Right : Fixed_Matrix) return Fixed_Matrix with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Fixed_Matrix; Right : Fixed_Matrix) return Fixed_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix multiplication, multiply together each respective element

	function "*"(Left : Fixed_Matrix; Right : Fixed) return Fixed_Matrix with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Fixed; Right : Fixed_Matrix) return Fixed_Matrix with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Fixed_Matrix; Right : Fixed_Matrix) return Fixed_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix division, divide each respective element of Left and Right

	function "/"(Left : Fixed_Matrix; Right : Fixed) return Fixed_Matrix with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Fixed; Right : Fixed_Matrix) return Fixed_Matrix with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Fixed_Matrix; Right : Fixed_Matrix) return Fixed_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Fixed_Matrix; Right : Fixed) return Fixed_Matrix with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Fixed; Right : Fixed_Matrix) return Fixed_Matrix with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Fixed_Matrix; Right : Fixed_Matrix) return Fixed_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Fixed_Matrix; Right : Fixed) return Fixed_Matrix with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Fixed; Right : Fixed_Matrix) return Fixed_Matrix with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Fixed_Matrix; Right : Fixed_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix equality, test each respective element of Left and Right

	function "="(Left : Fixed_Matrix; Right : Fixed) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Fixed; Right : Fixed_Matrix) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Fixed_Matrix; Right : Fixed_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Fixed_Matrix; Right : Fixed) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Fixed; Right : Fixed_Matrix) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Fixed_Matrix; Right : Fixed_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Fixed_Matrix; Right : Fixed) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Fixed; Right : Fixed_Matrix) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Fixed_Matrix; Right : Fixed_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Fixed_Matrix; Right : Fixed) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Fixed; Right : Fixed_Matrix) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Fixed_Matrix; Right : Fixed_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Fixed_Matrix; Right : Fixed) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Fixed; Right : Fixed_Matrix) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	-----------------
	-- Long_Fixed Matrix --
	-----------------

	type Long_Fixed_Matrix is array(Positive range <>, Positive range <>) of Long_Fixed;

	function "+"(Value : Long_Fixed_Matrix) return Long_Fixed_Matrix with Pure_Function;
	--Distributed assertion

	function "-"(Value : Long_Fixed_Matrix) return Long_Fixed_Matrix with Pure_Function;
	--Distributed negation

	function "abs"(Value : Long_Fixed_Matrix) return Long_Fixed_Matrix with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Long_Fixed_Matrix; Right : Long_Fixed_Matrix) return Long_Fixed_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix addition, add together each respective element of Left and Right

	function "+"(Left : Long_Fixed_Matrix; Right : Long_Fixed) return Long_Fixed_Matrix with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Long_Fixed; Right : Long_Fixed_Matrix) return Long_Fixed_Matrix with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Long_Fixed_Matrix; Right : Long_Fixed_Matrix) return Long_Fixed_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix subtraction, subtract each respective element of Left and Right

	function "-"(Left : Long_Fixed_Matrix; Right : Long_Fixed) return Long_Fixed_Matrix with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Long_Fixed; Right : Long_Fixed_Matrix) return Long_Fixed_Matrix with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Long_Fixed_Matrix; Right : Long_Fixed_Matrix) return Long_Fixed_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix multiplication, multiply together each respective element

	function "*"(Left : Long_Fixed_Matrix; Right : Long_Fixed) return Long_Fixed_Matrix with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Long_Fixed; Right : Long_Fixed_Matrix) return Long_Fixed_Matrix with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Long_Fixed_Matrix; Right : Long_Fixed_Matrix) return Long_Fixed_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix division, divide each respective element of Left and Right

	function "/"(Left : Long_Fixed_Matrix; Right : Long_Fixed) return Long_Fixed_Matrix with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Long_Fixed; Right : Long_Fixed_Matrix) return Long_Fixed_Matrix with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Long_Fixed_Matrix; Right : Long_Fixed_Matrix) return Long_Fixed_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Long_Fixed_Matrix; Right : Long_Fixed) return Long_Fixed_Matrix with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Long_Fixed; Right : Long_Fixed_Matrix) return Long_Fixed_Matrix with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Long_Fixed_Matrix; Right : Long_Fixed_Matrix) return Long_Fixed_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Long_Fixed_Matrix; Right : Long_Fixed) return Long_Fixed_Matrix with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Long_Fixed; Right : Long_Fixed_Matrix) return Long_Fixed_Matrix with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Long_Fixed_Matrix; Right : Long_Fixed_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix equality, test each respective element of Left and Right

	function "="(Left : Long_Fixed_Matrix; Right : Long_Fixed) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Long_Fixed; Right : Long_Fixed_Matrix) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Long_Fixed_Matrix; Right : Long_Fixed_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Long_Fixed_Matrix; Right : Long_Fixed) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Long_Fixed; Right : Long_Fixed_Matrix) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Long_Fixed_Matrix; Right : Long_Fixed_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Long_Fixed_Matrix; Right : Long_Fixed) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Long_Fixed; Right : Long_Fixed_Matrix) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Long_Fixed_Matrix; Right : Long_Fixed_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Long_Fixed_Matrix; Right : Long_Fixed) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Long_Fixed; Right : Long_Fixed_Matrix) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Long_Fixed_Matrix; Right : Long_Fixed_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Long_Fixed_Matrix; Right : Long_Fixed) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Long_Fixed; Right : Long_Fixed_Matrix) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	-------------------------
	-- Short Decimal Matrix --
	-------------------------

	type Short_Decimal_Matrix is array(Positive range <>, Positive range <>) of Short_Decimal;

	function "+"(Value : Short_Decimal_Matrix) return Short_Decimal_Matrix with Pure_Function;
	--Distributed assertion

	function "-"(Value : Short_Decimal_Matrix) return Short_Decimal_Matrix with Pure_Function;
	--Distributed negation

	function "abs"(Value : Short_Decimal_Matrix) return Short_Decimal_Matrix with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Short_Decimal_Matrix; Right : Short_Decimal_Matrix) return Short_Decimal_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix addition, add together each respective element of Left and Right

	function "+"(Left : Short_Decimal_Matrix; Right : Short_Decimal) return Short_Decimal_Matrix with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Short_Decimal; Right : Short_Decimal_Matrix) return Short_Decimal_Matrix with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Short_Decimal_Matrix; Right : Short_Decimal_Matrix) return Short_Decimal_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix subtraction, subtract each respective element of Left and Right

	function "-"(Left : Short_Decimal_Matrix; Right : Short_Decimal) return Short_Decimal_Matrix with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Short_Decimal; Right : Short_Decimal_Matrix) return Short_Decimal_Matrix with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Short_Decimal_Matrix; Right : Short_Decimal_Matrix) return Short_Decimal_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix multiplication, multiply together each respective element

	function "*"(Left : Short_Decimal_Matrix; Right : Short_Decimal) return Short_Decimal_Matrix with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Short_Decimal; Right : Short_Decimal_Matrix) return Short_Decimal_Matrix with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Short_Decimal_Matrix; Right : Short_Decimal_Matrix) return Short_Decimal_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix division, divide each respective element of Left and Right

	function "/"(Left : Short_Decimal_Matrix; Right : Short_Decimal) return Short_Decimal_Matrix with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Short_Decimal; Right : Short_Decimal_Matrix) return Short_Decimal_Matrix with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Short_Decimal_Matrix; Right : Short_Decimal_Matrix) return Short_Decimal_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Short_Decimal_Matrix; Right : Short_Decimal) return Short_Decimal_Matrix with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Short_Decimal; Right : Short_Decimal_Matrix) return Short_Decimal_Matrix with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Short_Decimal_Matrix; Right : Short_Decimal_Matrix) return Short_Decimal_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Short_Decimal_Matrix; Right : Short_Decimal) return Short_Decimal_Matrix with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Short_Decimal; Right : Short_Decimal_Matrix) return Short_Decimal_Matrix with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Short_Decimal_Matrix; Right : Short_Decimal_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix equality, test each respective element of Left and Right

	function "="(Left : Short_Decimal_Matrix; Right : Short_Decimal) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Short_Decimal; Right : Short_Decimal_Matrix) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Short_Decimal_Matrix; Right : Short_Decimal_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Short_Decimal_Matrix; Right : Short_Decimal) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Short_Decimal; Right : Short_Decimal_Matrix) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Short_Decimal_Matrix; Right : Short_Decimal_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Short_Decimal_Matrix; Right : Short_Decimal) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Short_Decimal; Right : Short_Decimal_Matrix) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Short_Decimal_Matrix; Right : Short_Decimal_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Short_Decimal_Matrix; Right : Short_Decimal) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Short_Decimal; Right : Short_Decimal_Matrix) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Short_Decimal_Matrix; Right : Short_Decimal_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Short_Decimal_Matrix; Right : Short_Decimal) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Short_Decimal; Right : Short_Decimal_Matrix) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	-------------------
	-- Decimal Matrix --
	-------------------

	type Decimal_Matrix is array(Positive range <>, Positive range <>) of Decimal;

	function "+"(Value : Decimal_Matrix) return Decimal_Matrix with Pure_Function;
	--Distributed assertion

	function "-"(Value : Decimal_Matrix) return Decimal_Matrix with Pure_Function;
	--Distributed negation

	function "abs"(Value : Decimal_Matrix) return Decimal_Matrix with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Decimal_Matrix; Right : Decimal_Matrix) return Decimal_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix addition, add together each respective element of Left and Right

	function "+"(Left : Decimal_Matrix; Right : Decimal) return Decimal_Matrix with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Decimal; Right : Decimal_Matrix) return Decimal_Matrix with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Decimal_Matrix; Right : Decimal_Matrix) return Decimal_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix subtraction, subtract each respective element of Left and Right

	function "-"(Left : Decimal_Matrix; Right : Decimal) return Decimal_Matrix with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Decimal; Right : Decimal_Matrix) return Decimal_Matrix with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Decimal_Matrix; Right : Decimal_Matrix) return Decimal_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix multiplication, multiply together each respective element

	function "*"(Left : Decimal_Matrix; Right : Decimal) return Decimal_Matrix with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Decimal; Right : Decimal_Matrix) return Decimal_Matrix with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Decimal_Matrix; Right : Decimal_Matrix) return Decimal_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix division, divide each respective element of Left and Right

	function "/"(Left : Decimal_Matrix; Right : Decimal) return Decimal_Matrix with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Decimal; Right : Decimal_Matrix) return Decimal_Matrix with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Decimal_Matrix; Right : Decimal_Matrix) return Decimal_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Decimal_Matrix; Right : Decimal) return Decimal_Matrix with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Decimal; Right : Decimal_Matrix) return Decimal_Matrix with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Decimal_Matrix; Right : Decimal_Matrix) return Decimal_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Decimal_Matrix; Right : Decimal) return Decimal_Matrix with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Decimal; Right : Decimal_Matrix) return Decimal_Matrix with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Decimal_Matrix; Right : Decimal_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix equality, test each respective element of Left and Right

	function "="(Left : Decimal_Matrix; Right : Decimal) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Decimal; Right : Decimal_Matrix) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Decimal_Matrix; Right : Decimal_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Decimal_Matrix; Right : Decimal) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Decimal; Right : Decimal_Matrix) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Decimal_Matrix; Right : Decimal_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Decimal_Matrix; Right : Decimal) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Decimal; Right : Decimal_Matrix) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Decimal_Matrix; Right : Decimal_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Decimal_Matrix; Right : Decimal) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Decimal; Right : Decimal_Matrix) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Decimal_Matrix; Right : Decimal_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Decimal_Matrix; Right : Decimal) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Decimal; Right : Decimal_Matrix) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	------------------------
	-- Long Decimal Matrix --
	------------------------

	type Long_Decimal_Matrix is array(Positive range <>, Positive range <>) of Long_Decimal;

	function "+"(Value : Long_Decimal_Matrix) return Long_Decimal_Matrix with Pure_Function;
	--Distributed assertion

	function "-"(Value : Long_Decimal_Matrix) return Long_Decimal_Matrix with Pure_Function;
	--Distributed negation

	function "abs"(Value : Long_Decimal_Matrix) return Long_Decimal_Matrix with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Long_Decimal_Matrix; Right : Long_Decimal_Matrix) return Long_Decimal_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix addition, add together each respective element of Left and Right

	function "+"(Left : Long_Decimal_Matrix; Right : Long_Decimal) return Long_Decimal_Matrix with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Long_Decimal; Right : Long_Decimal_Matrix) return Long_Decimal_Matrix with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Long_Decimal_Matrix; Right : Long_Decimal_Matrix) return Long_Decimal_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix subtraction, subtract each respective element of Left and Right

	function "-"(Left : Long_Decimal_Matrix; Right : Long_Decimal) return Long_Decimal_Matrix with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Long_Decimal; Right : Long_Decimal_Matrix) return Long_Decimal_Matrix with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Long_Decimal_Matrix; Right : Long_Decimal_Matrix) return Long_Decimal_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix multiplication, multiply together each respective element

	function "*"(Left : Long_Decimal_Matrix; Right : Long_Decimal) return Long_Decimal_Matrix with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Long_Decimal; Right : Long_Decimal_Matrix) return Long_Decimal_Matrix with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Long_Decimal_Matrix; Right : Long_Decimal_Matrix) return Long_Decimal_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix division, divide each respective element of Left and Right

	function "/"(Left : Long_Decimal_Matrix; Right : Long_Decimal) return Long_Decimal_Matrix with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Long_Decimal; Right : Long_Decimal_Matrix) return Long_Decimal_Matrix with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Long_Decimal_Matrix; Right : Long_Decimal_Matrix) return Long_Decimal_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Long_Decimal_Matrix; Right : Long_Decimal) return Long_Decimal_Matrix with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Long_Decimal; Right : Long_Decimal_Matrix) return Long_Decimal_Matrix with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Long_Decimal_Matrix; Right : Long_Decimal_Matrix) return Long_Decimal_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Long_Decimal_Matrix; Right : Long_Decimal) return Long_Decimal_Matrix with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Long_Decimal; Right : Long_Decimal_Matrix) return Long_Decimal_Matrix with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Long_Decimal_Matrix; Right : Long_Decimal_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix equality, test each respective element of Left and Right

	function "="(Left : Long_Decimal_Matrix; Right : Long_Decimal) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Long_Decimal; Right : Long_Decimal_Matrix) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Long_Decimal_Matrix; Right : Long_Decimal_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Long_Decimal_Matrix; Right : Long_Decimal) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Long_Decimal; Right : Long_Decimal_Matrix) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Long_Decimal_Matrix; Right : Long_Decimal_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Long_Decimal_Matrix; Right : Long_Decimal) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Long_Decimal; Right : Long_Decimal_Matrix) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Long_Decimal_Matrix; Right : Long_Decimal_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Long_Decimal_Matrix; Right : Long_Decimal) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Long_Decimal; Right : Long_Decimal_Matrix) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Long_Decimal_Matrix; Right : Long_Decimal_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Long_Decimal_Matrix; Right : Long_Decimal) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Long_Decimal; Right : Long_Decimal_Matrix) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	-----------------------------
	-- Long Long Decimal Matrix --
	-----------------------------

	type Long_Long_Decimal_Matrix is array(Positive range <>, Positive range <>) of Long_Long_Decimal;

	function "+"(Value : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix with Pure_Function;
	--Distributed assertion

	function "-"(Value : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix with Pure_Function;
	--Distributed negation

	function "abs"(Value : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix addition, add together each respective element of Left and Right

	function "+"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal) return Long_Long_Decimal_Matrix with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix subtraction, subtract each respective element of Left and Right

	function "-"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal) return Long_Long_Decimal_Matrix with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix multiplication, multiply together each respective element

	function "*"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal) return Long_Long_Decimal_Matrix with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix division, divide each respective element of Left and Right

	function "/"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal) return Long_Long_Decimal_Matrix with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal) return Long_Long_Decimal_Matrix with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal) return Long_Long_Decimal_Matrix with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Matrix) return Long_Long_Decimal_Matrix with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix equality, test each respective element of Left and Right

	function "="(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Matrix) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Matrix) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Matrix) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Matrix) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Long_Long_Decimal_Matrix; Right : Long_Long_Decimal) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Long_Long_Decimal; Right : Long_Long_Decimal_Matrix) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	-----------------------
	-- Short Float Matrix --
	-----------------------

	type Short_Float_Matrix is array(Positive range <>, Positive range <>) of Short_Float;

	function "+"(Value : Short_Float_Matrix) return Short_Float_Matrix with Pure_Function;
	--Distributed assertion

	function "-"(Value : Short_Float_Matrix) return Short_Float_Matrix with Pure_Function;
	--Distributed negation

	function "abs"(Value : Short_Float_Matrix) return Short_Float_Matrix with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Short_Float_Matrix; Right : Short_Float_Matrix) return Short_Float_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix addition, add together each respective element of Left and Right

	function "+"(Left : Short_Float_Matrix; Right : Short_Float) return Short_Float_Matrix with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Short_Float; Right : Short_Float_Matrix) return Short_Float_Matrix with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Short_Float_Matrix; Right : Short_Float_Matrix) return Short_Float_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix subtraction, subtract each respective element of Left and Right

	function "-"(Left : Short_Float_Matrix; Right : Short_Float) return Short_Float_Matrix with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Short_Float; Right : Short_Float_Matrix) return Short_Float_Matrix with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Short_Float_Matrix; Right : Short_Float_Matrix) return Short_Float_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix multiplication, multiply together each respective element

	function "*"(Left : Short_Float_Matrix; Right : Short_Float) return Short_Float_Matrix with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Short_Float; Right : Short_Float_Matrix) return Short_Float_Matrix with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Short_Float_Matrix; Right : Short_Float_Matrix) return Short_Float_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix division, divide each respective element of Left and Right

	function "/"(Left : Short_Float_Matrix; Right : Short_Float) return Short_Float_Matrix with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Short_Float; Right : Short_Float_Matrix) return Short_Float_Matrix with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Short_Float_Matrix; Right : Short_Float_Matrix) return Short_Float_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Short_Float_Matrix; Right : Short_Float) return Short_Float_Matrix with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Short_Float; Right : Short_Float_Matrix) return Short_Float_Matrix with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Short_Float_Matrix; Right : Short_Float_Matrix) return Short_Float_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Short_Float_Matrix; Right : Short_Float) return Short_Float_Matrix with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Short_Float; Right : Short_Float_Matrix) return Short_Float_Matrix with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Short_Float_Matrix; Right : Short_Float_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix equality, test each respective element of Left and Right

	function "="(Left : Short_Float_Matrix; Right : Short_Float) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Short_Float; Right : Short_Float_Matrix) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Short_Float_Matrix; Right : Short_Float_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Short_Float_Matrix; Right : Short_Float) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Short_Float; Right : Short_Float_Matrix) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Short_Float_Matrix; Right : Short_Float_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Short_Float_Matrix; Right : Short_Float) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Short_Float; Right : Short_Float_Matrix) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Short_Float_Matrix; Right : Short_Float_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Short_Float_Matrix; Right : Short_Float) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Short_Float; Right : Short_Float_Matrix) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Short_Float_Matrix; Right : Short_Float_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Short_Float_Matrix; Right : Short_Float) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Short_Float; Right : Short_Float_Matrix) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	-----------------
	-- Float Matrix --
	-----------------

	type Float_Matrix is array(Positive range <>, Positive range <>) of Float;

	function "+"(Value : Float_Matrix) return Float_Matrix with Pure_Function;
	--Distributed assertion

	function "-"(Value : Float_Matrix) return Float_Matrix with Pure_Function;
	--Distributed negation

	function "abs"(Value : Float_Matrix) return Float_Matrix with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Float_Matrix; Right : Float_Matrix) return Float_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix addition, add together each respective element of Left and Right

	function "+"(Left : Float_Matrix; Right : Float) return Float_Matrix with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Float; Right : Float_Matrix) return Float_Matrix with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Float_Matrix; Right : Float_Matrix) return Float_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix subtraction, subtract each respective element of Left and Right

	function "-"(Left : Float_Matrix; Right : Float) return Float_Matrix with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Float; Right : Float_Matrix) return Float_Matrix with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Float_Matrix; Right : Float_Matrix) return Float_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix multiplication, multiply together each respective element

	function "*"(Left : Float_Matrix; Right : Float) return Float_Matrix with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Float; Right : Float_Matrix) return Float_Matrix with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Float_Matrix; Right : Float_Matrix) return Float_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix division, divide each respective element of Left and Right

	function "/"(Left : Float_Matrix; Right : Float) return Float_Matrix with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Float; Right : Float_Matrix) return Float_Matrix with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Float_Matrix; Right : Float_Matrix) return Float_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Float_Matrix; Right : Float) return Float_Matrix with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Float; Right : Float_Matrix) return Float_Matrix with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Float_Matrix; Right : Float_Matrix) return Float_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Float_Matrix; Right : Float) return Float_Matrix with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Float; Right : Float_Matrix) return Float_Matrix with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Float_Matrix; Right : Float_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix equality, test each respective element of Left and Right

	function "="(Left : Float_Matrix; Right : Float) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Float; Right : Float_Matrix) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Float_Matrix; Right : Float_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Float_Matrix; Right : Float) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Float; Right : Float_Matrix) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Float_Matrix; Right : Float_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Float_Matrix; Right : Float) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Float; Right : Float_Matrix) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Float_Matrix; Right : Float_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Float_Matrix; Right : Float) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Float; Right : Float_Matrix) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Float_Matrix; Right : Float_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Float_Matrix; Right : Float) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Float; Right : Float_Matrix) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	----------------------
	-- Long Float Matrix --
	----------------------

	type Long_Float_Matrix is array(Positive range <>, Positive range <>) of Long_Float;

	function "+"(Value : Long_Float_Matrix) return Long_Float_Matrix with Pure_Function;
	--Distributed assertion

	function "-"(Value : Long_Float_Matrix) return Long_Float_Matrix with Pure_Function;
	--Distributed negation

	function "abs"(Value : Long_Float_Matrix) return Long_Float_Matrix with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Long_Float_Matrix; Right : Long_Float_Matrix) return Long_Float_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix addition, add together each respective element of Left and Right

	function "+"(Left : Long_Float_Matrix; Right : Long_Float) return Long_Float_Matrix with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Long_Float; Right : Long_Float_Matrix) return Long_Float_Matrix with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Long_Float_Matrix; Right : Long_Float_Matrix) return Long_Float_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix subtraction, subtract each respective element of Left and Right

	function "-"(Left : Long_Float_Matrix; Right : Long_Float) return Long_Float_Matrix with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Long_Float; Right : Long_Float_Matrix) return Long_Float_Matrix with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Long_Float_Matrix; Right : Long_Float_Matrix) return Long_Float_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix multiplication, multiply together each respective element

	function "*"(Left : Long_Float_Matrix; Right : Long_Float) return Long_Float_Matrix with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Long_Float; Right : Long_Float_Matrix) return Long_Float_Matrix with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Long_Float_Matrix; Right : Long_Float_Matrix) return Long_Float_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix division, divide each respective element of Left and Right

	function "/"(Left : Long_Float_Matrix; Right : Long_Float) return Long_Float_Matrix with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Long_Float; Right : Long_Float_Matrix) return Long_Float_Matrix with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Long_Float_Matrix; Right : Long_Float_Matrix) return Long_Float_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Long_Float_Matrix; Right : Long_Float) return Long_Float_Matrix with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Long_Float; Right : Long_Float_Matrix) return Long_Float_Matrix with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Long_Float_Matrix; Right : Long_Float_Matrix) return Long_Float_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Long_Float_Matrix; Right : Long_Float) return Long_Float_Matrix with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Long_Float; Right : Long_Float_Matrix) return Long_Float_Matrix with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Long_Float_Matrix; Right : Long_Float_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix equality, test each respective element of Left and Right

	function "="(Left : Long_Float_Matrix; Right : Long_Float) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Long_Float; Right : Long_Float_Matrix) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Long_Float_Matrix; Right : Long_Float_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Long_Float_Matrix; Right : Long_Float) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Long_Float; Right : Long_Float_Matrix) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Long_Float_Matrix; Right : Long_Float_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Long_Float_Matrix; Right : Long_Float) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Long_Float; Right : Long_Float_Matrix) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Long_Float_Matrix; Right : Long_Float_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Long_Float_Matrix; Right : Long_Float) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Long_Float; Right : Long_Float_Matrix) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Long_Float_Matrix; Right : Long_Float_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Long_Float_Matrix; Right : Long_Float) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Long_Float; Right : Long_Float_Matrix) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

	---------------------------
	-- Long Long Float Matrix --
	---------------------------

	type Long_Long_Float_Matrix is array(Positive range <>, Positive range <>) of Long_Long_Float;

	function "+"(Value : Long_Long_Float_Matrix) return Long_Long_Float_Matrix with Pure_Function;
	--Distributed assertion

	function "-"(Value : Long_Long_Float_Matrix) return Long_Long_Float_Matrix with Pure_Function;
	--Distributed negation

	function "abs"(Value : Long_Long_Float_Matrix) return Long_Long_Float_Matrix with Pure_Function;
	--Distributed absolute value

	function "+"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float_Matrix) return Long_Long_Float_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix addition, add together each respective element of Left and Right

	function "+"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float) return Long_Long_Float_Matrix with Pure_Function;
	--Distributed addition, add each element of Left with Right

	function "+"(Left : Long_Long_Float; Right : Long_Long_Float_Matrix) return Long_Long_Float_Matrix with Pure_Function;
	--Distributed addition, add Left with each element of Right

	function "-"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float_Matrix) return Long_Long_Float_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix subtraction, subtract each respective element of Left and Right

	function "-"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float) return Long_Long_Float_Matrix with Pure_Function;
	--Distributed subtraction, subtract Right from each element of Left

	function "-"(Left : Long_Long_Float; Right : Long_Long_Float_Matrix) return Long_Long_Float_Matrix with Pure_Function;
	--Distributed subtraction, subtract each element of Right from Left

	function "*"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float_Matrix) return Long_Long_Float_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix multiplication, multiply together each respective element

	function "*"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float) return Long_Long_Float_Matrix with Pure_Function;
	--Distributed multiplication, multiply each element of Left with Right

	function "*"(Left : Long_Long_Float; Right : Long_Long_Float_Matrix) return Long_Long_Float_Matrix with Pure_Function;
	--Distributed multiplication, multiply Left with each element of Right

	function "/"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float_Matrix) return Long_Long_Float_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix division, divide each respective element of Left and Right

	function "/"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float) return Long_Long_Float_Matrix with Pure_Function;
	--Distributed division, divide each element of Left by Right

	function "/"(Left : Long_Long_Float; Right : Long_Long_Float_Matrix) return Long_Long_Float_Matrix with Pure_Function;
	--Distributed division, each Left by each element of Right

	function "rem"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float_Matrix) return Long_Long_Float_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix remainder, divide each respective element of Left and Right, keep the remainder

	function "rem"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float) return Long_Long_Float_Matrix with Pure_Function;
	--Distributed remainder, divide each element of Left by Right, keep the remainder

	function "rem"(Left : Long_Long_Float; Right : Long_Long_Float_Matrix) return Long_Long_Float_Matrix with Pure_Function;
	--Distributed remainder, divide Left by each element of Right

	function "mod"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float_Matrix) return Long_Long_Float_Matrix with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed modulus, divide each respective element of Left and Right, keep the remainder

	function "mod"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float) return Long_Long_Float_Matrix with Pure_Function;
	--Distributed modulus, divide each element of Left by Right, keep the remainder

	function "mod"(Left : Long_Long_Float; Right : Long_Long_Float_Matrix) return Long_Long_Float_Matrix with Pure_Function;
	--Distributed modulus, divide Left by each element of Right

	function "="(Left : Long_Long_Float_Matrix; Right : Long_Long_Float_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Matrix equality, test each respective element of Left and Right

	function "="(Left : Long_Long_Float_Matrix; Right : Long_Long_Float) return Boolean with Pure_Function;
	--Distributed equality, test each element of Left with Right

	function "="(Left : Long_Long_Float; Right : Long_Long_Float_Matrix) return Boolean with Pure_Function;
	--Distributed equality, test Left with each element of Right

	function "<"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser, test each respective element of Left with Right

	function "<"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float) return Boolean with Pure_Function;
	--Distributed lesser, test each element of Left with Right

	function "<"(Left : Long_Long_Float; Right : Long_Long_Float_Matrix) return Boolean with Pure_Function;
	--Distributed lesser, test Left with each element of Right

	function ">"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater, test each respective element of Left with Right

	function ">"(Left : Long_Long_Float_Matrix; Right : Long_Long_Float) return Boolean with Pure_Function;
	--Distributed greater, test each element of Left with Right

	function ">"(Left : Long_Long_Float; Right : Long_Long_Float_Matrix) return Boolean with Pure_Function;
	--Distributed greater, test Left with each element of Right

	function "<="(Left : Long_Long_Float_Matrix; Right : Long_Long_Float_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed lesser or equal, test each respective element of Left with Right

	function "<="(Left : Long_Long_Float_Matrix; Right : Long_Long_Float) return Boolean with Pure_Function;
	--Distributed lesser or equal, test each element of Left with Right

	function "<="(Left : Long_Long_Float; Right : Long_Long_Float_Matrix) return Boolean with Pure_Function;
	--Distributed lesser or equal, test Left with each element of Right

	function ">="(Left : Long_Long_Float_Matrix; Right : Long_Long_Float_Matrix) return Boolean with Pure_Function, Pre => Left'Length = Right'Length;
	--Distributed greater or equal, test each respective element of Left with Right

	function ">="(Left : Long_Long_Float_Matrix; Right : Long_Long_Float) return Boolean with Pure_Function;
	--Distributed greater or equal, test each element of Left with Right

	function ">="(Left : Long_Long_Float; Right : Long_Long_Float_Matrix) return Boolean with Pure_Function;
	--Distributed greater or equal, test Left with each element of Right

end Mathematics.Matrices;
