pragma Restrictions(No_Exceptions);
pragma Restrictions(No_Tasking);

with System;
use System;

package Bindings.cwchar is
--@description Provides bindings to C's cwchar.h
--@see http://www.cplusplus.com/reference/cwchar/
--@version 1.0.0

	function fgetwc(stream : Address) return Long_Integer with Import, Convention => C;
	--@description Returns the wide character currently pointed by the internal position indicator of the specified stream. The internal position indicator is then advanced to the next wide character.
	--@remarks Because wide characters are represented by multibyte characters in external files, the function may involve reading several bytes from the file, which are interpreted as a single character as if mbrtowc was called with the stream's internal mbstate_t object. If the sequence of bytes read cannot be interpreted as a valid multibyte character (or there were too few bytes available to compose a wide character), the function returns WEOF and sets EILSEQ as the value of errno. If the stream is at the end-of-file when called, the function returns WEOF and sets the end-of-file indicator for the stream (feof). If a read error occurs, the function returns WEOF and sets the error indicator for the stream (ferror).
	--@param stream Pointer to a FILE object that identifies an input stream. The stream shall not have an orientation yet, or be wide-oriented (the first i/o operation on a stream determines whether it is byte- or wide- oriented).
	--@return On success, the character read is returned (promoted to a value of type wint_t). The return type is wint_t to accommodate for the special value WEOF, which indicates failure: If the sequence of bytes read cannot be interpreted as a valid wide character, the function returns WEOF and sets errno to EILSEQ. If the position indicator was at the end-of-file, the function returns WEOF and sets the eof indicator (feof) of stream. If a reading error happens, the function also returns WEOF, but sets its error indicator (ferror) instead.

	function fputwc(wc : Long_Integer; stream : Address) return Long_Integer with Import, Convention => C;
	--@description Writes the wide character wc to the stream and advances the position indica
	--@remarks Because wide characters are represented by multibyte characters in external files, the function may involve writing several bytes to the file, as if wcrtomb was called to translate wc with the stream's internal mbstate_t object. If the wide character cannot be represented using the multibyte encoding, the function returns WEOF and sets EILSEQ as the value of errno. If a writing error occurs, the function returns WEOF and sets the error indicator for the stream (ferror).
	--@param wc The wide character to write.
	--@param stream Pointer to a FILE object that identifies an output stream. The stream shall not have an orientation yet, or be wide-oriented (the first i/o operation on a stream determines whether it is byte- or wide- oriented).
	--@return On success, the character written is returned (wc promoted to a value of type wint_t). The return type is wint_t to accommodate for the special value WEOF, which indicates failure: If the wide character could not be interpreted as a valid multibyte character, the function returns WEOF and sets errno to EILSEQ. If a writing error occurs, the function also returns WEOF and the error indicator (ferror) is set.

end Bindings.cwchar;