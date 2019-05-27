package Generics.Mathematics.Angles with Pure is
--@Description Provides generic functions for Mathematics.Angles
--@Version 1.0

	generic
		type Unit_Type is private;
		type Angle_Type is private;
		with function To_Angle(Value : Unit_Type) return Angle_Type is <>;
		with function "+"(Left, Right : Angle_Type) return Angle_Type is <>;
	function Add_Unit_Unit(Left : Unit_Type; Right : Unit_Type) return Angle_Type;

	generic
		type Unit_Type is private;
		type Angle_Type is private;
		with function To_Angle(Value : Unit_Type) return Angle_Type is <>;
		with function "+"(Left, Right : Angle_Type) return Angle_Type is <>;
	function Add_Unit_Angle(Left : Unit_Type; Right : Angle_Type) return Angle_Type;

	generic
		type Unit_Type is private;
		type Angle_Type is private;
		with function To_Angle(Value : Unit_Type) return Angle_Type is <>;
		with function "+"(Left, Right : Angle_Type) return Angle_Type is <>;
	function Add_Angle_Unit(Left : Angle_Type; Right : Unit_Type) return Angle_Type;

	generic
		type Unit_Type is private;
		type Angle_Type is private;
		with function To_Angle(Value : Unit_Type) return Angle_Type is <>;
		with function "-"(Left, Right : Angle_Type) return Angle_Type is <>;
	function Subtract_Unit_Unit(Left : Unit_Type; Right : Unit_Type) return Angle_Type;

	generic
		type Unit_Type is private;
		type Angle_Type is private;
		with function To_Angle(Value : Unit_Type) return Angle_Type is <>;
		with function "-"(Left, Right : Angle_Type) return Angle_Type is <>;
	function Subtract_Unit_Angle(Left : Unit_Type; Right : Angle_Type) return Angle_Type;

	generic
		type Unit_Type is private;
		type Angle_Type is private;
		with function To_Angle(Value : Unit_Type) return Angle_Type is <>;
		with function "-"(Left, Right : Angle_Type) return Angle_Type is <>;
	function Subtract_Angle_Unit(Left : Angle_Type; Right : Unit_Type) return Angle_Type;

end Generics.Mathematics.Angles;
