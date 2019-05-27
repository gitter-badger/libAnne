# libTesting

Provides various testing facilities.

This is not actually considered part of libAnne, but rather is a testing framework that I've developed. Because libAnne needs to be tested, it makes sense to include it here; this avoids a circular dependency problem, because libTesting depends on libAnne, and libAnne's tests depend on libTesting.