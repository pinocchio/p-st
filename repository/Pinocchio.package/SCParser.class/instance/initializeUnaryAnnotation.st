annotations
initializeUnaryAnnotation
	^ PEGParser
		named: 'UNARY-ANNOTATION'
		parsing: self unarySelector
		semantics: [ :selector |
			ASTUnaryAnnotation new
				selector: selector.
		]