#libAdaC

This library provides bindings to the C standard library in as clean of a way as possible.

This means that it is not completely thin, but not exactly a thick binding either. For example, `fgetc` returning `Integer` makes sense for what `fgetc` is trying to do: return either the character or an error code. A sufficiently thick binding would do what exactly? Return a `Boolean` for success and pass the character in an `out` paramter? Return the character but throw an exception upon failure? These do not offer optimal performance, drastically change the behavior, and force calling-code into specific paradigms. Consider the case of reading characters until an `EOF`: if we throw an exception from `fgetc` that means we need to consume this exception and return the composed string; absolutely asinine behavior. Returning character through an out parameter, or conversely returning the success through an out parameter, introduces a second allocation making it less performant.

Rather, it is the responsibility of the calling Ada code to marshall these as appropriate for your specific context.

That being said, some automatic marshalling is provided, such as conversion between Ada strings and C strings; calling-code should not have to marshal the obvious.