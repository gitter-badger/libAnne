package body Containers.Buffers.Ring is

	------------
	-- Buffer --
	------------

	function Is_Empty(Self : in Buffer) return Boolean is (Self.Take_Index = Self.Stock_Index);

	procedure Stock(Self : in out Buffer; Value : in Value_Type) is
	begin
		Self.Backing(Self.Stock_Index) := Value;
		Self.Stock_Index := Self.Stock_Index + 1;
		if Self.Stock_Index > Buffer_Length then
			Self.Stock_Index := 1;
		end if;
	end Stock;

	function Take(Self : in out Buffer) return Value_Type is
		Result : Value_Type := Self.Backing(Self.Take_Index);
	begin
		if Self.Is_Empty then
			raise Empty_Container;
		end if;
		Self.Take_Index := Self.Take_Index + 1;
		if Self.Take_Index > Buffer_Length then
			Self.Take_Index := 1;
		end if;
		return Result;
	end Take;

	procedure Clear(Self : in out Buffer) is
	begin
		Self.Take_Index := Self.Stock_Index;
	end Clear;

	function Length(Self : Buffer) return Natural is (Buffer_Length);

	function Size(Self : Buffer) return Natural is (Buffer'Size);
	
	-----------
	-- Array --
	-----------

end Containers.Buffers.Ring;
