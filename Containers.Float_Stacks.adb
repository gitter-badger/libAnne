package body Containers.Float_Stacks is

	procedure Add(Self : in out Stack) is
	begin
		Self.Push(Self.Pop + Self.Pop);
	end Add;

	procedure Add(Self : in out Stack; Value : in Float_Type) is
	begin
		Self.Push(Self.Pop + Value);
	end Add;

	procedure Subtract(Self : in out Stack) is
		Top : Float_Type := Self.Pop;
	begin
		Self.Push(Self.Pop - Top);
	end Subtract;

	procedure Subtract(Self : in out Stack; Value : in Float_Type) is
	begin
		Self.Push(Self.Pop - Value);
	end Subtract;

	procedure Multiply(Self : in out Stack) is
	begin
		Self.Push(Self.Pop * Self.Pop);
	end Multiply;

	procedure Multiply(Self : in out Stack; Value : in Float_Type) is
	begin
		Self.Push(Self.Pop * Value);
	end Multiply;

	procedure Divide(Self : in out Stack) is
		Top : Float_Type := Self.Pop;
	begin
		Self.Push(Self.Pop / Top);
	end Divide;

	procedure Divide(Self : in out Stack; Value : in Float_Type) is
	begin
		Self.Push(Self.Pop / Value);
	end Divide;

end Containers.Float_Stacks;
