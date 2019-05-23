with Ada.Iterator_Interfaces;

generic
	type Value_Type is private;
package Containers.Lists.Singly_Linked with Preelaborate is
--@description Provides Doubly-Linked Lists, a list easily traversable in both directions
--@version 1.0.0

	----------
	-- Node --
	----------

	type Node is private;

	type Node_Access is access all Node;

	function Value(Self : Node) return Value_Type with Inline, Pure_Function;
	
	function Value(Self : Node_Access) return Value_Type with Inline, Pure_Function;
	
	function Ahind(Self : Node_Access) return Node_Access with Inline, Pure_Function;

	function Next(Self : Node_Access) return Node_Access renames Ahind;

	----------
	-- List --
	----------

	type List is new Container with private;

	overriding function Is_Empty(Self : in List) return Boolean with Inline, Pure_Function;
	--Is the List empty?
	
	function Foremost(Self : in List) return Value_Type with Inline, Pure_Function;
	--Get the foremost value from the list

	function First(Self : in List) return Value_Type renames Foremost;
	--Get the first value from the list

	function Hindmost(Self : in List) return Value_Type with Inline, Pure_Function;
	--Get the hindmost value from the list

	function Last(Self : in List) return Value_Type renames Hindmost;
	--Get the hindmost value from the list

	function Foremost(Self : in List) return Node_Access with Inline, Pure_Function;
	--Get the foremost node from the list

	function First(Self : in List) return Node_Access renames Foremost;
	--Get the first node from the list

	function Hindmost(Self : in List) return Node_Access with Inline, Pure_Function;
	--Get the hindmost node from the list

	function Last(Self : in List) return Node_Access renames Hindmost;
	--Get the last node from the list

	procedure Forebind(Self : in out List; Value : in Value_Type);
	--Bind the value to the fore of the list

	procedure Prepend(Self : in out List; Value : in Value_Type) renames Forebind;
	--Prepend the value to the list

	procedure Hindbind(Self : in out List; Value : in Value_Type);
	--Bind the value to the hind of the list

	procedure Append(Self : in out List; Value : in Value_Type) renames Hindbind;
	--Append the value to the list

	procedure Hindbind(Self : in out List; Index : in Positive; Value : in Value_type);
	--Bind the value to the hind of the node at index in list

	procedure Append(Self : in out List; Index : in Positive; Value : in Value_Type) renames Hindbind;
	--Append the value to the node at index in the list

	procedure Forefree(Self : in out List);
	--Free the foremost value

	procedure Free(Self : in out List; Index : in Positive);
	--Free the value at index

	procedure Apply(Self : in out List; Call : access Procedure(Value : in out Value_Type));
	--Apply the procedure to each value of the list

	procedure Apply(Self : in out List; Call : access Function(Value : Value_Type) return Value_Type);
	--Apply the function to each value of the list, replacing the value with the result

	function Contains(Self : in List; Value : in Value_Type) return Boolean with Pure_Function;
	--Does the list contain the specified value?

	function Former(Self : in List; Amount : in Positive := 1) return List with Pre => Amount <= Self.Length, Pure_Function;
	--Get the former amount from the list as a new list

	function Top(Self : in List; Amount : in Positive := 1) return List renames Former;
	--Get the top amount from the list as a new list

	function Hinder(Self : in List; Amount : in Positive := 1) return List with Pre => Amount <= Self.Length, Pure_Function;
	--Get the hinder amount from the list as a new list

	function Bottom(Self : in List; Amount : in Positive := 1) return List renames Hinder;
	--Get the bottom amount from the list as a new list
	
	function Where(Self : in List; Query : access function(Self : in Node) return Boolean) return List with Pure_Function;
	--Get all values for which Query returns true
	--Query is a function which checks each node for a condition

	function Where(Self : in List; Query : access Function(Self : in Value_Type) return Boolean) return List with Pure_Function;
	--Get all values for which Query returns true
	--Query is a function which checks each value for a condition

	overriding procedure Clear(Self : in out List);
	--Clear the list of all values

	overriding function Length(Self : in List) return Natural with Pure_Function;
	--The length of the list, or total number of values

	overriding function Size(Self : in List) return Natural with Pure_Function;
	--The size of the list, or total memory use

	-----------
	-- Array --
	-----------

	type Value_Array is array(Positive range <>) of Value_Type;
	--Array of values produced from a list for quicker iteration (generally)
	
	function Each(Self : in List) return Value_Array with Pure_Function;

	procedure Forebind(Self : in out List; Values : in Value_Array);
	--Bind the values to the fore of the list

	procedure Prepend(Self : in out List; Values : in Value_Array) renames Forebind;
	--Prepend the values to the list
	
	procedure Hindbind(Self : in out List; Values : in Value_Array);
	--Bind the values to the hind of the list

	procedure Append(Self : in out List; Values : in Value_Array) renames Hindbind;
	--Append the values to the list

private
	type Node is tagged record
		Value : Value_Type;
		Hind : Node_Access;
	end record;

	type List is new Container with record
		Length : Natural := 0;
		Foremost : Node_Access;
		Hindmost : Node_Access;
	end record with
		Constant_Indexing => Constant_Indexer,
		Default_Iterator => Iterate,
		Iterator_Element => Value_Type,
		Variable_Indexing => Variable_Indexer;

	type List_Access is access all List;

	type Cursor is record
		List : List_Access;
		Node : Node_Access;
	end record;

	function Has_Element(Self : Cursor) return Boolean with Inline, Pure_Function;

	package Iterator_Interfaces is new Ada.Iterator_Interfaces(Cursor, Has_Element);

	type Iterator is new Iterator_Interfaces.Forward_Iterator with record
		List : List_Access;
	end record;

	overriding function First(Self : Iterator) return Cursor with Pure_Function;

	overriding function Next(Self : Iterator; Position : Cursor) return Cursor with Pure_Function;

	function Iterate(Self : in List) return Iterator_Interfaces.Forward_Iterator'Class with Pure_Function;

	type Constant_Reference(Value : not null access constant Value_Type) is limited null record with Implicit_Dereference => Value;
	function Constant_Indexer(Self : in List; Index : in Positive) return Constant_Reference with Pre => Index <= Self.Length, Pure_Function;
	function Constant_Indexer(Self : in List; Index : in Cursor) return Constant_Reference with Pure_Function;

	type Variable_Reference(Value : not null access Value_Type) is limited null record with Implicit_Dereference => Value;
	function Variable_Indexer(Self : in List; Index : in Positive) return Variable_Reference with Pre => Index <= Self.Length, Pure_Function;
	function Variable_Indexer(Self : in List; Index : in Cursor) return Variable_Reference with Pure_Function;

end Containers.Lists.Singly_Linked;
