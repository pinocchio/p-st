*Pinocchio
expectedUnknownMessageToReturn: expected 
	<preventExport>
	state := state copyWithout: #be.
	^self expect: [ value = expected ]
		describeShould: [ 'expected #<1s> to be <2p>' 
				expandMacrosWith: self findNameOfUnknownMessage
				with: expected ]
		describeShouldNot: [ 'did not expect #<1s> to be <2p>' 
				expandMacrosWith: self findNameOfUnknownMessage
				with: expected ]
	