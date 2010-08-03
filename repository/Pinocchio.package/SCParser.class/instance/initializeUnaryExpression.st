expression
initializeUnaryExpression
	^ PEGMultiMemo
		named: 'UNARY-EXPRESSION'
		parsing: self primary & self unarySelector plus
		semantics: [ :parts | |result|
			result := parts first.
			2 to: parts size do: [ :i | 
					result := (ASTUnaryExpression new)
						receiver: result;
						selector: (parts at: i) ].
			result ]