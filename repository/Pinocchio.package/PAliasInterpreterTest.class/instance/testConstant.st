running
testConstant
	| result |
	result := PAliasInterpreter interpret: [ 2 ].
	
	result should beKindOf: PReturnAlias.
	result value should be: 2.
	
	result := result origin.
	result should beKindOf: PLiteralAlias.
	result origin should be: nil.
	result value should be: 2.