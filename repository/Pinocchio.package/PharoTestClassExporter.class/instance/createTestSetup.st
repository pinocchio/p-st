exporting
createTestSetup
	| send |
	stream cr;
		nextPutAll: 'void ', self name, '_setUp() {'; cr.
		
	send := PSend new
				receiver: testCaseInstance;
				message: #setUp asPSymbol;
				arguments: Array new.
	cdumper stream: stream.
	cdumper visit: send.
	
	stream nextPutAll: 'Eval((Object)';
		nextPutAll: send uid asString;
		nextPutAll: ');'; cr;
		nextPutAll: '}'; cr; cr.