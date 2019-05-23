with Ada.Iterator_Interfaces;

generic
    type Value_Type is private;
    Buffer_Length : Positive; --Length of the buffer, or the maximum amount of values it can hold
package Containers.Buffers.Ring is
--@description Provides ring buffers
--@version 0.1.0

    ------------
    -- Buffer --
    ------------

    type Buffer is new Container with private;

    overriding function Is_Empty(Self : Buffer) return Boolean with Inline;

    procedure Stock(Self : in out Buffer; Value : in Value_Type);

    function Take(Self : in out Buffer) return Value_Type;

    overriding procedure Clear(Self : in out Buffer);

    overriding function Length(Self : Buffer) return Natural;

    overriding function Size(Self : Buffer) return Natural;

    -----------
    -- Array --
    -----------

    type Value_Array is array(Integer range <>) of Value_Type;
    --Array of values produced from a buffer for quicker iteration (generally)

private
    type Buffer is new Container with record
        Backing : Value_Array(1 .. Buffer_Length);
        Take_Index : Positive := 1;
        Stock_Index : Positive := 1;
    end record;

end Containers.Buffers.Ring;