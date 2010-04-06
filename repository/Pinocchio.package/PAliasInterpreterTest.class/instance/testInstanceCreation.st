running
testInstanceCreation
	| result |
	result := PAliasInterpreter interpret: [
		ChildClassTestClass new.
	].

	result should beKindOf: PReturnAlias.
	result value should beKindOf: ChildClassTestClass.
	result context should beKindOf: PBlockContext.
	result context homeContext closure selector should be: #testInstanceCreation.
	
	result := result origin.
	result should beKindOf: PReturnAlias.
	result value should beKindOf: ChildClassTestClass.
	result context should beKindOf: PMethodContext.
	result context homeContext closure selector should be: #new.
	
	result := result origin.
	result should beKindOf: PReturnAlias.
	result value should beKindOf: ChildClassTestClass.
	result context should beKindOf: PMethodContext.
	result context homeContext closure selector should be: #initialize.
	
	result := result origin.
	result should beKindOf: PAllocationAlias.
	result context should beKindOf: PMethodContext.
	result context homeContext closure selector should be: #new. "here basicNew was called"
	result origin should be: nil.