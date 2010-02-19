exporting
createMethodCallFor: anPinocchioASTMethod of: aCompiledMethod
	| send arguments |
	arguments := ((self testArgumentsFor: anPinocchioASTMethod of: aCompiledMethod)
						collect: [:o | PConstant new: o ]) asArray.
	send := (PSend new: arguments size)
				receiver: testCaseInstance;
				message: anPinocchioASTMethod selector asPObject;
				arguments: arguments.
	cdumper stream: stream.
	cdumper visit: send.
	
	stream nextPutAll: 'Object result = (Object)Eval((Object)';
		nextPutAll: send uid asString;
		nextPutAll: ');'; cr.
	self assertEmptyStack.