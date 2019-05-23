package Text.Sources is

	type Source(Length : Positive) is private;

	function Length(Self : Source) return Positive;

	function Peek(Self : Source) return Wide_Wide_Character;

	function Peek(Self : Source; Count : Positive) return Wide_Wide_String;

	function Read(Self : in out Source) return Wide_Wide_Character;

	function Read(Self : in out Source; Count : Positive) return Wide_Wide_String;

	function To_Source(Value : Wide_Wide_String) return Source;

private
	type Source(Length : Positive) is record
		Buffer : Wide_Wide_String(1 .. Length);
		Position : Positive;
	end record;

end Text.Sources;