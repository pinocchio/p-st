annotations
initializeAnnotation
	^ PEGParser
		named: 'ANNOTATION'
		parsing: ('<' asPEG omit: true) & (self keywordAnnotation | self unaryAnnotation) <& ('>' asPEG omit: true)