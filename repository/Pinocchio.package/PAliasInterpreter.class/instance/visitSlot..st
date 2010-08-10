interpreting
visitSlot: anSlot
	| result |
	result := anSlot readFrom: self currentUnwrappedSelf.
	PStdInspector inspect: anSlot.
	^ (PFieldReadAlias alias: result)
		context: context