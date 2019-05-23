package Generics.Text.Handling is

	generic
		type Character_Type is (<>);
		type String_Type is array(Positive range <>) of Character_Type;
		with function Is_Of(Char : Character_Type) return Boolean is <>;
	function Is_All_Of(Str : String_Type) return Boolean;

	generic
		type Character_Type is (<>);
		type String_Type is array(Positive range <>) of Character_Type;
		with function Is_Of(Char : Character_Type) return Boolean is <>;
	function Is_Any_Of(Str : String_Type) return Boolean;

end Generics.Text.Handling;