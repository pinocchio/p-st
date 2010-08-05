method
initializeMethod
	^ (PEGMultiParser
		named: 'METHOD'
		parsing: (self messagePattern
			& self annotations
			<& self temporaries optional
			<& self statements
			<& self separator) end
		semantics: [ :parts | 
			(ASTMethod new)
				message: parts first;
				annotations: (parts at: 2);
				temporaries: ((parts at: 3) resultIfFailed: [ Array new ]);
				statements: (parts at: 4);
				yourself ]) separator: self separator	" Allow comment/whitespace at the end of a method. "