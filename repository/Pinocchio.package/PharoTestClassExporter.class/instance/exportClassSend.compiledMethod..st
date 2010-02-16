convenience
exportClassSend: anASTMethod compiledMethod: aCompiledMethod 
	| arguments returnValue |
	arguments := self testArgumentsFor: anASTMethod of: aCompiledMethod.
	self sclassInstance setUp.
	returnValue := self sclassInstance perform: anASTMethod selector asSymbol
						withArguments: arguments.
	self sclassInstance tearDown.				
	^ returnValue.