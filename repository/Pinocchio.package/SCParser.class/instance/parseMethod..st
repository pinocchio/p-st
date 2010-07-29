parsing
parseMethod: aString
	| input |
	input := PEGStringScanner on: aString separator: self separator.
	^ (self method match: input)