with Ada.Unchecked_Deallocation;

package body Containers.Stacks is

	----------
	-- Node --
	----------

	procedure Deallocate is new Ada.Unchecked_Deallocation(Node, Node_Access);

	-----------
	-- Stack --
	-----------

	function Is_Empty(Self : in Stack) return Boolean is (Self.Top = null);

	procedure Push(Self : in out Stack; Value : in Value_Type) is
	begin
		Self.Top := new Node'(Value, Self.Top);
		Self.Length := Self.Length + 1;
	end Push;

	function Pop(Self : in out Stack) return Value_Type is
		Old_Top : Node_Access := Self.Top;
		Result : Value_Type := Self.Top.Value;
	begin
		Self.Top := Self.Top.Next;
		Deallocate(Old_Top);
		Self.Length := Self.Length - 1;
		return Result;
	end Pop;

	function Peek(Self : in Stack) return Value_Type is
	begin
		return Self.Top.Value;
	end Peek;

	function Peek(Self : in Stack; Index : in Positive) return Value_Type is
		N : Node_Access := Self.Top;
		I : Positive := 1;
	begin
		while I < Index loop
			N := N.Next;
			I := I + 1;
		end loop;
		return N.Value;
	end Peek;

	procedure Clear(Self : in out Stack) is
		Value : Value_Type; --This just acts as a throw away
	begin
		loop
			exit when Self.Is_Empty;
			Value := Self.Pop;
		end loop;
	end Clear;

	function Length(Self : in Stack) return Natural is
	begin
		return Self.Length;
	end Length;

	function Size(Self : in Stack) return Natural is
	begin
		return Self'Size + (Self.Length * Node'Size);
	end Size;

	-----------
	-- Array --
	-----------

	procedure Push(Self : in out Stack; Values : in Value_Array) is
	begin
		for Value of Values loop
			Self.Push(Value);
		end loop;
	end Push;

end Containers.Stacks;
