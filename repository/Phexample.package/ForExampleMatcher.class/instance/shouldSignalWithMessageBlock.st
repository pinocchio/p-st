examples-expecting-error
shouldSignalWithMessageBlock
	
	[ 5 should = 6 ] should 
		signal: TestFailure
		withMessageText: [ :m | 
			m should beKindOf: String.
			m isEmpty should not be true.
			m should = 'expected 6 but got 5 (using =)'.
		]