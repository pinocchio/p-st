as yet unclassified
benchSmallMethod
	| string |
	string := PEGStringScanner on: 'a
	^ self'.
	1000 timesRepeat: [ methodParser match: string].