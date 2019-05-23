with Text.Sources;
use Text.Sources;

package Text.Patterns is

	type Capture(Length : Natural) is limited record
		Text : Wide_Wide_String(1 .. Length);
		Success : Boolean;
	end record;

	type Check_Function is access function(Char : Wide_Wide_Character) return Boolean;

	-------------
	-- Pattern --
	-------------

	type Pattern is tagged private;
	--@description Describes a pattern of text

	function "abs"(Value : Wide_Wide_String) return Pattern with Pre => Value'Length > 0;
	--@description Create a literal pattern from this string

	function "not"(Value : Wide_Wide_String) return Pattern with Pre => Value'Length > 0;
	--@description Create a negator pattern from this string

	function "not"(Value : Pattern) return Pattern;
	--@description Create a negator pattern from this pattern

	function "+"(Value : Wide_Wide_String) return Pattern with Pre => Value'Length > 0;
	--@description Create a spanner pattern from this string

	function "+"(Check : Check_Function) return Pattern;
	--@description Create a spanner pattern from this check

	function "+"(Value : Pattern) return Pattern;
	--@description Create a spanner pattern from this pattern

	function "-"(Value : Wide_Wide_String) return Pattern with Pre => Value'Length > 0;
	--@description Create an optor pattern from this string

	function "-"(Value : Pattern) return Pattern;
	--@description Create an optor pattern from this pattern

	function "and"(Left : Pattern; Right : Pattern) return Pattern;

	function "and"(Left : Pattern; Right : Wide_Wide_String) return Pattern;

	function "and"(Left : Wide_Wide_String; Right : Pattern) return Pattern;

	function "xor"(Left : Pattern; Right : Pattern) return Pattern;

	function "xor"(Left : Pattern; Right : Wide_Wide_String) return Pattern;

	function "xor"(Left : Wide_Wide_String; Right : Pattern) return Pattern;

	function "xor"(Left : Wide_Wide_String; Right : Wide_Wide_String) return Pattern;

	function Consume(Self : Pattern; From : Wide_Wide_String) return Capture;
	--@description Attempt to consume-parse the specified String
	--@return The consumed match if found, otherwise an empty string

private

	----------
	-- Node --
	----------

	type Node is abstract tagged limited null record;

	function Consume(Self : access Node; From : in out Source) return Capture is abstract;

	-------------
	-- Literal --
	-------------

	type Literal(Length : Positive) is new Node with record
		Pattern : Wide_Wide_String(1 .. Length);
	end record;

	overriding function Consume(Self : access Literal; From : in out Source) return Capture;

	-------------
	-- Checker --
	-------------

	type Checker is new Node with record
		Check : Check_Function;
	end record;

	overriding function Consume(Self : access Checker; From : in out Source) return Capture;

	------------------
	-- Concatenator --
	------------------

	type Concatenator is new Node with record
		Left : access Node'Class;
		Right : access Node'Class;
	end record;

	overriding function Consume(Self : access Concatenator; From : in out Source) return Capture;

	--------------
	-- Excluder --
	--------------

	type Excluder is new Node with record
		Left : access Node'Class;
		Right : access Node'Class;
	end record;

	overriding function Consume(Self : access Excluder; From : in out Source) return Capture;

	-------------
	-- Negator --
	-------------

	type Negator is new Node with record
		Pattern : access Node'Class;
	end record;

	overriding function Consume(Self : access Negator; From : in out Source) return Capture;

	-----------
	-- Optor --
	-----------

	type Optor is new Node with record
		Pattern : access Node'Class;
	end record;

	overriding function Consume(Self : access Optor; From : in out Source) return Capture;

	-------------
	-- Spanner --
	-------------

	type Spanner is new Node with record
		Pattern : access Node'Class;
	end record;

	overriding function Consume(Self : access Spanner; From : in out Source) return Capture;

	-------------
	-- Pattern --
	-------------

	type Pattern is tagged record
		Head : access Node'Class;
	end record;


end Text.Patterns;