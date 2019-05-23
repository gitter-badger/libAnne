package body Generics.Text is
	
	------------------------
	-- Fixed String / Any --
	------------------------
	
	function String_Any_Concatenate(Left : String; Right : Any_Type) return String is
	begin
		return Left & Image(Right);
	end String_Any_Concatenate;
	
	function Wide_String_Any_Concatenate(Left : Wide_String; Right : Any_type) return Wide_String is
	begin
		return Left & Wide_Image(Right);
	end Wide_String_Any_Concatenate;
	
	function Wide_Wide_String_Any_Concatenate(Left : Wide_Wide_String; Right : Any_Type) return Wide_Wide_String is
	begin
		return Left & Wide_Wide_Image(Right);
	end Wide_Wide_String_Any_Concatenate;
	
	------------------------
	-- Any / Fixed String --
	------------------------
	
	function Any_String_Concatenate(Left : Any_Type; Right : String) return String is
	begin
		return Image(Left) & Right;
	end Any_String_Concatenate;
	
	function Any_Wide_String_Concatenate(Left : Any_Type; Right : Wide_String) return Wide_String is
	begin
		return Wide_Image(Left) & Right;
	end Any_Wide_String_Concatenate;
	
	function Any_Wide_Wide_String_Concatenate(Left : Any_Type; Right : Wide_Wide_String) return Wide_Wide_String is
	begin
		return Wide_Wide_Image(Left) & Right;
	end Any_Wide_Wide_String_Concatenate;
	
end Generics.Text;
