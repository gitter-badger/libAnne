with Ada.Strings.Wide_Wide_Unbounded;
use Ada.Strings.Wide_Wide_Unbounded;

package Testing.Counters is
--@description Provides code counters
--@version 1.0.0

	type Counter is tagged limited private; --Represents a code counter

	function Counting(Self : in Counter) return Boolean with Inline, Pure_Function;
	
	procedure Start(Self : in out Counter; Name : in Wide_Wide_String);

	procedure Increment(Self : in out Counter) with Inline;

	procedure Stop(Self : in out Counter);

private
	type Counter is tagged limited record
		Counting : Boolean := False;
		Count : Natural := 0;
		Name : Unbounded_Wide_Wide_String;
	end record;

end Testing.Counters;