annotations
initializeAnnotation
	^ (('<' asPEG omit: true) & (self keywordAnnotation | self unaryAnnotation)) <& ('>' asPEG omit: true) name: 'ANNOTATION'