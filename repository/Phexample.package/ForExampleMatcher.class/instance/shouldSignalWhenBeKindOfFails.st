examples-expecting-reflection
shouldSignalWhenBeKindOfFails
	[ 'hello' should beKindOf: Number ] should signal: TestFailure