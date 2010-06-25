block
initializeBlock
	^ PEGMultiParser
		named: 'BLOCK'
		parsing: (('[' asPEG omit: true)
				& (self blockArguments & self bar) optional)
				<& self temporaries optional
				<& self statements
				<& (']' asPEG omit: true)
		semantics: [ :result | 
			(ASTBlock new)
				parameters: (result first resultIfFailed: [ Array new ]);
				temporaries: ((result at: 2) resultIfFailed: [ Array new ]);
				statements: (result at: 3) ]