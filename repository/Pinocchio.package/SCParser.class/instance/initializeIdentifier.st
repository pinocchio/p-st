variable
initializeIdentifier
	^ PEGMultiParser
		named: 'IDENTIFIER'
		parsing: self identifierBody
		semantics: [ :result | result asString ]