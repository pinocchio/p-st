interpreting
visitSlot: anSlot
	| result |
	result := anSlot readFrom: self currentUnwrappedSelf.
	^ (PFieldReadAlias alias: result)
		context: context