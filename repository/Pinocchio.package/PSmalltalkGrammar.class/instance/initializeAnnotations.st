annotations
initializeAnnotations
	^ PEGMultiParser
		named: 'ANNOTATIONS'
		parsing: ('<' asParser
					& (self keywordAnnotation | self unaryAnnotation)
					<& '>') times