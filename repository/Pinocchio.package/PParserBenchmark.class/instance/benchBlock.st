as yet unclassified
benchBlock
	| string |
	string := PEGStringScanner on: 'a
		^ []'.
	self repetitionCount timesRepeat: [ 
		methodParser match: string.
		string reset].