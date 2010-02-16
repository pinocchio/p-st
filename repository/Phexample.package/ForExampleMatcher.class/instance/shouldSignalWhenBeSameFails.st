examples-expecting
shouldSignalWhenBeSameFails
	[ 'string' clone should beSameAs: 'string' clone ] 
		should signal: TestFailure 
		withMessageText: 'expected ''string'' but got ''string'' (using ==)'