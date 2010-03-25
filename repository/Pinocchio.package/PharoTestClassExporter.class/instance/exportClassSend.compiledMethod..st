convenience
exportClassSend: aPMethod compiledMethod: aCompiledMethod
	| arguments returnValue |
	arguments := self testArgumentsFor: aPMethod of: aCompiledMethod.
	self sclassInstance setUp.
	returnValue := self sclassInstance perform: aPMethod selector asSymbol withArguments: arguments.
	self sclassInstance tearDown.
	^ returnValue