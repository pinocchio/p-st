parsing
fullmatch: aString withParser: parser
	| input result |
	input := PEGStringScanner on: aString separator: self separator.
	result := (parser match: input) ifNil: [ self parsingFailed ].
	input should be atEnd.
	^ result	
	