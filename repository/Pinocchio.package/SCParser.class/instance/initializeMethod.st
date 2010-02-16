method
initializeMethod
	^ (PEGParser
		named: 'METHOD'
		parsing: self messagePattern
					& self temporaries optional
					<& self annotation times
					<& self statements
					<& self separator " Allow comment/whitespace at the end of a method. "
		semantics: [ :parts |
			ASTMethod new
				message:	(parts first);
				temporaries:	((parts at: 2) resultIfFailed: [ OrderedCollection new ]);
				annotations:	(parts at: 3);
				statements:	(parts at: 4);
				yourself

		]) separator: (self separator)