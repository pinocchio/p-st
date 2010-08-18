annotations
initializeKeywordAnnotation
	^ PEGMultiParser
		named: 'KEYWORD-ANNOTATION'
		parsing: (self keyword & self primary) plus