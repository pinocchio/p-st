as yet unclassified
benchStringNumbers
	| string |
	string := PEGStringScanner on: 'a
	^ ''012345689'''.
	self repetitionCount timesRepeat: [ 
		methodParser match: string.
		string reset].