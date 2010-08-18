initialization
initializeKeywordExpression
	^ super initializeKeywordExpression
		semantics: [ :parts | (parts at: 2) receiver: parts first ]