generic
	type Value_Type is private;
package Containers.Priority_Queues with Preelaborate is
--@description Provides Priority Queues, a highest-priority-first container
--@version 1.0.0

	type Priority_Type is (Low, Medium, High);
	
	----------
	-- Node --
	----------

	type Node is private;

	type Node_Access is access all Node;

	-----------
	-- Queue --
	-----------

	type Queue is new Container with private;
	--Represents a Priority Queue

	overriding function Is_Empty(Self : in Queue) return Boolean with Inline, Pure_Function;
	--Is the queue empty?

	procedure Enqueue(Self : in out Queue; Value : in Value_Type; Priority : in Priority_Type := Medium);
	--Puts the value into the queue

	function Dequeue(Self : in out Queue) return Value_Type with Pure_Function;
	--Gets the value out of the queue

	overriding procedure Clear(Self : in out Queue);
	--Clear the queue of all values

	overriding function Length(Self : in Queue) return Natural with Pure_Function;
	--Length of the queue, the amount of values in it

	overriding function Size(Self : in Queue) return Natural with Pure_Function;
	--The total size of the queue's memory use

private
	type Node is record
		Value : Value_Type;
		Next : Node_Access;
	end record;

	type Queue is new Container with record
		Length : Natural := 0;
		High_Front : Node_Access;
		High_Back : Node_Access;
		Medium_Front : Node_Access;
		Medium_Back : Node_Access;
		Low_Front : Node_Access;
		Low_Back : Node_Access;
	end record;
	
end Containers.Priority_Queues;
