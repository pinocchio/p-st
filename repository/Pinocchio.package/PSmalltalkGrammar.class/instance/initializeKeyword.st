selector
initializeKeyword
	^ PEGMultiParser
		named: 'KEYWORD'
		parsing: self identifierBody && (':' asParser consume)