examples-expecting-reflection
shouldSignalWhenNotRespondToFails
	[ Object new should not respondTo: #yourself ] should
		signal: TestFailure
		withMessageText: 'expected an Object not to respond to #yourself (using respondsTo:)' 