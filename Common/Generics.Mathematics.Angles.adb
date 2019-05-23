package body Generics.Mathematics.Angles is

	function Add_Unit_Unit(Left : Unit_Type; Right : Unit_Type) return Angle_Type is (To_Angle(Left) + To_Angle(Right));

	function Add_Unit_Angle(Left : Unit_Type; Right : Angle_Type) return Angle_Type is (To_Angle(Left) + Right);

	function Add_Angle_Unit(Left : Angle_Type; Right : Unit_Type) return Angle_Type is (Left + To_Angle(Right));

	function Subtract_Unit_Unit(Left : Unit_Type; Right : Unit_Type) return Angle_Type is (To_Angle(Left) - To_Angle(Right));

	function Subtract_Unit_Angle(Left : Unit_Type; Right : Angle_Type) return Angle_Type is (To_Angle(Left) - Right);

	function Subtract_Angle_Unit(Left : Angle_Type; Right : Unit_Type) return Angle_Type is (Left - To_Angle(Right));
	
end Generics.Mathematics.Angles;
