with Ada.Unchecked_Deallocation;

package body Containers.Priority_Queues is

	----------
	-- Node --
	----------

	procedure Deallocate is new Ada.Unchecked_Deallocation(Node, Node_Access);

	-----------
	-- Stack --
	-----------

	function Is_Empty(Self : in Queue) return Boolean is (Self.High_Front = null and Self.High_Back = null and Self.Medium_Front = null and Self.Medium_Back = null and Self.Low_Front = null and Self.Low_Back = null);

	procedure Enqueue(Self : in out Queue; Value : in Value_Type; Priority : in Priority_Type := Medium) is
	begin
		case Priority is
			when High =>
				if Self.High_Back = null then
					Self.High_Back := new Node'(Value, null);
				else
					Self.High_Back.Next := new Node'(Value, null);
					Self.High_Back := Self.High_Back.Next;
				end if;
				if Self.High_Front = null then
					Self.High_Front := Self.High_Back;
				end if;
			when Medium =>
				if Self.Medium_Back = null then
					Self.Medium_Back := new Node'(Value, null);
				else
					Self.Medium_Back.Next := new Node'(Value, null);
					Self.Medium_Back := Self.Medium_Back.Next;
				end if;
				if Self.Medium_Front = null then
					Self.Medium_Front := Self.Medium_Back;
				end if;
			when Low =>
				if Self.Low_Back = null then
					Self.Low_Back := new Node'(Value, null);
				else
					Self.Low_Back.Next := new Node'(Value, null);
					Self.Low_Back := Self.Low_Back.Next;
				end if;
				if Self.Low_Front = null then
					Self.Low_Front := Self.Low_Back;
				end if;
		end case;
		Self.Length := Self.Length + 1;
	end Enqueue;

	function Dequeue(Self : in out Queue) return Value_Type is
		Old_Front : Node_Access;
		Result : Value_Type;
	begin
		if Self.High_Front /= null then
			Old_Front := Self.High_Front;
			Self.High_Front := Old_Front.Next;
		elsif Self.Medium_Front /= null then
			Old_Front := Self.Medium_Front;
			Self.Medium_Front := Old_Front.Next;
		elsif Self.Low_Front /= null then
			Old_Front := Self.Low_Front;
			Self.Low_Front := Old_Front.Next;
		end if;
		Result := Old_Front.Value;
		Deallocate(Old_Front);
		Self.Length := Self.Length - 1;
		return Result;
	end Dequeue;

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
	
end Containers.Priority_Queues;
