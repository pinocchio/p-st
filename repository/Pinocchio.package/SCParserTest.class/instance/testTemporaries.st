tests
testTemporaries
	| parser string result |
	parser := scparser temporaries.
	string := PEGStringScanner on: '|a b c|'.
	result := parser match: string.
	result collect: #yourself.
	(result collect: #name) asArray should = ((Array new: 3)
	at: 1 put: 'a';
	at: 2 put: 'b';
	at: 3 put: 'c';
	yourself).
	string position should = 7.
	string := PEGStringScanner on: '|  a b c  |'.
	((parser match: string) collect: #name) asArray should = ((Array new: 3)
	at: 1 put: 'a';
	at: 2 put: 'b';
	at: 3 put: 'c';
	yourself).
	string position should = 11