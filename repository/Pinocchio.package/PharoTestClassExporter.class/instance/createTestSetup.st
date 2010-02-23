exporting
createTestSetup
	| send |
	stream lf;
		nextPutAll: 'void ', self name, '_setUp() {'; lf.
		
	send := PSend new
				receiver: testCaseInstance;
				message: #setUp;
				arguments: Array new.
	cdumper stream: stream.
	cdumper visit: send.
	
	stream nextPutAll: 'Eval((Object)';
		nextPutAll: send uid;
		nextPutAll: ');'; lf;
		nextPutAll: '}'; lf; lf.