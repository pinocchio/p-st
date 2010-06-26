matching
fullmatch: input
	| result |
	result := PEGStack new.
	(self match: input to: result) ifFalse: [ self parsingFailed ].
	input should be atEnd.
	result position should = 1.
	^ result pop