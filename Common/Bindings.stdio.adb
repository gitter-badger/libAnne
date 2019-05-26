with Ada.Unchecked_Conversion;

package body Bindings.stdio is

	--------------------
	-- Initialization --
	--------------------
	--* This package requires some initialization tricks to get the value of certain variables

	function get_stdin return Address with Import, Convention => StdCall, External_Name => "__gnat_constant_stdin";

	function get_stdout return Address with Import, Convention => StdCall, External_Name => "__gnat_constant_stdout";

	function get_stderr return Address with Import, Convention => StdCall, External_Name => "__gnat_constant_stderr";

begin
	stdin := get_stdin;
	stdout := get_stdout;
	stderr := get_stderr;
end Bindings.stdio;