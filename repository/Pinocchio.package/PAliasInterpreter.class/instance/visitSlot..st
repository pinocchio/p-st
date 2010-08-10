interpreting
visitSlot: anSlot
	| result |
	result := anSlot readFrom: self currentUnwrappedSelf.
	PStreamInspector inspect: anSlot.
	^ (PFieldReadAlias alias: result)
		context: context