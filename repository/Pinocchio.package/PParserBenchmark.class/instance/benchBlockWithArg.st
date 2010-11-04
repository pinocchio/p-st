as yet unclassified
benchBlockWithArg
	| string |
	string := PEGStringScanner on: 'a
		^ [ :a| ]'.
	self repetitionCount timesRepeat: [ 
		methodParser match: string.
		string reset].