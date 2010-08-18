initialization
initializeStatements
	^ super initializeStatements
		semantics: [ :result | 
			(result last)
				ifMatched: [ :exp | result at: (result size) put: exp ]
				ifFailed: [ result removeLast ].
			result asOrderedCollection ]