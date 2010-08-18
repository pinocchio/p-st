initialization
initializeExpression
	| vars expression |
	^ super initializeExpression
		semantics: [ :result | 
			vars := result first.
			expression := result at: 2.
			vars ifMatched: [ :variables |
				variables reverseDo: [ :variable | 
					expression := (ASTAssignmentExpression new)
						expression: expression;
						variable: variable ] ].
			expression ]