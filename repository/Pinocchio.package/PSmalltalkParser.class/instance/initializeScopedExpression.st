initialization
initializeScopedExpression
	^ super initializeScopedExpression
		semantics: [ :result | 
			result scoped.
			result ]