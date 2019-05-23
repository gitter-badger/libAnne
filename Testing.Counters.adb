with Ada.Wide_Wide_Text_IO;
use Ada.Wide_Wide_Text_IO;

package body Testing.Counters is

	function Counting(Self : in Counter) return Boolean is (Self.Counting);
	
	procedure Start(Self : in out Counter; Name : in Wide_Wide_String) is
	begin
		Self.Counting := True;
		Self.Name := To_Unbounded_Wide_Wide_String(Name);
	end Start;

	procedure Increment(Self : in out Counter) is
	begin
		Self.Count := Self.Count + 1;
	end Increment;

	procedure Stop(Self : in out Counter) is
	begin
		Self.Counting := False;
		Put_Line(To_Wide_Wide_String(Self.Name) & ": " & Integer'Wide_Wide_Image(Self.Count));
	end Stop;

end Testing.Counters;