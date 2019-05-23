with Ada.Strings.Wide_Wide_Unbounded;
use Ada.Strings.Wide_Wide_Unbounded;

package body Text.Patterns is

	-------------
	-- Literal --
	-------------

	function Consume(Self : access Literal; From : in out Source) return Capture is
	begin
		if Self.Pattern'Length > From.Length then
			goto Fail;
		end if;
		if Self.Pattern = Peek(From, Self.Pattern'Length) then
			declare
				Buffer : Wide_Wide_String := Read(From, Self.Pattern'Length);
			begin
				return Capture'(Length => Buffer'Length, Text => Buffer, Success => True);
			end;
		else
			goto Fail;
		end if;
		<<Fail>>
		return Capture'(Length => 0, Text => "", Success => False);
	end Consume;

	-------------
	-- Checker --
	-------------

	function Consume(Self : access Checker; From : in out Source) return Capture is
	begin
		if Self.Check.all(Peek(From)) then
			return Capture'(Length => 1, Text => Read(From, 1), Success => True);
		else
			return Capture'(Length => 0, Text => "", Success => False);
		end if;
	end Consume;

	------------------
	-- Concatenator --
	------------------

	function Consume(Self : access Concatenator; From : in out Source) return Capture is
		Left : Capture := Self.Left.Consume(From);
	begin
		if Left.Success then
			declare
				Right : Capture := Self.Right.Consume(From);
			begin
				if Right.Success then
					return Capture'(Length => Left.Text'Length + Right.Text'Length, Text => Left.Text & Right.Text, Success => True);
				end if;
			end;
		end if;
		<<Fail>>
		return Capture'(Length => 0, Text => "", Success => False);
	end Consume;

	--------------
	-- Excluder --
	--------------

	function Consume(Self : access Excluder; From : in out Source) return Capture is
		Copy : Source := From;
		Left : Capture := Self.Left.Consume(From);
		Right : Capture := Self.Right.Consume(Copy);
	begin
		if (Left.Success and Right.Success) or (not Left.Success and not Right.Success) then
			goto Fail;
		elsif Left.Success then
			return Capture'(Length => Left.Text'Length, Text => Left.Text, Success => True);
		elsif Right.Success then
			From := Copy;
			return Capture'(Length => Right.Text'Length, Text => Right.Text, Success => True);
		else
			goto Fail;
		end if;
		<<Fail>>
		return Capture'(Length => 0, Text => "", Success => False);
	end Consume;

	-------------
	-- Negator --
	-------------

	function Consume(Self : access Negator; From : in out Source) return Capture is
		Result : Capture := Self.Pattern.Consume(From);
	begin
		if not Result.Success then
			return Capture'(Length => 0, Text => "", Success => True);
		else
			return Capture'(Length => 0, Text => "", Success => False);
		end if;
	end Consume;

	-----------
	-- Optor --
	-----------

	overriding function Consume(Self : access Optor; From : in out Source) return Capture is
		Result : Capture := Self.Pattern.Consume(From);
	begin
		return Capture'(Length => Result.Text'Length, Text => Result.Text, Success => True);
	end Consume;

	-------------
	-- Spanner --
	-------------

	function Consume(Self : access Spanner; From : in out Source) return Capture is
		Result : Unbounded_Wide_Wide_String;
	begin
		loop
			declare
				Cap : Capture := Self.Pattern.Consume(From);
			begin
				if Cap.Success then
					Append(Result, Cap.Text);
				else
					exit;
				end if;
			end;
		end loop;
		return Capture'(Length => Length(Result), Text => To_Wide_Wide_String(Result), Success => (if Length(Result) > 0 then True else False));
	end Consume;

	-------------
	-- Pattern --
	-------------

	function "abs"(Value : Wide_Wide_String) return Pattern is
	begin
		return Pattern'(Head => new Literal'(Length => Value'Length, Pattern => Value));
	end "abs";

	function "abs"(Check : Check_Function) return Pattern is
	begin
		return Pattern'(Head => new Checker'(Check => Check));
	end "abs";

	function "not"(Value : Wide_Wide_String) return Pattern is
	begin
		return Pattern'(Head => new Negator'(Pattern => new Literal'(Length => Value'Length, Pattern => Value)));
	end "not";

	function "not"(Value : Pattern) return Pattern is
	begin
		return Pattern'(Head => new Negator'(Pattern => Value.Head));
	end "not";

	function "+"(Value : Wide_Wide_String) return Pattern is
	begin
		return Pattern'(Head => new Spanner'(Pattern => new Literal'(Length => Value'Length, Pattern => Value)));
	end "+";

	function "+"(Check : Check_Function) return Pattern is
	begin
		return Pattern'(Head => new Spanner'(Pattern => new Checker'(Check => Check)));
	end "+";

	function "+"(Value : Pattern) return Pattern is
	begin
		return Pattern'(Head => new Spanner'(Pattern => Value.Head));
	end "+";

	function "-"(Value : Wide_Wide_String) return Pattern is
	begin
		return Pattern'(Head => new Optor'(Pattern => new Literal'(Length => Value'Length, Pattern => Value)));
	end "-";

	function "-"(Value : Pattern) return Pattern is
	begin
		return Pattern'(Head => new Optor'(Pattern => Value.Head));
	end "-";

	function "and"(Left : Pattern; Right : Pattern) return Pattern is
	begin
		return Pattern'(Head => new Concatenator'(
			Left => Left.Head,
			Right => Right.Head));
	end "and";

	function "and"(Left : Pattern; Right : Wide_Wide_String) return Pattern is
	begin
		return Pattern'(Head => new Concatenator'(
			Left => Left.Head,
			Right => new Literal'(Length => Right'Length, Pattern => Right)));
	end "and";

	function "and"(Left : Wide_Wide_String; Right : Pattern) return Pattern is
	begin
		return Pattern'(Head => new Concatenator'(
			Left => new Literal'(Length => Left'Length, Pattern => Left),
			Right => Right.Head));
	end "and";

	function "xor"(Left : Pattern; Right : Pattern) return Pattern is
	begin
		return Pattern'(Head => new Excluder'(
			Left => Left.Head,
			Right => Right.Head));
	end "xor";

	function "xor"(Left : Pattern; Right : Wide_Wide_String) return Pattern is
	begin
		return Pattern'(Head => new Excluder'(
			Left => Left.Head,
			Right => new Literal'(Length => Right'Length, Pattern => Right)));
	end "xor";

	function "xor"(Left : Wide_Wide_String; Right : Pattern) return Pattern is
	begin
		return Pattern'(Head => new Excluder'(
			Left => new Literal'(Length => Left'Length, Pattern => Left),
			Right => Right.Head));
	end "xor";

	function "xor"(Left : Wide_Wide_String; Right : Wide_Wide_String) return Pattern is
	begin
		return Pattern'(Head => new Excluder'(
			Left => new Literal'(Length => Left'Length, Pattern => Left),
			Right => new Literal'(Length => Right'Length, Pattern => Right)));
	end "xor";

	function Consume(Self : Pattern; From : Wide_Wide_String) return Capture is
		S : Source := To_Source(From);
	begin
		return Self.Head.Consume(S);
	end Consume;

end Text.Patterns;