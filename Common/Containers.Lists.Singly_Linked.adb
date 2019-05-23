with Ada.Unchecked_Deallocation;

package body Containers.Lists.Singly_Linked is

	----------
	-- Node --
	----------

	procedure Deallocate is new Ada.Unchecked_Deallocation(Node, Node_Access);

	function Value(Self : Node) return Value_Type is (Self.Value);

	function Value(Self : Node_Access) return Value_Type is (Self.all.Value);

	function Ahind(Self : Node_Access) return Node_Access is (Self.Hind);

	----------
	-- List --
	----------

	function Is_Empty(Self : in List) return Boolean is (Self.Foremost = null and Self.Hindmost = null);

	function Foremost(Self : in List) return Value_Type is (Self.Foremost.Value);

	function Hindmost(Self : in List) return Value_Type is (Self.Hindmost.Value);

	function Foremost(Self : in List) return Node_Access is (Self.Foremost);

	function Hindmost(Self : in List) return Node_Access is (Self.Hindmost);

	procedure Forebind(Self : in out List; Value : in Value_Type) is
	begin
		Self.Foremost := new Node'(Value, Self.Foremost);
		if Self.Hindmost = null then
			Self.Hindmost := Self.Foremost;
		end if;
		Self.Length := Self.Length + 1;
	end Forebind;

	procedure Hindbind(Self : in out List; Value : in Value_Type) is
		Old_Hindmost : Node_Access := Self.Hindmost;
	begin
		Self.Hindmost := new Node'(Value, null);
		if Old_Hindmost /= null then
			Old_Hindmost.Hind := Self.Hindmost;
		end if;
		if Self.Foremost = null then
			Self.Foremost := Self.Hindmost;
		end if;
		Self.Length := Self.Length + 1;
	end Hindbind;

	procedure Forebind(Self : in out List; Index : in Positive; Value : in Value_Type) is
		N : Node_Access := Self.Foremost;
		I : Positive := 1;
	begin
		while I < Index-1 loop
			N := N.Hind;
			I := I + 1;
		end loop;
		N.Hind := new Node'(Value, N.Hind);
		Self.Length := Self.Length + 1;
	end Forebind;

	procedure Hindbind(Self : in out List; Index : in Positive; Value : in Value_Type) is
		N : Node_Access := Self.Foremost;
		I : Positive := 1;
	begin
		while I < Index loop
			N := N.Hind;
			I := I + 1;
		end loop;
		N.Hind := new Node'(Value, N.Hind);
		Self.Length := Self.Length + 1;
	end Hindbind;

	procedure Forefree(Self : in out List) is
		N : Node_Access := Self.Foremost;
	begin
		Self.Foremost := Self.Foremost.Hind;
		Self.Length := Self.Length - 1;
		Deallocate(N);
	end Forefree;

	procedure Free(Self : in out List; Index : in Positive) is
		N : Node_Access := Self.Foremost;
		I : Positive := 1;
	begin
		if Index = 1 then
			Self.Forefree;
			return;
		end if;
		while I < Index-1 loop
			N := N.Hind;
			I := I + 1;
		end loop;
		N.Hind := N.Hind.Hind;
		Self.Length := Self.Length - 1;
		Deallocate(N);
	end Free;

	procedure Apply(Self : in out List; Call : access Procedure(Value : in out Value_Type)) is
		N : Node_Access := Self.Foremost;
	begin
		while N /= null loop
			Call(N.Value);
			N := N.Hind;
		end loop;
	end Apply;

	procedure Apply(Self : in out List; Call : access Function(Value : Value_Type) return Value_Type) is
		N : Node_Access := Self.Foremost;
	begin
		while N /= null loop
			N.Value := Call(N.Value);
			N := N.Hind;
		end loop;
	end Apply;

	function Contains(Self : in List; Value : in Value_Type) return Boolean is
		N : Node_Access := Self.Foremost;
	begin
		while N /= null loop
			if N.Value = Value then
				return True;
			end if;
			N := N.Hind;
		end loop;
		return False;
	end Contains;

	function Former(Self : in List; Amount : in Positive := 1) return List is
		Result : List;
	begin
		for I in 1..Amount loop
			Result.Hindbind(Self(I));
		end loop;
		return Result;
	end Former;

	function Hinder(Self : in List; Amount : in Positive := 1) return List is
		Result : List;
	begin
		for I in Self.Length-Amount+1 .. Self.Length loop
			Result.Hindbind(Self(I));
		end loop;
		return Result;
	end Hinder;

	function Where(Self : in List; Query : access Function(Self : in Node) return Boolean) return List is
		Result : List;
		N : Node_Access := Self.Foremost;
	begin
		while N /= null loop
			if Query(N.all) then
				Result.Hindbind(N.Value);
			end if;
			N := N.Hind;
		end loop;
		return Result;
	end Where;

	function Where(Self : in List; Query : access Function(Self : in Value_Type) return Boolean) return List is
		Result : List;
		N : Node_Access := Self.Foremost;
	begin
		while N /= null loop
			if Query(N.Value) then
				Result.Hindbind(N.Value);
			end if;
			N := N.Hind;
		end loop;
		return Result;
	end Where;

	procedure Clear(Self : in out List) is
		N : Node_Access;
	begin
		loop
			exit when Self.Foremost = null;
			N := Self.Foremost;
			Self.Foremost := Self.Foremost.Hind;
			Deallocate(N);
		end loop;
		Self.Length := 0;
	end Clear;

	function Length(Self : in List) return Natural is (Self.Length);

	function Size(Self : in List) return Natural is (Self'Size + (Self.Length * Node'Size));

	-----------
	-- Array --
	-----------

	function Each(Self : in List) return Value_Array is
		Result : Value_Array(1..Self.Length);
		N : Node_Access := Self.Foremost;
		I : Integer := 1;
	begin
		while N /= null loop
			Result(I) := N.Value;
			N := N.Hind;
			I := I + 1;
		end loop;
		return Result;
	end Each;

	procedure Forebind(Self : in out List; Values : in Value_Array) is
	begin
		for V of reverse Values loop
			Self.Forebind(V);
		end loop;
	end Forebind;

	procedure Hindbind(Self : in out List; Values : in Value_Array) is
	begin
		for V of Values loop
			Self.Hindbind(V);
		end loop;
	end Hindbind;
	
	------------
	-- Cursor --
	------------

	function Has_Element(Self : Cursor) return Boolean is (Self.Node /= null);

	--------------
	-- Iterator --
	--------------

	function First(Self : Iterator) return Cursor is
	begin
		return Cursor'(List => Self.List, Node => Self.List.Foremost);
	end First;

	function Next(Self : Iterator; Position : Cursor) return Cursor is
	begin
		return Cursor'(List => Self.List, Node => Position.Node.Hind);
	end Next;

	-------------
	-- Private --
	-------------

	function Constant_Indexer (Self : in List; Index : in Positive) return Constant_Reference is
		I : Integer := 1;
		N : Node_Access := Self.Foremost;
	begin
		while I /= Index loop
			N := N.Hind;
			I := I + 1;
		end loop;
		return Constant_Reference'(Value => new Value_Type'(N.Value));
	end Constant_Indexer;

	function Constant_Indexer(Self : in List; Index : in Cursor) return Constant_Reference is
		pragma Unreferenced(Self);
	begin
		return Constant_Reference'(Value => new Value_Type'(Index.Node.Value));
	end Constant_Indexer;

	function Variable_Indexer (Self : in List; Index : in Positive) return Variable_Reference is
		I : Integer := 1;
		N : Node_Access := Self.Foremost;
	begin
		while I /= Index loop
			N := N.Hind;
			I := I + 1;
		end loop;
		return Variable_Reference'(Value => new Value_Type'(N.Value));
	end Variable_Indexer;

	function Variable_Indexer(Self : in List; Index : in Cursor) return Variable_Reference is
	begin
		return Variable_Reference'(Value => new Value_Type'(Index.Node.Value));
	end Variable_Indexer;

	function Iterate(Self : in List) return Iterator_Interfaces.Forward_Iterator'Class is
	begin
		return Iterator'(List => Self'Unrestricted_Access);
	end Iterate;

end Containers.Lists.Singly_Linked;
