with Ada.Execution_Time, Ada.Real_Time, Ada.Strings.Wide_Wide_Unbounded;
use Ada.Execution_Time, Ada.Real_Time, Ada.Strings.Wide_Wide_Unbounded;

package Testing.Timers is

	-----------
	-- Timer --
	-----------

	type Timer is abstract tagged limited private; --Represents an abstract timer

	function Running(Self : in Timer'Class) return Boolean with Inline, Pure_Function;

	function Run_Time(Self : in Timer) return Duration is abstract;

	procedure Start(Self : in out Timer; Name : in Wide_Wide_String) is abstract;

	procedure Stop(Self : in out Timer) is abstract;

	----------------
	-- Real Timer --
	----------------

	type Real_Timer is new Timer with private; --Represents a timer for Real_Time

	overriding function Run_Time(Self : in Real_Timer) return Duration with Inline, Pure_Function;

	overriding procedure Start(Self : in out Real_Timer; Name : in Wide_Wide_String);

	overriding procedure Stop(Self : in out Real_Timer);

	---------------------
	-- Execution Timer --
	---------------------

	type Execution_Timer is new Timer with private; --Represents a timer for Execution_Time

	overriding function Run_Time(Self : in Execution_Timer) return Duration with Inline, Pure_Function;

	overriding procedure Start(Self : in out Execution_Timer; Name : in Wide_Wide_String);

	overriding procedure Stop(Self : in out Execution_Timer);

private
	type Timer is abstract tagged limited record
		Running : Boolean := False;
		Name : Unbounded_Wide_Wide_String;
	end record;

	type Real_Timer is new Timer with record
		Start_Time : Time;
		Stop_Time : Time;
	end record;

	type Execution_Timer is new Timer with record
		Start_Time : CPU_Time;
		Stop_Time : CPU_Time;
	end record;

end Testing.Timers;