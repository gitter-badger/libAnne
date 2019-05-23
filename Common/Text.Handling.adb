with Generics.Text.Handling;
use Generics.Text.Handling;

package body Text.Handling is

	------------------------
	-- Control Characters --
	------------------------

	function Is_Control(Char : Character) return Boolean is (Char in Control_Character);

	function Is_Control(Char : Wide_Character) return Boolean is (Char in Wide_Control_Character);

	function Is_Control(Char : Wide_Wide_Character) return Boolean is (Char in Wide_Wide_Control_Character);

end Text.Handling;