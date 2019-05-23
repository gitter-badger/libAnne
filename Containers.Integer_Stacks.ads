with Containers.Stacks;

generic
	type Integer_Type is range <>;
package Containers.Integer_Stacks with Preelaborate is

	package Base_Stack is new Containers.Stacks(Integer_Type);
	--Please ignore this

	use Base_Stack;

	type Stack is new Base_Stack.Stack with null record;

	procedure Add(Self : in out Stack) with Pre => Self.Length >= 2;
	--Add the top two numbers on the stack, and push the result back onto the stack

	procedure Add(Self : in out Stack; Value : in Integer_Type) with Pre => Self.Length >= 1;
	--Add the top number on the stack with the specified value, and push the result back onto the stack

	procedure Subtract(Self : in out Stack) with Pre => Self.Length >= 2;
	--Subtract the top two numbers on the stack, and push the result back onto the stack

	procedure Sub(Self : in out Stack) renames Subtract;
	--Subtract the top two numbers on the stack, and push the result back onto the stack

	procedure Subtract(Self : in out Stack; Value : in Integer_Type) with Pre => Self.Length >= 1;
	--Subtract the specified value from the top number of the stack, and push the result back onto the stack

	procedure Sub(Self : in out Stack; Value : in Integer_Type) renames Subtract;
	--Subtract the specified value from the top number of the stack and push the result back onto the stack

	procedure Multiply(Self : in out Stack) with Pre => Self.Length >= 2;
	--Multiply the top two numbers on the stack, and push the result back onto the stack

	procedure Mul(Self : in out Stack) renames Multiply;
	--Multiply the top two numbers on the stack, and push the result back onto the stack

	procedure Multiply(Self : in out Stack; Value : in Integer_Type) with Pre => Self.Length >= 1;
	--Multiply the top number on the stack with the specified value, and push the result back onto the stack

	procedure Mul(Self : in out Stack; Value : in Integer_Type) renames Multiply;
	--Multiply the top number on the stack with the specified value, and push the result back onto the stack

	procedure Divide(Self : in out Stack) with Pre => Self.Length >= 2;
	--Divide the top two numbers on the stack, and push the result back onto the stack

	procedure Div(Self : in out Stack) renames Divide;
	--Divide the top two numbers on the stack, and push the result back onto the stack

	procedure Divide(Self : in out Stack; Value : in Integer_Type) with Pre => Self.Length >= 1;
	--Divide the top number on the stack by the specified value, and push the result back onto the stack

	procedure Div(Self : in out Stack; Value : in Integer_Type) renames Divide;
	--Divide the top number on the stack by the specified value, and push the result back onto the stack

end Containers.Integer_Stacks;
