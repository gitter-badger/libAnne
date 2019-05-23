package body Colors.Models is

	function α(Self : Color'Class) return Percent is (Percent(Self.α / Short_Short_Modular'Last));

	function α(Self : Color'Class) return Short_Short_Modular is (Self.α);
	
end Colors.Models;
