interpreting
visitInstVariable: anInstVariable
	| result |
	result := super visitInstVariable: anInstVariable.
	^ PFieldReadAlias alias: result