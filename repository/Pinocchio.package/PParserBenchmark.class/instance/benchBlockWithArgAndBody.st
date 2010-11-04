as yet unclassified
benchBlockWithArgAndBody
	| string |
	string := PEGStringScanner on: 'a
		^ [ :a| a]'.
	self repetitionCount timesRepeat: [ 
		methodParser match: string.
		string reset].