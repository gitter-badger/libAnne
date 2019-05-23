generic
	type Value_Type is private;
package Containers.Stacks with Preelaborate is
--@description Provides a simple Stack, or FILO container
--@version 1.0.0

	----------
	-- Node --
	----------

	type Node is private;

	type Node_Access is access all Node;

	-----------
	-- Stack --
	-----------

	type Stack is new Container with private;
	--Represents a Stack, a FILO container

	overriding function Is_Empty(Self : in Stack) return Boolean with Inline;
	--Is the Stack currently empty?

	procedure Push(Self : in out Stack; Value : in Value_Type);
	--Push the value onto the stack

	function Pop(Self : in out Stack) return Value_Type;
	--Pop the value off the stack

	function Peek(Self : in Stack) return Value_Type;
	--Peek at the value on the stack

	function Peek(Self : in Stack; Index : in Positive) return Value_Type with Pre => Index <= Self.Length;
	--Peek at the value at the specified location on the stack

	overriding procedure Clear(Self : in out Stack);
	--Clear the stack of all values

	overriding function Length(Self : in Stack) return Natural;
	--Length of the stack, the amount of values in it

	overriding function Size(Self : in Stack) return Natural;
	--The total size of the stack's memory use

	-----------
	-- Array --
	-----------

	type Value_Array is array(Positive range <>) of Value_Type;

	procedure Push(Self : in out Stack; Values : in Value_Array);
	--Push the values onto the stack

private
	type Node is record
		Value : Value_Type;
		Next : Node_Access;
	end record;

	type Stack is new Container with record
		Length : Natural := 0;
		Top : Node_Access;
	end record;

end Containers.Stacks;
