initialization
initializeStringSegment
	^ super initializeStringSegment
		semantics: [ :result | result asString ]