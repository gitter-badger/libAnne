package Generics.Text is

	-----------------------------
	-- Fixed String / Any Type --
	-----------------------------
	
	generic
		type Any_Type (<>) is limited private;
		with function Image(Value : Any_Type) return String is <>;
	function String_Any_Concatenate(Left : String; Right : Any_Type) return String;
	
	generic
		type Any_Type (<>) is limited private;
		with function Wide_Image(Value : Any_Type) return Wide_String is <>;
	function Wide_String_Any_Concatenate(Left : Wide_String; Right : Any_Type) return Wide_String;
	
	generic
		type Any_Type (<>) is limited private;
		with function Wide_Wide_Image(Value : Any_Type) return Wide_Wide_String is <>;
	function Wide_Wide_String_Any_Concatenate(Left : Wide_Wide_String; Right : Any_Type) return Wide_Wide_String;

	-----------------------------
	-- Any Type / Fixed String --
	-----------------------------
	
	generic
		type Any_Type (<>) is limited private;
		with function Image(Value : Any_Type) return String is <>;
	function Any_String_Concatenate(Left : Any_Type; Right : String) return String;
	
	generic
		type Any_Type (<>) is limited private;
		with function Wide_Image(Value : Any_Type) return Wide_String is <>;
	function Any_Wide_String_Concatenate(Left : Any_Type; Right : Wide_String) return Wide_String;
	
	generic
		type Any_Type (<>) is limited private;
		with function Wide_Wide_Image(Value : Any_Type) return Wide_Wide_String is <>;
	function Any_Wide_Wide_String_Concatenate(Left : Any_Type; Right : Wide_Wide_String) return Wide_Wide_String;
		
end Generics.Text;
