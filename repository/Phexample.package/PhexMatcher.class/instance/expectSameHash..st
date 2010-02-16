private
expectSameHash: expected
	value hash = expected hash ifFalse: [
		TestFailure signal: ('expected same hash for <1p> and <2p> (using hash implied by =)'
			expandMacrosWith: value
			with: expected) ].
	^nil