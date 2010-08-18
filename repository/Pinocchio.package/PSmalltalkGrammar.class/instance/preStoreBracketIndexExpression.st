expression
preStoreBracketIndexExpression
	^ parsers at: #bracketIndexExpression ifAbsentPut: [ PEGParser named: 'BRACKET-INDEX-EXPRESSION' ]