annotations
initializeKeywordAnnotation
	^ PEGParser
		named: 'KEYWORD-ANNOTATION'
		parsing: (self keyword & self primary) plus
		semantics: [ :result |
			ASTKeywordAnnotation new
				selector: (ASTKeywordSelector new keywords: (result collect: #first));
				arguments: (result collect: #second)
		]