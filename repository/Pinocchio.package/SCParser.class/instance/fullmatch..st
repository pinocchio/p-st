parsing
fullmatch: aString
	| input result |
	input := PEGStringScanner on: aString separator: self separator.
	result := (self method match: input) ifNil: [ self parsingFailed ].
	input should be atEnd.
	^ result