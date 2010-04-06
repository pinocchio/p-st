interpreting
visitInstVariable: anInstVariable
	| result |
	result := anInstVariable readFrom: self currentUnwrappedSelf.
	PStdInspector inspect: anInstVariable.
	^ (PFieldReadAlias alias: result)
		context: context