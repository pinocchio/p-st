annotations
initializeAnnotations
	^ PEGMultiParser
		named: 'ANNOTATIONS'
		parsing: ('<' asPEG omit
					& (self keywordAnnotation | self unaryAnnotation)
					<& '>' asPEG omit) times