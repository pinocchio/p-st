tests
testAssignmentExpressions
	| parser string |
	parser := scparser assignmentExpressions.
	string := PEGStringScanner on: 'a :=  b:= c := d'.
	((parser match: string) collect: #name) asArray should = ((Array new: 3)
	at: 1 put: 'a';
	at: 2 put: 'b';
	at: 3 put: 'c';
	yourself).
	string position should = 15.
	string := PEGStringScanner on: ''.
	(parser match: string) should not be isNil