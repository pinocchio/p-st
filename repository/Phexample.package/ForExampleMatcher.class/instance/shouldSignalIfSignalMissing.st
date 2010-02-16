examples-expecting-error
shouldSignalIfSignalMissing

	[ [ 5 should = 5 ] should signal: TestFailure ] should 
		signal: TestFailure 
		withMessageText: 'Should raise TestFailure but was none'