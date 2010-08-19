annotations
initializeAnnotations
	^ PEGMultiParser
		named: 'ANNOTATIONS'
		parsing: ('<' asPEG
					& (self keywordAnnotation | self unaryAnnotation)
					<& '>') times