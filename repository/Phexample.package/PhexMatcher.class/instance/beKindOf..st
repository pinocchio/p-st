expecting-reflection
beKindOf: expectedClass 
	^self 
		expect: [ value isKindOf: expectedClass ]
		describeShould: 
			[ 'expected kind of <1p> but got instance of <2p> (using isKindOf)' 
				expandMacrosWith: expectedClass
				with: value class ]
		describeShouldNot: 
			[ 'expected not to get kind of <1p> but got instance of <2p> (using isKindOf)' 
				expandMacrosWith: expectedClass
				with: value class ]