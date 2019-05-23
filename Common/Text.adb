with Ada.Characters.Conversions;
use Ada.Characters.Conversions;

package body Text is
	
	----------
	-- Chop --
	----------

	function Chop(Value : String; Length : Positive) return Split_String is
		I : Positive := 1;
		J : Positive := 1;
		K : Positive := (Value'Length / Length) + 1;
		Result : Split_String(K);
	begin
		while I <= K loop
			if (J + Length) > Value'Length then
				Result.Backing(I) := new String'(Value(J .. Value'Last));
			else
				Result.Backing(I) := new String'(Value(J .. J + Length - 1));
			end if;
			I := I + 1;
			J := J + Length;
		end loop;
		return Result;
	end Chop;

	function Chop(Value : Wide_String; Length : Positive) return Split_Wide_String is
		I : Positive := 1;
		J : Positive := 1;
		K : Positive := (Value'Length / Length) + 1;
		Result : Split_Wide_String(K);
	begin
		while I <= K loop
			if (J + Length) > Value'Length then
				Result.Backing(I) := new Wide_String'(Value(J .. Value'Last));
			else
				Result.Backing(I) := new Wide_String'(Value(J .. J + Length - 1));
			end if;
			I := I + 1;
			J := J + Length;
		end loop;
		return Result;
	end Chop;

	function Chop(Value : Wide_Wide_String; Length : Positive) return Split_Wide_Wide_String is
		I : Positive := 1;
		J : Positive := 1;
		K : Positive := (Value'Length / Length) + 1;
		Result : Split_Wide_Wide_String(K);
	begin
		while I <= K loop
			if (J + Length) > Value'Length then
				Result.Backing(I) := new Wide_Wide_String'(Value(J .. Value'Last));
			else
				Result.Backing(I) := new Wide_Wide_String'(Value(J .. J + Length - 1));
			end if;
			I := I + 1;
			J := J + Length;
		end loop;
		return Result;
	end Chop;

	----------------
	-- Occurences --
	----------------

	function Occurences(Source : String; Value : Character) return Natural is
		Result : Natural := 0;
	begin
		for Char of Source loop
			if Char = Value then
				Result := Result + 1;
			end if;
		end loop;
		return Result;
	end Occurences;

	function Occurences(Source : Wide_String; Value : Wide_Character) return Natural is
		Result : Natural := 0;
	begin
		for Char of Source loop
			if Char = Value then
				Result := Result + 1;
			end if;
		end loop;
		return Result;
	end Occurences;

	function Occurences(Source : Wide_Wide_String; Value : Wide_Wide_Character) return Natural is
		Result : Natural := 0;
	begin
		for Char of Source loop
			if Char = Value then
				Result := Result + 1;
			end if;
		end loop;
		return Result;
	end Occurences;

	---------
	-- Pad --
	---------

	function Pad_Left(Source : String; Amount : Integer) return String is (Pad_Left(Source, Amount, ' '));

	function Pad_Left(Source : String; Amount : Integer; Pad_Char : Character) return String is
		Result : String(1 .. Source'Length + Amount) := (others => Pad_Char);
	begin
		Result(Amount + 1 .. Source'Length + Amount) := Source;
		return Result;
	end Pad_Left;

	function Pad_Left(Source : Wide_String; Amount : Integer) return Wide_String is (Pad_Left(Source, Amount, ' '));

	function Pad_Left(Source : Wide_String; Amount : Integer; Pad_Char : Wide_Character) return Wide_String is
		Result : Wide_String(1 .. Source'Length + Amount) := (others => Pad_Char);
	begin
		Result(Amount + 1 .. Source'Length + Amount) := Source;
		return Result;
	end Pad_Left;

	function Pad_Left(Source : Wide_Wide_String; Amount : Integer) return Wide_Wide_String is (Pad_Left(Source, Amount, ' '));

	function Pad_Left(Source : Wide_Wide_String; Amount : Integer; Pad_Char : Wide_Wide_Character) return Wide_Wide_String is
		Result : Wide_Wide_String(1 .. Source'Length + Amount) := (others => Pad_Char);
	begin
		Result(Amount + 1 .. Source'Length + Amount) := Source;
		return Result;
	end Pad_Left;

	function Pad_Right(Source : String; Amount : Integer) return String is (Pad_Right(Source, Amount, ' '));

	function Pad_Right(Source : String; Amount : Integer; Pad_Char : Character) return String is
		Result : String(1 .. Source'Length + Amount) := (others => Pad_Char);
	begin
		Result(1 .. Source'Length) := Source;
		return Result;
	end Pad_Right;

	function Pad_Right(Source : Wide_String; Amount : Integer) return Wide_String is (Pad_Left(Source, Amount, ' '));

	function Pad_Right(Source : Wide_String; Amount : Integer; Pad_Char : Wide_Character) return Wide_String is
		Result : Wide_String(1 .. Source'Length + Amount) := (others => Pad_Char);
	begin
		Result(Amount + 1 .. Source'Length + Amount) := Source;
		return Result;
	end Pad_Right;

	function Pad_Right(Source : Wide_Wide_String; Amount : Integer) return Wide_Wide_String is (Pad_Left(Source, Amount, ' '));

	function Pad_Right(Source : Wide_Wide_String; Amount : Integer; Pad_Char : Wide_Wide_Character) return Wide_Wide_String is
		Result : Wide_Wide_String(1 .. Source'Length + Amount) := (others => Pad_Char);
	begin
		Result(Amount + 1 .. Source'Length + Amount) := Source;
		return Result;
	end Pad_Right;

	-----------
	-- Split --
	-----------

	function Split(Value : String; At_Character : Character) return Split_String is
		Splits : Natural := 0;
	begin
		for V of Value loop
			if V = At_Character then
				Splits := Splits + 1;
			end if;
		end loop;
		declare
			Occurences : array(Positive range 1 .. Splits) of Integer;
			O : Positive := 1;
		begin
			for V in Value'Range loop
				if Value(V) = At_Character then
					Occurences(O) := V;
					O := O + 1;
				end if;
			end loop;
			declare
				Result : Split_String(Splits + 1);
				R : Positive := 1;
				I : Positive := 1;
			begin
				for O of Occurences loop
					Result.Backing(R) := new String'(Value(I .. O));
					I := O + 1;
					R := R + 1;
				end loop;
				Result.Backing(R) := new String'(Value(I .. Value'Last));
				return Result;
			end;
		end;
	end Split;

	function Split(Value : Wide_String; At_Character : Wide_Character) return Split_Wide_String is
		Splits : Natural := 0;
	begin
		for V of Value loop
			if V = At_Character then
				Splits := Splits + 1;
			end if;
		end loop;
		declare
			Occurences : array(Positive range 1 .. Splits) of Integer;
			O : Positive := 1;
		begin
			for V in Value'Range loop
				if Value(V) = At_Character then
					Occurences(O) := V;
					O := O + 1;
				end if;
			end loop;
			declare
				Result : Split_Wide_String(Splits + 1);
				R : Positive := 1;
				I : Positive := 1;
			begin
				for O of Occurences loop
					Result.Backing(R) := new Wide_String'(Value(I .. O));
					I := O + 1;
					R := R + 1;
				end loop;
				Result.Backing(R) := new Wide_String'(Value(I .. Value'Last));
				return Result;
			end;
		end;
	end Split;

	function Split(Value : Wide_Wide_String; At_Character : Wide_Wide_Character) return Split_Wide_Wide_String is
		Splits : Natural := 0;
	begin
		for V of Value loop
			if V = At_Character then
				Splits := Splits + 1;
			end if;
		end loop;
		declare
			Occurences : array(Positive range 1 .. Splits) of Integer;
			O : Positive := 1;
		begin
			for V in Value'Range loop
				if Value(V) = At_Character then
					Occurences(O) := V;
					O := O + 1;
				end if;
			end loop;
			declare
				Result : Split_Wide_Wide_String(Splits + 1);
				R : Positive := 1;
				I : Positive := 1;
			begin
				for O of Occurences loop
					Result.Backing(R) := new Wide_Wide_String'(Value(I .. O));
					I := O + 1;
					R := R + 1;
				end loop;
				Result.Backing(R) := new Wide_Wide_String'(Value(I .. Value'Last));
				return Result;
			end;
		end;
	end Split;

	-----------
	-- Strip --
	-----------

	function Strip(Value : String; Strip_Chars : Character) return String is
		S : String := Value;
		C : Positive := 1;
	begin
		for V of Value loop
			if V /= Strip_Chars then
				S(C) := V;
				C := C + 1;
			end if;
		end loop;
		return S(1 .. C-1);
	end Strip;

	function Strip(Value : Wide_String; Strip_Chars : Wide_Character) return Wide_String is
		S : Wide_String := Value;
		C : Positive := 1;
	begin
		for V of Value loop
			if V /= Strip_Chars then
				S(C) := V;
				C := C + 1;
			end if;
		end loop;
		return S(1 .. C-1);
	end Strip;

	function Strip(Value : Wide_Wide_String; Strip_Chars : Wide_Wide_Character) return Wide_Wide_String is
		S : Wide_Wide_String := Value;
		C : Positive := 1;
	begin
		for V of Value loop
			if V /= Strip_Chars then
				S(C) := V;
				C := C + 1;
			end if;
		end loop;
		return S(1 .. C-1);
	end Strip;

	-----------------
	-- Conversions --
	-----------------
	
	function To_String(Value : Unbounded_String) return String is (Ada.Strings.Unbounded.To_String(Value));
	
	function To_String(Value : Unbounded_Wide_String) return String is (To_String(To_Wide_String(Value)));
	
	function To_String(Value : Unbounded_Wide_Wide_String) return String is (To_String(To_Wide_Wide_String(Value)));
	
	function To_Wide_String(Value : Unbounded_String) return Wide_String is (To_Wide_String(To_String(Value)));
	
	function To_Wide_String(Value : Unbounded_Wide_String) return Wide_String is (Ada.Strings.Wide_Unbounded.To_Wide_String(Value));
	
	function To_Wide_String(Value : Unbounded_Wide_Wide_String) return Wide_String is (To_Wide_String(To_Wide_Wide_String(Value)));
	
	function To_Wide_Wide_String(Value : Unbounded_String) return Wide_Wide_String is (To_Wide_Wide_String(To_String(Value)));
	
	function To_Wide_Wide_String(Value : Unbounded_Wide_String) return Wide_Wide_String is (To_Wide_Wide_String(To_Wide_String(Value)));
	
	function To_Wide_Wide_String(Value : Unbounded_Wide_Wide_String) return Wide_Wide_String is (Ada.Strings.Wide_Wide_Unbounded.To_Wide_Wide_String(Value));
	
	function To_Unbounded_String(Value : String) return Unbounded_String is (Ada.Strings.Unbounded.To_Unbounded_String(Value));
	
	function To_Unbounded_String(Value : Wide_String) return Unbounded_String is (To_Unbounded_String(To_String(Value)));
	
	function To_Unbounded_String(Value : Wide_Wide_String) return Unbounded_String is (To_Unbounded_String(To_String(Value)));
	
	function To_Unbounded_Wide_String(Value : String) return Unbounded_Wide_String is (To_Unbounded_Wide_String(To_Wide_String(Value)));
	
	function To_Unbounded_Wide_String(Value : Wide_String) return Unbounded_Wide_String is (Ada.Strings.Wide_Unbounded.To_Unbounded_Wide_String(Value));
	
	function To_Unbounded_Wide_String(Value : Wide_Wide_String) return Unbounded_Wide_String is (To_Unbounded_Wide_String(To_Wide_String(Value)));
	
	function To_Unbounded_Wide_Wide_String(Value : String) return Unbounded_Wide_Wide_String is (To_Unbounded_Wide_Wide_String(To_Wide_Wide_String(Value)));
	
	function To_Unbounded_Wide_Wide_String(Value : Wide_String) return Unbounded_Wide_Wide_String is (To_Unbounded_Wide_Wide_String(To_Wide_Wide_String(Value)));
	
	function To_Unbounded_Wide_Wide_String(Value : Wide_Wide_String) return Unbounded_Wide_Wide_String is (Ada.Strings.Wide_Wide_Unbounded.To_Unbounded_Wide_Wide_String(Value));
	
	------------------
	-- Fixed String --
	------------------
	
	function "&"(Left : String; Right : Wide_String) return Wide_String is
	begin
		return To_Wide_String(Left) & Right;
	end "&";
	
	function "&"(Left : Wide_String; Right : String) return Wide_String is
	begin
		return Left & To_Wide_String(Right);
	end "&";
	
	function "&"(Left : String; Right : Wide_Wide_String) return Wide_Wide_String is
	begin
		return To_Wide_Wide_String(Left) & Right;
	end "&";
	
	function "&"(Left : Wide_Wide_String; Right : String) return Wide_Wide_String is
	begin
		return Left & To_Wide_Wide_String(Right);
	end "&";
	
	function "&"(Left : Wide_String; Right : Wide_Wide_String) return Wide_Wide_String is
	begin
		return To_Wide_Wide_String(Left) & Right;
	end "&";
	
	function "&"(Left : Wide_Wide_String; Right : Wide_String) return Wide_Wide_String is
	begin
		return Left & To_Wide_Wide_String(Right);
	end "&";
	
	-------------------------------------
	-- Fixed String / Unbounded String --
	-------------------------------------
	
	function "&"(Left : String; Right : Unbounded_String) return Unbounded_String is
	begin
		return To_Unbounded_String(Left) & Right;
	end "&";
	
	function "&"(Left : Wide_String; Right : Unbounded_Wide_String) return Unbounded_Wide_String is
	begin
		return To_Unbounded_Wide_String(Left) & Right;
	end "&";
	
	function "&"(Left : Wide_Wide_String; Right : Unbounded_Wide_Wide_String) return Unbounded_Wide_Wide_String is
	begin
		return To_Unbounded_Wide_Wide_String(Left) & Right;
	end "&";
	
	-------------------------------------
	-- Unbounded String / Fixed String --
	-------------------------------------
	
	function "&"(Left : Unbounded_String; Right : String) return Unbounded_String is
	begin
		return Left & To_Unbounded_String(Right);
	end "&";
	
	function "&"(Left : Unbounded_Wide_String; Right : Wide_String) return Unbounded_Wide_String is
	begin
		return Left & To_Unbounded_Wide_String(Right);
	end "&";
	
	function "&"(Left : Unbounded_Wide_Wide_String; Right : Wide_Wide_String) return Unbounded_Wide_Wide_String is
	begin
		return Left & To_Unbounded_Wide_Wide_String(Right);
	end "&";

	-------------
	-- Private --
	-------------

	function Constant_Indexer(Self : Split_String; Index : Positive) return Constant_String_Reference is
	begin
		return Constant_String_Reference'(Value => Self.Backing(Index));
	end Constant_Indexer;

	function Wide_Constant_Indexer(Self : Split_Wide_String; Index : Positive) return Constant_Wide_String_Reference is
	begin
		return Constant_Wide_String_Reference'(Value => Self.Backing(Index));
	end Wide_Constant_Indexer;

	function Wide_Wide_Constant_Indexer(Self : Split_Wide_Wide_String; Index : Positive) return Constant_Wide_Wide_String_Reference is
	begin
		return Constant_Wide_Wide_String_Reference'(Value => Self.Backing(Index));
	end Wide_Wide_Constant_Indexer;

end Text;
