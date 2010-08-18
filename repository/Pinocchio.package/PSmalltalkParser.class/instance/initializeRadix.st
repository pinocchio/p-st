initialization
initializeRadix
	^ super initializeRadix
		semantics: [ :result | 
			(ASTNumber new)
				base: result first;
				number: result second ]