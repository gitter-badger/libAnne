with Ada.Strings.Unbounded, Ada.Strings.Wide_Unbounded, Ada.Strings.Wide_Wide_Unbounded, Generics.Text;
use Ada.Strings.Unbounded, Ada.Strings.Wide_Unbounded, Ada.Strings.Wide_Wide_Unbounded, Generics.Text;

package Text is
--@description Provides better string handling in Ada
--@version 1.0.0

	type Split_String(Length : Positive) is private;

	type Split_Wide_String(Length : Positive) is private;

	type Split_Wide_Wide_String(Length : Positive) is private;

	----------
	-- Chop --
	----------

	function Chop(Value : String; Length : Positive) return Split_String with Pure_Function;
	--@description Chops the String into chunks of Length

	function Chop(Value : Wide_String; Length : Positive) return Split_Wide_String with Pure_Function;
	--@description Chops the String into chunks of Length

	function Chop(Value : Wide_Wide_String; Length : Positive) return Split_Wide_Wide_String with Pure_Function;
	--@description Chops the String into chunks of Length

	----------------
	-- Occurences --
	----------------

	function Occurences(Source : String; Value : Character) return Natural with Pure_Function;
	--@description Count all occurences of the specified Character in this String

	function Occurences(Source : Wide_String; Value : Wide_Character) return Natural with Pure_Function;
	--@description Count all occurences of the specified Character in this String

	function Occurences(Source : Wide_Wide_String; Value : Wide_Wide_Character) return Natural with Pure_Function;
	--@description Count all occurences of the specified Character in this String

	---------
	-- Pad --
	---------

	function Pad_Left(Source : String; Amount : Integer) return String with Pure_Function;

	function Pad_Left(Source : String; Amount : Integer; Pad_Char : Character) return String with Pure_Function;

	function Pad_Left(Source : Wide_String; Amount : Integer) return Wide_String with Pure_Function;

	function Pad_Left(Source : Wide_String; Amount : Integer; Pad_Char : Wide_Character) return Wide_String with Pure_Function;

	function Pad_Left(Source : Wide_Wide_String; Amount : Integer) return Wide_Wide_String with Pure_Function;

	function Pad_Left(Source : Wide_Wide_String; Amount : Integer; Pad_Char : Wide_Wide_Character) return Wide_Wide_String with Pure_Function;

	function Pad_Right(Source : String; Amount : Integer) return String with Pure_Function;

	function Pad_Right(Source : String; Amount : Integer; Pad_Char : Character) return String with Pure_Function;

	function Pad_Right(Source : Wide_String; Amount : Integer) return Wide_String with Pure_Function;

	function Pad_Right(Source : Wide_String; Amount : Integer; Pad_Char : Wide_Character) return Wide_String with Pure_Function;

	function Pad_Right(Source : Wide_Wide_String; Amount : Integer) return Wide_Wide_String with Pure_Function;

	function Pad_Right(Source : Wide_Wide_String; Amount : Integer; Pad_Char : Wide_Wide_Character) return Wide_Wide_String with Pure_Function;

	-----------
	-- Split --
	-----------

	function Split(Value : String; At_Character : Character) return Split_String with Pure_Function;
	--@description Split the string at all occurences of the specified character

	function Split(Value : Wide_String; At_Character : Wide_Character) return Split_Wide_String with Pure_Function;
	--@description Split the string at all occurences of the specified character

	function Split(Value : Wide_Wide_String; At_Character : Wide_Wide_Character) return Split_Wide_Wide_String with Pure_Function;
	--@description Split the string at all occurences of the specified character

	-----------
	-- Strip --
	-----------

	function Strip(Value : String; Strip_Chars : Character) return String with Pure_Function;
	--@description Strips the specified characters out of the String

	function Strip(Value : Wide_String; Strip_Chars : Wide_Character) return Wide_String with Pure_Function;
	--@description Strips the specified characters out of the String

	function Strip(Value : Wide_Wide_String; Strip_Chars : Wide_Wide_Character) return Wide_Wide_String with Pure_Function;
	--@description Strips the specified characters out of the String

	-----------------
	-- Conversions --
	-----------------
	
	function To_String(Value : Unbounded_String) return String with Pure_Function;
	function To_String(Value : Unbounded_Wide_String) return String with Pure_Function;
	function To_String(Value : Unbounded_Wide_Wide_String) return String with Pure_Function;
	
	function To_Wide_String(Value : Unbounded_String) return Wide_String with Pure_Function;
	function To_Wide_String(Value : Unbounded_Wide_String) return Wide_String with Pure_Function;
	function To_Wide_String(Value : Unbounded_Wide_Wide_String) return Wide_String with Pure_Function;
	
	function To_Wide_Wide_String(Value : Unbounded_String) return Wide_Wide_String with Pure_Function;
	function To_Wide_Wide_String(Value : Unbounded_Wide_String) return Wide_Wide_String with Pure_Function;
	function To_Wide_Wide_String(Value : Unbounded_Wide_Wide_String) return Wide_Wide_String with Pure_Function;
	
	function To_Unbounded_String(Value : String) return Unbounded_String with Pure_Function;
	function To_Unbounded_String(Value : Wide_String) return Unbounded_String with Pure_Function;
	function To_Unbounded_String(Value : Wide_Wide_String) return Unbounded_String with Pure_Function;
	
	function To_Unbounded_Wide_String(Value : String) return Unbounded_Wide_String with Pure_Function;
	function To_Unbounded_Wide_String(Value : Wide_String) return Unbounded_Wide_String with Pure_Function;
	function To_Unbounded_Wide_String(Value : Wide_Wide_String) return Unbounded_Wide_String with Pure_Function;
	
	function To_Unbounded_Wide_Wide_String(Value : String) return Unbounded_Wide_Wide_String with Pure_Function;
	function To_Unbounded_Wide_Wide_String(Value : Wide_String) return Unbounded_Wide_Wide_String with Pure_Function;
	function To_Unbounded_Wide_Wide_String(Value : Wide_Wide_String) return Unbounded_Wide_Wide_String with Pure_Function;
	
	-------------------------------------
	-- Fixed String / Unbounded String --
	-------------------------------------
	
	function "&"(Left : String; Right : Unbounded_String) return Unbounded_String;
	
	function "&"(Left : Wide_String; Right : Unbounded_Wide_String) return Unbounded_Wide_String;
	
	function "&"(Left : Wide_Wide_String; Right : Unbounded_Wide_Wide_String) return Unbounded_Wide_Wide_String;
	
	-------------------------------------
	-- Unbounded String / Fixed String --
	-------------------------------------
	
	function "&"(Left : Unbounded_String; Right : String) return Unbounded_String;
	
	function "&"(Left : Unbounded_Wide_String; Right : Wide_String) return Unbounded_Wide_String;
	
	function "&"(Left : Unbounded_Wide_Wide_String; Right : Wide_Wide_String) return Unbounded_Wide_Wide_String;

	----------------------------
	-- Fixed String / Boolean --
	----------------------------

	function "&" is new String_Any_Concatenate(Boolean, Boolean'Image);

	function "&" is new Wide_String_Any_Concatenate(Boolean, Boolean'Wide_Image);

	function "&" is new Wide_Wide_String_Any_Concatenate(Boolean, Boolean'Wide_Wide_Image);
	
	----------------------------
	-- Boolean / Fixed String --
	----------------------------

	function "&" is new Any_String_Concatenate(Boolean, Boolean'Image);

	function "&" is new Any_Wide_String_Concatenate(Boolean, Boolean'Wide_Image);

	function "&" is new Any_Wide_Wide_String_Concatenate(Boolean, Boolean'Wide_Wide_Image);
	
	----------------------------
	-- Fixed String / Integer --
	----------------------------
	
	function "&" is new String_Any_Concatenate(Short_Short_Integer, Short_Short_Integer'Image);
	function "&" is new String_Any_Concatenate(Short_Integer, Short_Integer'Image);
	function "&" is new String_Any_Concatenate(Integer, Integer'Image);
	function "&" is new String_Any_Concatenate(Long_Integer, Long_Integer'Image);
	function "&" is new String_Any_Concatenate(Long_Long_Integer, Long_Long_Integer'Image);
	
	function "&" is new Wide_String_Any_Concatenate(Short_Short_Integer, Short_Short_Integer'Wide_Image);
	function "&" is new Wide_String_Any_Concatenate(Short_Integer, Short_Integer'Wide_Image);
	function "&" is new Wide_String_Any_Concatenate(Integer, Integer'Wide_Image);
	function "&" is new Wide_String_Any_Concatenate(Long_Integer, Long_Integer'Wide_Image);
	function "&" is new Wide_String_Any_Concatenate(Long_Long_Integer, Long_Long_Integer'Wide_Image);
	
	function "&" is new Wide_Wide_String_Any_Concatenate(Short_Short_Integer, Short_Short_Integer'Wide_Wide_Image);
	function "&" is new Wide_Wide_String_Any_Concatenate(Short_Integer, Short_Integer'Wide_Wide_Image);
	function "&" is new Wide_Wide_String_Any_Concatenate(Integer, Integer'Wide_Wide_Image);
	function "&" is new Wide_Wide_String_Any_Concatenate(Long_Integer, Long_Integer'Wide_Wide_Image);
	function "&" is new Wide_Wide_String_Any_Concatenate(Long_Long_Integer, Long_Long_Integer'Wide_Wide_Image);
	
	----------------------------
	-- Integer / Fixed String --
	----------------------------
	
	function "&" is new Any_String_Concatenate(Short_Short_Integer, Short_Short_Integer'Image);
	function "&" is new Any_String_Concatenate(Short_Integer, Short_Integer'Image);
	function "&" is new Any_String_Concatenate(Integer, Integer'Image);
	function "&" is new Any_String_Concatenate(Long_Integer, Long_Integer'Image);
	function "&" is new Any_String_Concatenate(Long_Long_Integer, Long_Long_Integer'Image);
	
	function "&" is new Any_Wide_String_Concatenate(Short_Short_Integer, Short_Short_Integer'Wide_Image);
	function "&" is new Any_Wide_String_Concatenate(Short_Integer, Short_Integer'Wide_Image);
	function "&" is new Any_Wide_String_Concatenate(Integer, Integer'Wide_Image);
	function "&" is new Any_Wide_String_Concatenate(Long_Integer, Long_Integer'Wide_Image);
	function "&" is new Any_Wide_String_Concatenate(Long_Long_Integer, Long_Long_Integer'Wide_Image);
	
	function "&" is new Any_Wide_Wide_String_Concatenate(Short_Short_Integer, Short_Short_Integer'Wide_Wide_Image);
	function "&" is new Any_Wide_Wide_String_Concatenate(Short_Integer, Short_Integer'Wide_Wide_Image);
	function "&" is new Any_Wide_Wide_String_Concatenate(Integer, Integer'Wide_Wide_Image);
	function "&" is new Any_Wide_Wide_String_Concatenate(Long_Integer, Long_Integer'Wide_Wide_Image);
	function "&" is new Any_Wide_Wide_String_Concatenate(Long_Long_Integer, Long_Long_Integer'Wide_Wide_Image);
	
	-----------------------------
	-- Fixed String / Duration --
	-----------------------------
	
	function "&" is new String_Any_Concatenate(Duration, Duration'Image);
	
	function "&" is new Wide_String_Any_Concatenate(Duration, Duration'Wide_Image);
	
	function "&" is new Wide_Wide_String_Any_Concatenate(Duration, Duration'Wide_Wide_Image);
	
	-----------------------------
	-- Duration / Fixed String --
	-----------------------------
	
	function "&" is new Any_String_Concatenate(Duration, Duration'Image);
	
	function "&" is new Any_Wide_String_Concatenate(Duration, Duration'Wide_Image);
	
	function "&" is new Any_Wide_Wide_String_Concatenate(Duration, Duration'Wide_Wide_Image);
	
	--------------------------------
	-- Fixed String / Float Point --
	--------------------------------
	
	function "&" is new String_Any_Concatenate(Short_Float, Short_Float'Image);
	function "&" is new String_Any_Concatenate(Float, Float'Image);
	function "&" is new String_Any_Concatenate(Long_Float, Long_Float'Image);
	function "&" is new String_Any_Concatenate(Long_Long_Float, Long_Long_Float'Image);
	
	function "&" is new Wide_String_Any_Concatenate(Short_Float, Short_Float'Wide_Image);
	function "&" is new Wide_String_Any_Concatenate(Float, Float'Wide_Image);
	function "&" is new Wide_String_Any_Concatenate(Long_Float, Long_Float'Wide_Image);
	function "&" is new Wide_String_Any_Concatenate(Long_Long_Float, Long_Long_Float'Wide_Image);
	
	function "&" is new Wide_Wide_String_Any_Concatenate(Short_Float, Short_Float'Wide_Wide_Image);
	function "&" is new Wide_Wide_String_Any_Concatenate(Float, Float'Wide_Wide_Image);
	function "&" is new Wide_Wide_String_Any_Concatenate(Long_Float, Long_Float'Wide_Wide_Image);
	function "&" is new Wide_Wide_String_Any_Concatenate(Long_Long_Float, Long_Long_Float'Wide_Wide_Image);
	
	--------------------------------
	-- Float Point / Fixed String --
	--------------------------------
	
	function "&" is new Any_String_Concatenate(Short_Float, Short_Float'Image);
	function "&" is new Any_String_Concatenate(Float, Float'Image);
	function "&" is new Any_String_Concatenate(Long_Float, Long_Float'Image);
	function "&" is new Any_String_Concatenate(Long_Long_Float, Long_Long_Float'Image);
	
	function "&" is new Any_Wide_String_Concatenate(Short_Float, Short_Float'Wide_Image);
	function "&" is new Any_Wide_String_Concatenate(Float, Float'Wide_Image);
	function "&" is new Any_Wide_String_Concatenate(Long_Float, Long_Float'Wide_Image);
	function "&" is new Any_Wide_String_Concatenate(Long_Long_Float, Long_Long_Float'Wide_Image);
	
	function "&" is new Any_Wide_Wide_String_Concatenate(Short_Float, Short_Float'Wide_Wide_Image);
	function "&" is new Any_Wide_Wide_String_Concatenate(Float, Float'Wide_Wide_Image);
	function "&" is new Any_Wide_Wide_String_Concatenate(Long_Float, Long_Float'Wide_Wide_Image);
	function "&" is new Any_Wide_Wide_String_Concatenate(Long_Long_Float, Long_Long_Float'Wide_Wide_Image);

private

	------------
	-- String --
	------------	

	type String_Access_Array is array(Positive range <>) of access String;

	type Split_String(Length : Positive) is tagged record
		Backing : String_Access_Array(1 .. Length);
	end record with
		Constant_Indexing => Constant_Indexer;
	
	type Constant_String_Reference(Value : not null access constant String) is limited null record with Implicit_Dereference => Value;

	function Constant_Indexer(Self : Split_String; Index : Positive) return Constant_String_Reference with Pre => Index <= Self.Length;

	-----------------
	-- Wide String --
	-----------------

	type Wide_String_Access_Array is array(Positive range <>) of access Wide_String;

	type Split_Wide_String(Length : Positive) is tagged record
		Backing : Wide_String_Access_Array(1 .. Length);
	end record with
		Constant_Indexing => Wide_Constant_Indexer;

	type Constant_Wide_String_Reference(Value : not null access constant Wide_String) is limited null record with Implicit_Dereference => Value;

	function Wide_Constant_Indexer(Self : Split_Wide_String; Index : Positive) return Constant_Wide_String_Reference with Pre => Index <= Self.Length;

	----------------------
	-- Wide Wide String --
	----------------------

	type Wide_Wide_String_Access_Array is array(Positive range <>) of access Wide_Wide_String;

	type Split_Wide_Wide_String(Length : Positive) is tagged record
		Backing : Wide_Wide_String_Access_Array(1 .. Length);
	end record with
		Constant_Indexing => Wide_Wide_Constant_Indexer;

	type Constant_Wide_Wide_String_Reference(Value : not null access constant Wide_Wide_String) is limited null record with Implicit_Dereference => Value;

	function Wide_Wide_Constant_Indexer(Self : Split_Wide_Wide_String; Index : Positive) return Constant_Wide_Wide_String_Reference with Pre => Index <= Self.Length;

end Text;
