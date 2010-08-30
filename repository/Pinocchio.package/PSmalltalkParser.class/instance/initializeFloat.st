initialization
initializeFloat
	^ super initializeFloat
		semantics: [ :result | 
			ASTFloat new
				high: result removeFirst;
				low: result asString ].