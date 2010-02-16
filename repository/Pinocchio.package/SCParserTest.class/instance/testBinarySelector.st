tests
testBinarySelector
	| parser string |
	parser := scparser binarySelector.
	string := PEGStringScanner on: '+= a'.
	(parser match: string) printString should = '+='.
	string position should = 2.
	string := PEGStringScanner on: '|= a'.
	(parser match: string) printString should = '|'.
	string position should = 1.
	string := PEGStringScanner on: '-= a'.
	(parser match: string) printString should = '-='.
	string position should = 2.
	string := PEGStringScanner on: '=- a'.
	(parser match: string) printString should = '='.
	string position should = 1