convenience
createMethodSourceCommentFor: aPMethod 
	| method sclass source |
	sclass := self currentClass methodProvider.
	method := sclass lookupSelector: aPMethod selector asSymbol.
	stream nextPutAll: '//';
			nextPutAll: method getCCommentEscapedSource.
	stream cr.