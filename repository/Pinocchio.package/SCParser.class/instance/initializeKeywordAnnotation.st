annotations
initializeKeywordAnnotation
	^ PEGParser
		named: 'KEYWORD-ANNOTATION'
		parsing: (self keyword & self primary) plus
		semantics: [ :result |
			ASTKeywordAnnotation new
				keywords: (result collect: [ :each| ASTSymbol named: each first ]);
				selector: (ASTKeywordSelector new keywords: (result collect: #first));
				arguments: (result collect: #second)
		]