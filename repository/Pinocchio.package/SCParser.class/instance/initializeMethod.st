method
initializeMethod
	^ (PEGParser
		named: 'METHOD'
		parsing:
			(self messagePattern & self annotation times) <& self temporaries optional <& self statements <& self separator
		semantics:
			[ :parts | 
			(ASTMethod new)
				message: parts first;
				annotations: (parts at: 2);
				temporaries: ((parts at: 3) resultIfFailed: [ OrderedCollection new ]);
				statements: (parts at: 4);
				yourself ]) separator: self separator	" Allow comment/whitespace at the end of a method. "