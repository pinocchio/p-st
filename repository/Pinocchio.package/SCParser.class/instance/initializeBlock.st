block
initializeBlock
	^ PEGParser
		named: 'BLOCK'
		
		parsing: (('[' asPEG omit: true)
					& (self blockArguments & self bar) optional
					<& self temporaries optional
					<& self statements
					<& (']' asPEG omit: true))

		semantics: [ :result |
			ASTBlock new
				parameters: ((result first) resultIfFailed: [ OrderedCollection new ]);
				temporaries: ((result at: 2) resultIfFailed: [ OrderedCollection new ]);
				statements: 	(result at: 3)
		]