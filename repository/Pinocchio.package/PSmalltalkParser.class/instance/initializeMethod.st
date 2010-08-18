initialization
initializeMethod
	^ super initializeMethod
		semantics: [ :parts | 
			(ASTMethod new)
				message: parts first;
				annotations: (parts at: 2);
				temporaries: ((parts at: 3) resultIfFailed: [ Array new ]);
				statements: (parts at: 4)]