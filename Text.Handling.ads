with Generics.Text.Handling, Numerics;
use Generics.Text.Handling, Numerics;

package Text.Handling is

	------------------------
	-- Control Characters --
	------------------------

	subtype Control_Character is Character with Dynamic_Predicate => (
		Character'Pos(Control_Character) in 16#00# .. 16#20# or
		Character'Pos(Control_Character) =  16#7F# or
		Character'Pos(Control_Character) in 16#80# .. 16#9F#);

	function Is_Control(Char : Character) return Boolean with Inline, Pure_Function;

	function Is_All_Control is new Is_All_Of(Character, String, Is_Control) with Pure_Function;

	function Is_Any_Control is new Is_Any_Of(Character, String, Is_Control) with Pure_Function;

	subtype Wide_Control_Character is Wide_Character with Dynamic_Predicate => (
		Wide_Character'Pos(Wide_Control_Character) in 16#00# .. 16#20# or
		Wide_Character'Pos(Wide_Control_Character) = 16#7F# or
		Wide_Character'Pos(Wide_Control_Character) in 16#80# .. 16#9F#);

	function Is_Control(Char : Wide_Character) return Boolean with Inline, Pure_Function;

	function Is_All_Control is new Is_All_Of(Wide_Character, Wide_String, Is_Control) with Pure_Function;

	function Is_Any_Control is new Is_Any_Of(Wide_Character, Wide_String, Is_Control) with Pure_Function;

	subtype Wide_Wide_Control_Character is Wide_Wide_Character with Dynamic_Predicate => (
		Wide_Wide_Character'Pos(Wide_Wide_Control_Character) in 16#00# .. 16#20# or
		Wide_Wide_Character'Pos(Wide_Wide_Control_Character) = 16#7F# or
		Wide_Wide_Character'Pos(Wide_Wide_Control_Character) in 16#80# .. 16#9F#);

	function Is_Control(Char : Wide_Wide_Character) return Boolean with Inline, Pure_Function;

	function Is_All_Control is new Is_All_Of(Wide_Wide_Character, Wide_Wide_String, Is_Control) with Pure_Function;

	function Is_Any_Control is new Is_Any_Of(Wide_Wide_Character, Wide_Wide_String, Is_Control) with Pure_Function;

	subtype C0_Character is Control_Character with Dynamic_Predicate => (
		Character'Pos(C0_Character) in 16#00# .. 16#20# or
		Character'Pos(C0_Character) =  16#7F#);

	subtype Wide_C0_Character is Wide_Control_Character with Dynamic_Predicate => (
		Wide_Character'Pos(Wide_C0_Character) in 16#00# .. 16#20# or
		Wide_Character'Pos(Wide_C0_Character) =  16#7F#);

	subtype Wide_Wide_C0_Character is Wide_Wide_Control_Character with Dynamic_Predicate => (
		Wide_Wide_Character'Pos(Wide_Wide_C0_Character) in 16#00# .. 16#20# or
		Wide_Wide_Character'Pos(Wide_Wide_C0_Character) =  16#7F#);

	subtype C1_Character is Control_Character with Dynamic_Predicate => (
		Character'Pos(C1_Character) in 16#80# .. 16#9F#);

	subtype Wide_C1_Character is Wide_Control_Character with Dynamic_Predicate => (
		Wide_Character'Pos(Wide_C1_Character) in 16#80# .. 16#9F#);

	subtype Wide_Wide_C1_Character is Wide_Wide_Control_Character with Dynamic_Predicate => (
		Wide_Wide_Character'Pos(Wide_Wide_C1_Character) in 16#80# .. 16#9F#);

	------------
	-- Global --
	------------

	subtype Letter is Character with Dynamic_Predicate => (
		Letter in Latin_Letter);

	subtype Wide_Letter is Wide_Character with Dynamic_Predicate => (
		Wide_Letter in Wide_Latin_Letter);

	subtype Wide_Wide_Letter is Wide_Wide_Character with Dynamic_Predicate => (
		Wide_Wide_Letter in Wide_Wide_Latin_Letter);

	subtype Uppercase is Character with Dynamic_Predicate => (
		Uppercase in Latin_Uppercase);

	subtype Wide_Uppercase is Wide_Character with Dynamic_Predicate => (
		Wide_Uppercase in Wide_Latin_Uppercase);

	subtype Wide_Wide_Uppercase is Wide_Wide_Character with Dynamic_Predicate => (
		Wide_Wide_Uppercase in Wide_Wide_Latin_Uppercase);

	subtype Lowercase is Character with Dynamic_Predicate => (
		Lowercase in Latin_Lowercase);

	subtype Wide_Lowercase is Wide_Character with Dynamic_Predicate => (
		Wide_Lowercase in Wide_Latin_Lowercase);

	subtype Wide_Wide_Lowercase is Wide_Wide_Character with Dynamic_Predicate => (
		Wide_Wide_Lowercase in Wide_Wide_Latin_Lowercase);

	subtype Number is Character with Dynamic_Predicate => (
		Number in Latin_Number);

	subtype Wide_Number is Wide_Character with Dynamic_Predicate => (
		Wide_Number in Wide_Latin_Number);

	subtype Wide_Wide_Number is Wide_Wide_Character with Dynamic_Predicate => (
		Wide_Wide_Number in Wide_Wide_Latin_Number);

	subtype Symbol is Character with Dynamic_Predicate => (
		Symbol in Latin_Symbol);

	subtype Wide_Symbol is Wide_Character with Dynamic_Predicate => (
		Wide_Symbol in Wide_Latin_Symbol);

	subtype Wide_Wide_Symbol is Wide_Wide_Character with Dynamic_Predicate => (
		Wide_Wide_Symbol in Wide_Wide_Latin_Symbol);

	-----------
	-- Latin --
	-----------

	subtype Latin_Letter is Character with Dynamic_Predicate => (
		Character'Pos(Latin_Letter) in 16#41# .. 16#5A# or
		Character'Pos(Latin_Letter) in 16#61# .. 16#7A# or
		Character'Pos(Latin_Letter) in 16#C0# .. 16#D6# or
		Character'Pos(Latin_Letter) in 16#D8# .. 16#F6# or
		Character'Pos(Latin_Letter) in 16#F8# .. 16#FF#);

	subtype Wide_Latin_Letter is Wide_Character with Dynamic_Predicate => (
		Wide_Character'Pos(Wide_Latin_Letter) in 16#0041# .. 16#005A# or
		Wide_Character'Pos(Wide_Latin_Letter) in 16#0061# .. 16#007A# or
		Wide_Character'Pos(Wide_Latin_Letter) in 16#00C0# .. 16#00D6# or
		Wide_Character'Pos(Wide_Latin_Letter) in 16#00D8# .. 16#00F6# or
		Wide_Character'Pos(Wide_Latin_Letter) in 16#00F8# .. 16#00FF# or
		Wide_Character'Pos(Wide_Latin_Letter) in 16#0100# .. 16#017F# or
		Wide_Character'Pos(Wide_Latin_Letter) in 16#0180# .. 16#024F# or
		Wide_Character'Pos(Wide_Latin_Letter) in 16#2C60# .. 16#2C7F# or
		Wide_Character'Pos(Wide_Latin_Letter) in 16#A720# .. 16#A7BF# or
		Wide_Character'Pos(Wide_Latin_Letter) in 16#A7C2# .. 16#A7C6# or
		Wide_Character'Pos(Wide_Latin_Letter) in 16#1E00# .. 16#1EFF# or
		Wide_Character'Pos(Wide_Latin_Letter) in 16#FF21# .. 16#FF3A# or
		Wide_Character'Pos(Wide_Latin_Letter) in 16#FF41# .. 16#FF5A#);

	subtype Wide_Wide_Latin_Letter is Wide_Wide_Character with Dynamic_Predicate => (
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Letter) in 16#0041# .. 16#005A# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Letter) in 16#0061# .. 16#007A# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Letter) in 16#00C0# .. 16#00D6# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Letter) in 16#00D8# .. 16#00F6# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Letter) in 16#00F8# .. 16#00FF# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Letter) in 16#0100# .. 16#017F# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Letter) in 16#0180# .. 16#024F# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Letter) in 16#2C60# .. 16#2C7F# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Letter) in 16#A720# .. 16#A7BF# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Letter) in 16#A7C2# .. 16#A7C6# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Letter) in 16#1E00# .. 16#1EFF# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Letter) in 16#FF21# .. 16#FF3A# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Letter) in 16#FF41# .. 16#FF5A#);

	subtype Latin_Uppercase is Latin_Letter with Dynamic_Predicate => (
		Character'Pos(Latin_Uppercase) in 16#41# .. 16#5A# or
		Character'Pos(Latin_Uppercase) in 16#C0# .. 16#D6# or
		Character'Pos(Latin_Uppercase) in 16#D8# .. 16#DF#);

	subtype Wide_Latin_Uppercase is Wide_Latin_Letter with Dynamic_Predicate => (
		Wide_Character'Pos(Wide_Latin_Uppercase)  in 16#0061# .. 16#007A# or
		Wide_Character'Pos(Wide_Latin_Uppercase)  in 16#00E0# .. 16#00F6# or
		Wide_Character'Pos(Wide_Latin_Uppercase)  in 16#00F8# .. 16#00FF# or
		(Wide_Character'Pos(Wide_Latin_Uppercase) in 16#0100# .. 16#017F# and then Wide_Character'Pos(Wide_Latin_Uppercase) in Odd) or
		(Wide_Character'Pos(Wide_Latin_Uppercase) in 16#0180# .. 16#024F# and then Wide_Character'Pos(Wide_Latin_Uppercase) in Odd) or
		(Wide_Character'Pos(Wide_Latin_Uppercase) in 16#2C60# .. 16#2C7F# and then Wide_Character'Pos(Wide_Latin_Uppercase) in Odd) or
		(Wide_Character'Pos(Wide_Latin_Uppercase) in 16#A720# .. 16#A7BF# and then Wide_Character'Pos(Wide_Latin_Uppercase) in Odd) or
		Wide_Character'Pos(Wide_Latin_Uppercase)  =  16#A7C2# or
		Wide_Character'Pos(Wide_Latin_Uppercase) in 16#A7C4# .. 16#A7C6# or
		(Wide_Character'Pos(Wide_Latin_Uppercase) in 16#1E00# .. 16#1EFF# and then Wide_Character'Pos(Wide_Latin_Uppercase) in Odd) or
		Wide_Character'Pos(Wide_Latin_Uppercase) in 16#FF21# .. 16#FF3A#);

	subtype Wide_Wide_Latin_Uppercase is Wide_Wide_Latin_Letter with Dynamic_Predicate => (
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Uppercase)  in 16#0061# .. 16#007A# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Uppercase)  in 16#00E0# .. 16#00F6# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Uppercase)  in 16#00F8# .. 16#00FF# or
		(Wide_Wide_Character'Pos(Wide_Wide_Latin_Uppercase) in 16#0100# .. 16#017F# and then Wide_Wide_Character'Pos(Wide_Wide_Latin_Uppercase) in Odd) or
		(Wide_Wide_Character'Pos(Wide_Wide_Latin_Uppercase) in 16#0180# .. 16#024F# and then Wide_Wide_Character'Pos(Wide_Wide_Latin_Uppercase) in Odd) or
		(Wide_Wide_Character'Pos(Wide_Wide_Latin_Uppercase) in 16#2C60# .. 16#2C7F# and then Wide_Wide_Character'Pos(Wide_Wide_Latin_Uppercase) in Odd) or
		(Wide_Wide_Character'Pos(Wide_Wide_Latin_Uppercase) in 16#A720# .. 16#A7BF# and then Wide_Wide_Character'Pos(Wide_Wide_Latin_Uppercase) in Odd) or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Uppercase)  =  16#A7C2# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Uppercase) in 16#A7C4# .. 16#A7C6# or
		(Wide_Wide_Character'Pos(Wide_Wide_Latin_Uppercase) in 16#1E00# .. 16#1EFF# and then Wide_Wide_Character'Pos(Wide_Wide_Latin_Uppercase) in Odd) or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Uppercase) in 16#FF21# .. 16#FF3A#);

	subtype Latin_Lowercase is Latin_Letter with Dynamic_Predicate => (
		Character'Pos(Latin_Lowercase) in 16#61# .. 16#7A# or
		Character'Pos(Latin_Lowercase) in 16#E0# .. 16#F6# or
		Character'Pos(Latin_Lowercase) in 16#F8# .. 16#FF#);

	subtype Wide_Latin_Lowercase is Wide_Latin_Letter with Dynamic_Predicate => (
		Wide_Character'Pos(Wide_Latin_Lowercase)  in 16#0061# .. 16#007A# or
		Wide_Character'Pos(Wide_Latin_Lowercase)  in 16#00E0# .. 16#00F6# or
		Wide_Character'Pos(Wide_Latin_Lowercase)  in 16#00F8# .. 16#00FF# or
		(Wide_Character'Pos(Wide_Latin_Lowercase) in 16#0100# .. 16#017F# and then Wide_Character'Pos(Wide_Latin_Lowercase) in Odd) or
		(Wide_Character'Pos(Wide_Latin_Lowercase) in 16#0180# .. 16#024F# and then Wide_Character'Pos(Wide_Latin_Lowercase) in Odd) or
		(Wide_Character'Pos(Wide_Latin_Lowercase) in 16#2C60# .. 16#2C7F# and then Wide_Character'Pos(Wide_Latin_Lowercase) in Odd) or
		(Wide_Character'Pos(Wide_Latin_Lowercase) in 16#A720# .. 16#A7BF# and then Wide_Character'Pos(Wide_Latin_Lowercase) in Odd) or
		Wide_Character'Pos(Wide_Latin_Lowercase)  =  16#A7C3# or
		(Wide_Character'Pos(Wide_Latin_Lowercase) in 16#1E00# .. 16#1EFF# and then Wide_Character'Pos(Wide_Latin_Lowercase) in Odd) or
		Wide_Character'Pos(Wide_Latin_Lowercase) in 16#FF41# .. 16#FF59#);

	subtype Wide_Wide_Latin_Lowercase is Wide_Wide_Latin_Letter with Dynamic_Predicate => (
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Lowercase)  in 16#0061# .. 16#007A# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Lowercase)  in 16#00E0# .. 16#00F6# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Lowercase)  in 16#00F8# .. 16#00FF# or
		(Wide_Wide_Character'Pos(Wide_Wide_Latin_Lowercase) in 16#0100# .. 16#017F# and then Wide_Wide_Character'Pos(Wide_Wide_Latin_Lowercase) in Odd) or
		(Wide_Wide_Character'Pos(Wide_Wide_Latin_Lowercase) in 16#0180# .. 16#024F# and then Wide_Wide_Character'Pos(Wide_Wide_Latin_Lowercase) in Odd) or
		(Wide_Wide_Character'Pos(Wide_Wide_Latin_Lowercase) in 16#2C60# .. 16#2C7F# and then Wide_Wide_Character'Pos(Wide_Wide_Latin_Lowercase) in Odd) or
		(Wide_Wide_Character'Pos(Wide_Wide_Latin_Lowercase) in 16#A720# .. 16#A7BF# and then Wide_Wide_Character'Pos(Wide_Wide_Latin_Lowercase) in Odd) or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Lowercase)  =  16#A7C3# or
		(Wide_Wide_Character'Pos(Wide_Wide_Latin_Lowercase) in 16#1E00# .. 16#1EFF# and then Wide_Wide_Character'Pos(Wide_Wide_Latin_Lowercase) in Odd) or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Lowercase) in 16#FF41# .. 16#FF59#);

	subtype Latin_Number is Character with Dynamic_Predicate => (
		Character'Pos(Latin_Number) in 16#30# .. 16#39#);

	subtype Wide_Latin_Number is Wide_Character with Dynamic_Predicate => (
		Wide_Character'Pos(Wide_Latin_Number) in 16#0030# .. 16#0039# or
		Wide_Character'Pos(Wide_Latin_Number) in 16#FF11# .. 16#FF19#);

	subtype Wide_Wide_Latin_Number is Wide_Wide_Character with Dynamic_Predicate => (
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Number) in 16#30# .. 16#39# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Number) in 16#FF11# .. 16#FF19#);

	subtype Latin_Symbol is Character with Dynamic_Predicate => (
		Character'Pos(Latin_Symbol) in 16#21# .. 16#2F# or
		Character'Pos(Latin_Symbol) in 16#3A# .. 16#40# or
		Character'Pos(Latin_Symbol) in 16#5B# .. 16#60# or
		Character'Pos(Latin_Symbol) in 16#7B# .. 16#7E# or
		Character'Pos(Latin_Symbol) in 16#A1# .. 16#B1# or
		Character'Pos(Latin_Symbol) in 16#B5# .. 16#B8# or
		Character'Pos(Latin_Symbol) in 16#BA# .. 16#BB# or
		Character'Pos(Latin_Symbol) =  16#BF# or
		Character'Pos(Latin_Symbol) =  16#D7# or
		Character'Pos(Latin_Symbol) =  16#F7#);

	subtype Wide_Latin_Symbol is Wide_Character with Dynamic_Predicate => (
		Wide_Character'Pos(Wide_Latin_Symbol) in 16#0021# .. 16#002F# or
		Wide_Character'Pos(Wide_Latin_Symbol) in 16#003A# .. 16#0040# or
		Wide_Character'Pos(Wide_Latin_Symbol) in 16#005B# .. 16#0060# or
		Wide_Character'Pos(Wide_Latin_Symbol) in 16#007B# .. 16#007E# or
		Wide_Character'Pos(Wide_Latin_Symbol) in 16#00A1# .. 16#00B1# or
		Wide_Character'Pos(Wide_Latin_Symbol) in 16#00B5# .. 16#00B8# or
		Wide_Character'Pos(Wide_Latin_Symbol) in 16#00BA# .. 16#00BB# or
		Wide_Character'Pos(Wide_Latin_Symbol) =  16#00BF# or
		Wide_Character'Pos(Wide_Latin_Symbol) =  16#00D7# or
		Wide_Character'Pos(Wide_Latin_Symbol) =  16#00F7# or
		Wide_Character'Pos(Wide_Latin_Symbol) in 16#FF01# .. 16#FF0F# or
		Wide_Character'Pos(Wide_Latin_Symbol) in 16#FF1A# .. 16#FF20# or
		Wide_Character'Pos(Wide_Latin_Symbol) in 16#FF3B# .. 16#FF40# or
		Wide_Character'Pos(Wide_Latin_Symbol) in 16#FF5B# .. 16#FF60#);

	subtype Wide_Wide_Latin_Symbol is Wide_Wide_Character with Dynamic_Predicate => (
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Symbol) in 16#0021# .. 16#002F# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Symbol) in 16#003A# .. 16#0040# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Symbol) in 16#005B# .. 16#0060# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Symbol) in 16#007B# .. 16#007E# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Symbol) in 16#00A1# .. 16#00B1# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Symbol) in 16#00B5# .. 16#00B8# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Symbol) in 16#00BA# .. 16#00BB# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Symbol) =  16#00BF# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Symbol) =  16#00D7# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Symbol) =  16#00F7# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Symbol) in 16#FF01# .. 16#FF0F# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Symbol) in 16#FF1A# .. 16#FF20# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Symbol) in 16#FF3B# .. 16#FF40# or
		Wide_Wide_Character'Pos(Wide_Wide_Latin_Symbol) in 16#FF5B# .. 16#FF60#);

	-----------------------------
	-- Superscript & Subscript --
	-----------------------------

	subtype Superscript is Character with Dynamic_Predicate => (
		Character'Pos(Superscript) in 16#B2# .. 16#B3# or
		Character'Pos(Superscript) =  16#B9#);

	subtype Wide_Superscript is Wide_Character with Dynamic_Predicate => (
		Wide_Character'Pos(Wide_Superscript) in 16#00B2# .. 16#00B3# or
		Wide_Character'Pos(Wide_Superscript) =  16#00B9# or
		Wide_Character'Pos(Wide_Superscript) in 16#2070# .. 16#207F#);

	subtype Wide_Wide_Superscript is Wide_Wide_Character with Dynamic_Predicate => (
		Wide_Wide_Character'Pos(Wide_Wide_Superscript) in 16#00B2# .. 16#00B3# or
		Wide_Wide_Character'Pos(Wide_Wide_Superscript) =  16#00B9# or
		Wide_Wide_Character'Pos(Wide_Wide_Superscript) in 16#2070# .. 16#207F#);

	subtype Subscript is Character with Dynamic_Predicate => (false);

	subtype Wide_Subscript is Wide_Character with Dynamic_Predicate => (
		Wide_Character'Pos(Wide_Subscript) in 16#2080# .. 16#2094#);

	subtype Wide_Wide_Subscript is Wide_Wide_Character with Dynamic_Predicate => (
		Wide_Wide_Character'Pos(Wide_Wide_Subscript) in 16#2080# .. 16#2094#);

	---------------------
	-- Vulgar Fraction --
	---------------------

	subtype Vulgar_Fraction is Character with Dynamic_Predicate => (
		Character'Pos(Vulgar_Fraction) in 16#BC# .. 16#BE#);

	subtype Wide_Vulgar_Fraction is Wide_Character with Dynamic_Predicate => (
		Wide_Character'Pos(Wide_Vulgar_Fraction) in 16#00BC# .. 16#00BE# or
		Wide_Character'Pos(Wide_Vulgar_Fraction) in 16#2150# .. 16#215F#);

	subtype Wide_Wide_Vulgar_Fraction is Wide_Wide_Character with Dynamic_Predicate => (
		Wide_Wide_Character'Pos(Wide_Wide_Vulgar_Fraction) in 16#00BC# .. 16#00BE# or
		Wide_Wide_Character'Pos(Wide_Wide_Vulgar_Fraction) in 16#2150# .. 16#215F#);

end Text.Handling;