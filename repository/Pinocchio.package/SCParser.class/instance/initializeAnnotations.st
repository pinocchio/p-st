annotations
initializeAnnotations
	^ PEGMultiParser
		named: 'ANNOTATIONS'
		parsing: ((('<' asPEG omit: true)
			& (self keywordAnnotation | self unaryAnnotation))
			<& ('>' asPEG omit: true)) times
		semantics: [ :result | result ]