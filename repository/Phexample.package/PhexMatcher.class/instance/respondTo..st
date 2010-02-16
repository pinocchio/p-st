expecting-reflection
respondTo: aSelector
	^self 
		expect: [ value respondsTo: aSelector ]
		describeShould: 
			[ 'expected <1p> to respond to <2p> (using respondsTo:)' 
				expandMacrosWith: value 
			   with: aSelector ]
		describeShouldNot: 
			[ 'expected <1p> not to respond to <2p> (using respondsTo:)' 
				expandMacrosWith: value 
			   with: aSelector ]