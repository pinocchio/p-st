initialization
initializeNumber
	^ super initializeNumber
		semantics: [ :result | 
			(ASTNumber new)
				number: result;
				base: '10' ]