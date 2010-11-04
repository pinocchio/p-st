as yet unclassified
benchAnnotation
	| string |
	string := PEGStringScanner on: 'a
		<abcdefghil>'.
	self repetitionCount timesRepeat: [ 
		methodParser match: string.
		string reset].