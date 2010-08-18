initialization
initializeKeywordAnnotation
	| halfsize keywords arguments |
	^ super initializeKeywordAnnotation
		semantics: [ :parts |
			halfsize := parts size // 2.
			keywords := Array new: halfsize.
			arguments := Array new: halfsize.
			1 to: halfsize do: [ :i | 
				keywords at: i put: (parts at: i * 2 - 1).
				arguments at: i put: (parts at: i * 2) ].
			(ASTKeywordAnnotation new)
				selector: (ASTKeywordSelector new keywords: keywords);
				arguments: arguments ]