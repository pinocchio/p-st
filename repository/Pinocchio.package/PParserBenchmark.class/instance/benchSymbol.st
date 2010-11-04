as yet unclassified
benchSymbol
	| string |
	string := PEGStringScanner on: 'a
	^ #abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'.
	self repetitionCount timesRepeat: [ 
		methodParser match: string.
		string reset].