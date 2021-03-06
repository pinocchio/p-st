initialization
initializeUnaryExpression
	^ super initializeUnaryExpression
		semantics: [ :parts | |result|
			result := parts first.
			2 to: parts size do: [ :i | 
					result := (ASTUnaryExpression new)
						receiver: result;
						selector: (parts at: i) ].
			result ]