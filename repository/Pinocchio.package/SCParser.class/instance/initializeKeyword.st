selector
initializeKeyword
	^ PEGMultiParser
		named: 'KEYWORD'
		parsing: self identifierBody && ':'
		semantics: [ :result | result asString ]