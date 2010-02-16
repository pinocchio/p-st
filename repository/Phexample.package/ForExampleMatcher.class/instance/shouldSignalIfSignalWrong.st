examples-expecting-error
shouldSignalIfSignalWrong

	[ [ self error ] should signal: TestFailure ] should 
		signal: TestFailure 
		"withMessageText: 'Expected class TestFailure but was Error'"