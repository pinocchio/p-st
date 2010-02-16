exporting
createMethodCallFor: anPinocchioASTMethod of: aCompiledMethod
	| send arguments |
	arguments := ((self testArgumentsFor: anPinocchioASTMethod of: aCompiledMethod)
						collect: [:o | o asPObject asPConstant ]) asPArray.
	send := PSend new
				receiver: testCaseInstance;
				message: anPinocchioASTMethod selector asPSymbol;
				arguments: arguments.
	cdumper stream: stream.
	cdumper visit: send.
	
	stream nextPutAll: 'Object result = (Object)Eval((Object)';
		nextPutAll: send uid asString;
		nextPutAll: ');'; cr.
	self assertEmptyStack.