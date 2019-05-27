with Ada.Wide_Wide_Text_IO;
use Ada.Wide_Wide_Text_IO;

package body Testing.Timers is

	-----------
	-- Timer --
	-----------

	function Running(Self : in Timer'Class) return Boolean is (Self.Running);

	----------------
	-- Real Timer --
	----------------

	function Run_Time(Self : in Real_Timer) return Duration is (To_Duration(Self.Stop_Time - Self.Start_Time));

	procedure Start(Self : in out Real_Timer; Name : in Wide_Wide_String) is
	begin
		Self.Name := To_Unbounded_Wide_Wide_String(Name);
		Self.Running := True;
		Self.Start_Time := Clock;
	end Start;

	procedure Stop(Self : in out Real_Timer) is
	begin
		Self.Stop_Time := Clock;
		Self.Running := False;
		Put_Line(" " & To_Wide_Wide_String(Self.Name) & ": " & Duration'Wide_Wide_Image(Self.Run_Time));
	end Stop;

	---------------------
	-- Execution Timer --
	---------------------

	function Run_Time(Self : in Execution_Timer) return Duration is (To_Duration(Self.Stop_Time - Self.Start_Time));

	procedure Start(Self : in out Execution_Timer; Name : in Wide_Wide_String) is
	begin
		Self.Name := To_Unbounded_Wide_Wide_String(Name);
		Self.Running := True;
		Self.Start_Time := Clock;
	end Start;

	procedure Stop(Self : in out Execution_Timer) is
	begin
		Self.Stop_Time := Clock;
		Self.Running := False;
		Put_Line(" " & To_Wide_Wide_String(Self.Name) & ": " & Duration'Wide_Wide_Image(Self.Run_Time));
	end Stop;

end Testing.Timers;