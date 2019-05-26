pragma Restrictions (Simple_Barriers);
pragma Restrictions (Pure_Barriers);
pragma Restrictions (No_Abort_Statements);
pragma Restrictions (No_Access_Parameter_Allocators);
pragma Restrictions (No_Asynchronous_Control);
pragma Restrictions (No_Calendar);
pragma Restrictions (No_Coextensions);
pragma Restrictions (No_Default_Stream_Attributes);
pragma Restrictions (No_Delay);
pragma Restrictions (No_Dispatch);
pragma Restrictions (No_Dispatching_Calls);
pragma Restrictions (No_Dynamic_Attachment);
pragma Restrictions (No_Dynamic_Priorities);
pragma Restrictions (No_Enumeration_Maps);
pragma Restrictions (No_Entry_Calls_In_Elaboration_Code);
pragma Restrictions (No_Entry_Queue);
pragma Restrictions (No_Exception_Registration);
pragma Restrictions (No_Finalization);
pragma Restrictions (No_Fixed_Io);
pragma Restrictions (No_Io);
pragma Restrictions (No_Implicit_Heap_Allocations);
pragma Restrictions (No_Implicit_Task_Allocations);
pragma Restrictions (No_Implicit_Protected_Object_Allocations);
pragma Restrictions (No_Initialize_Scalars);
pragma Restrictions (No_Local_Timing_Events);
pragma Restrictions (No_Local_Protected_Objects);
pragma Restrictions (No_Nested_Finalization);
pragma Restrictions (No_Protected_Type_Allocators);
pragma Restrictions (No_Protected_Types);
pragma Restrictions (No_Relative_Delay);
pragma Restrictions (No_Requeue_Statements);
pragma Restrictions (No_Select_Statements);
pragma Restrictions (No_Specific_Termination_Handlers);
pragma Restrictions (No_Stream_Optimizations);
pragma Restrictions (No_Streams);
pragma Restrictions (No_Task_Allocators);
pragma Restrictions (No_Task_Attributes_Package);
pragma Restrictions (No_Task_At_Interrupt_Priority);
pragma Restrictions (No_Task_Hierarchy);
pragma Restrictions (No_Task_Termination);
pragma Restrictions (No_Tasking);
pragma Restrictions (No_Terminate_Alternatives);
pragma Restrictions (Static_Priorities);
pragma Restrictions (Static_Storage_Size);
pragma Restrictions (Immediate_Reclamation);
pragma Restrictions (No_Implementation_Aspect_Specifications);
pragma Restrictions (No_Implementation_Identifiers);
pragma Restrictions (No_Implementation_Units);
pragma Restrictions (No_Implicit_Aliasing);
pragma Restrictions (No_Wide_Characters);
pragma Restrictions (Static_Dispatch_Tables);
pragma Restrictions (Max_Protected_Entries => 0);
pragma Restrictions (Max_Select_Alternatives => 0);
pragma Restrictions (Max_Task_Entries => 0);
pragma Restrictions (Max_Tasks => 0);
pragma Restrictions (Max_Asynchronous_Select_Nesting => 0);

with System;
use System;

package Bindings.stdio with Elaborate_Body is
--@description Provides bindings to C's stdio.h
--@see http://www.cplusplus.com/reference/cstdio/
--@version 1.0.0

	stdin : Address; --@description The standard input stream is the default source of data for applications. In most systems, it is usually directed by default to the keyboard.

	stdout : Address; --@description The standard output stream is the default destination of output for applications. In most systems, it is usually directed by default to the text console (generally, on the screen).

	stderr : Address; --@description The standard error stream is the default destination for error messages and other diagnostic warnings. Like stdout, it is usually also directed by default to the text console (generally, on the screen).

	function fgetc(stream : Address) return Integer with Import, Convention => C;
	--@description Returns the character currently pointed by the internal file position indicator of the specified stream. 
	--@remarks The internal file position indicator is then advanced to the next character. If the stream is at the end-of-file when called, the function returns EOF and sets the end-of-file indicator for the stream (feof). If a read error occurs, the function returns EOF and sets the error indicator for the stream (ferror).
	--@param stream Pointer to a FILE object that identifies an input stream.
	--@return On success, the character read is returned (promoted to an int value). The return type is int to accommodate for the special value EOF, which indicates failure: If the position indicator was at the end-of-file, the function returns EOF and sets the eof indicator (feof) of stream. If some other reading error happens, the function also returns EOF, but sets its error indicator (ferror) instead.
	--@see http://www.cplusplus.com/reference/cstdio/fgetc/

	function fputc(character : Integer; stream : Address) return Integer with Import, Convention => C;
	--@description Writes a character to the stream and advances the position indicator. The character is written at the position indicated by the internal position indicator of the stream, which is then automatically advanced by one.
	--@param character The int promotion of the character to be written. The value is internally converted to an unsigned char when written.
	--@param stream Pointer to a FILE object that identifies an output stream.
	--@return On success, the character written is returned. If a writing error occurs, EOF is returned and the error indicator (ferror) is set.
	--@see http://www.cplusplus.com/reference/cstdio/fputc/

end Bindings.stdio;