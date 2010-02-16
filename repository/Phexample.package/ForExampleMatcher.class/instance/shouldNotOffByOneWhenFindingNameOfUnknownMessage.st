examples-expecting-boolean
shouldNotOffByOneWhenFindingNameOfUnknownMessage
	[ #() isEmpty should be false should ] " kinda artifical example, 
		but exercises the off-by-one nature of the PC which points after
		#false when looking for the message name, ie we must  make sure
		that we dont search to far which would yield #false instead of
		the correct #isEmpty message."
		should signal: TestFailure
		withMessageText: 'expected #isEmpty to be false'