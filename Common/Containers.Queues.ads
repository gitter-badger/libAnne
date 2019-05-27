generic
	type Value_Type is private;
package Containers.Queues with Preelaborate is
--@description Provides a simple Queue, or FIFO container
--@version 1.0.0

	----------
	-- Node --
	----------

	type Node is private;

	type Node_Access is access all Node;

	-----------
	-- Queue --
	-----------

	type Queue is new Container with private;
	--Represents a Queue, a FIFO container

	overriding function Is_Empty(Self : in Queue) return Boolean with Inline, Pure_Function;
	--Is the queue empty?

	procedure Enqueue(Self : in out Queue; Value : in Value_Type);
	--Put the value into the queue

	function Dequeue(Self : in out Queue) return Value_Type with Pure_Function;
	--Get the value outof the queue

	function Peek(Self : in Queue) return Value_Type with Pure_Function;
	--Peek at the front of the queue

	function Peek(Self : in Queue; Index : in Positive) return Value_Type with Pure_Function;
	--Peek at the value at index of the queue
	
	overriding procedure Clear(Self : in out Queue);
	--Clear the queue of all values

	overriding function Length(Self : in Queue) return Natural with Pure_Function;
	--Length of the queue, the amount of values in it

	overriding function Size(Self : in Queue) return Natural with Pure_Function;
	--The total size of the queue's memory use

	-----------
	-- Array --
	-----------

	type Value_Array is array(Positive range <>) of Value_Type;

	procedure Enqueue(Self : in out Queue; Values : in Value_Array);
	--Put the values in to the queue

private
	type Node is record
		Value : Value_Type;
		Next : Node_Access;
	end record;

	type Queue is new Container with record
		Length : Natural := 0;
		Front : Node_Access;
		Back : Node_Access;
	end record;

end Containers.Queues;
