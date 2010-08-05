parsing
parseMethod: aString
	| input result |
	input := PEGStringScanner on: aString separator: self separator.
	result := self method match: input.
	input should be atEnd.
	^ result