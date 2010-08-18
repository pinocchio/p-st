initialization
initializeBinaryExpression
	^ super initializeBinaryExpression
		semantics: [ :parts | |result|
			result := parts first.
			2 to: parts size by: 2 do: [ :i |
				result := (ASTBinaryExpression new)
					receiver: result;
					selector: (ASTBinarySelector new selector: (self createSymbol: (parts at: i)));
					argument: (parts at: i + 1). ].
				result ]