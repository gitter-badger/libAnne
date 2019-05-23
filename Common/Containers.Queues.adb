with Ada.Unchecked_Deallocation;

package body Containers.Queues is

	----------
	-- Node --
	----------

	procedure Deallocate is new Ada.Unchecked_Deallocation(Node, Node_Access);

	-----------
	-- Stack --
	-----------

	function Is_Empty(Self : in Queue) return Boolean is (Self.Front = null and Self.Back = null);

	procedure Enqueue(Self : in out Queue; Value : in Value_Type) is
	begin
		if Self.Back = null then
			Self.Back := new Node'(Value, null);
		else
			Self.Back.Next := new Node'(Value, null);
			Self.Back := Self.Back.Next;
		end if;
		if Self.Front = null then
			Self.Front := Self.Back;
		end if;
		Self.Length := Self.Length + 1;
	end Enqueue;

	function Dequeue(Self : in out Queue) return Value_Type is
		Old_Front : Node_Access := Self.Front;
		Result : Value_Type := Self.Front.Value;
	begin
		Self.Front := Self.Front.Next;
		Deallocate(Old_Front);
		Self.Length := Self.Length - 1;
		return Result;
	end Dequeue;

	function Peek(Self : in Queue) return Value_Type is (Self.Front.Value);

	function Peek(Self : in Queue; Index : in Positive) return Value_Type is
		N : Node_Access := Self.Front;
		I : Positive := 1;
	begin
		while I < Index loop
			N := N.Next;
			I := I + 1;
		end loop;
		return N.Value;
	end Peek;

	procedure Clear(Self : in out Queue) is
		Value : Value_Type; --This is just a throw away
	begin
		loop
			exit when Self.Is_Empty;
			Value := Self.Dequeue;
		end loop;
	end Clear;

	function Length(Self : in Queue) return Natural is
	begin
		return Self.Length;
	end Length;

	function Size(Self : in Queue) return Natural is
	begin
		return Self'Size + (Self.Length * Node'Size);
	end Size;

	-----------
	-- Array --
	-----------

	procedure Enqueue(Self : in out Queue; Values : in Value_Array) is
	begin
		for Value of Values loop
			Self.Enqueue(Value);
		end loop;
	end Enqueue;

end Containers.Queues;
