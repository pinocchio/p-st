running
testFieldOverwriteTest
	| result |
	result := PAliasInterpreter interpret: [ |c|
		c := ChildClassTestClass new.
		c a: 10.
		c a: 20.
		c
	].

	result should beKindOf: PReturnAlias.
	result value should beKindOf: ChildClassTestClass.
	result context should beKindOf: PBlockContext.
	result context homeContext closure selector should be: #testFieldOverwriteTest.
	
	result := result value.
	result a should beKindOf: PFieldWriteAlias.
	result b should beKindOf: PAllocationAlias.
	
	result := result a.
	result value should be: 20.

	result predecessor should beKindOf: PFieldWriteAlias.
	result predecessor value should be: 10.
	result predecessor predecessor should beKindOf: PAllocationAlias.
	result predecessor origin should beKindOf: PParameterAlias.
	result predecessor origin value should be: 10.
	result predecessor origin origin should beKindOf: PLiteralAlias.
	result predecessor origin origin value should be: 10.
	result predecessor origin origin origin should be: nil.
	
	result := result origin.
	result should beKindOf: PParameterAlias.
	result value should be: 20.
	
	result := result origin.
	result should beKindOf: PLiteralAlias.
	result value should be: 20.
	result origin should be: nil.