pragma Restrictions(No_Exceptions);
pragma Restrictions(No_Tasking);

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