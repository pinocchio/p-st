running
testFieldWriteTest
	| result |
	result := PAliasInterpreter interpret: [ |c|
		c := ChildClassTestClass new.
		c a: 10.
		c
	].

	result should beKindOf: PReturnAlias.
	result value should beKindOf: ChildClassTestClass.
	result context should beKindOf: PBlockContext.
	result context homeContext closure selector should be: #testFieldWriteTest.
	
	result := result value.
	result a should beKindOf: PFieldWriteAlias.
	result b should beKindOf: PAllocationAlias.
	
	result := result a.
	result value should be: 10.

	result predecessor should beKindOf: PAllocationAlias.
	
	result := result origin.
	result should beKindOf: PParameterAlias.
	result value should be: 10.
	
	result := result origin.
	result should beKindOf: PLiteralAlias.
	result value should be: 10.
	result origin should be: nil.