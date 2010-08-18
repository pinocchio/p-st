initialization
initializeStatements
	^ super initializeStatements
		semantics: [ :result | 
			result removeLast ifMatched: [ :exp | result add: exp ].
			result asOrderedCollection ]