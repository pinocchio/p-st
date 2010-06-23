annotations
initializeKeywordAnnotation
	| keywords arguments |
	^ PEGParser
		named: 'KEYWORD-ANNOTATION'
		parsing: (self keyword & self primary) plus
		semantics: [ :parts | 
			keywords := Array new: parts size.
			arguments := Array new: parts size.
			parts withIndexDo: [ :p :i | 
				keywords at: i put: p first.
				arguments at: i put: p second ].
			(ASTKeywordAnnotation new)
				selector: (ASTKeywordSelector new keywords: keywords);
				arguments: arguments ]