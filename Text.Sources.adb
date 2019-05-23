package body Text.Sources is

	function Length(Self : Source) return Positive is (Self.Length - Self.Position);

	function Peek(Self : Source) return Wide_Wide_Character is (Self.Buffer(Self.Position));

	function Peek(Self : Source; Count : Positive) return Wide_Wide_String is (Self.Buffer(Self.Position .. Self.Position + Count - 1));

	function Read(Self : in out Source) return Wide_Wide_Character is
		Result : Wide_Wide_Character := Peek(Self);
	begin
		Self.Position := Self.Position + 1;
		return Result;
	end Read;

	function Read(Self : in out Source; Count : Positive) return Wide_Wide_String is
		Result : Wide_Wide_String := Peek(Self, Count);
	begin
		Self.Position := Self.Position + Count;
		return Result;
	end Read;

	function To_Source(Value : Wide_Wide_String) return Source is (Source'(Length => Value'Length, Buffer => Value, Position => 1));

end Text.Sources;