initialization
initializeFloat
	^ super initializeFloat
		semantics: [ :result | 
			(ASTFloat new)
				number: result ].