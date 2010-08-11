parsing
parse: aString withParser: parser
	| input result |
	input := PEGStringScanner on: aString separator: self separator.
	result := parser match: input.
	input should be atEnd.
	^ result