expression
initializeBinaryExpression
	self preStoreBinaryObjectDescription.
	parsers at: #binaryExpression ifAbsentPut:
			(PEGMultiParser
				named: 'BINARY-EXPRESSION'
				parsing: (self unaryObjectDescription & self binarySelector) plus & self unaryObjectDescription
				semantics: [ :parts | |result|
					result := parts first.
					2 to: parts size by: 2 do: [ :i |
						result := (ASTBinaryExpression new)
							receiver: result;
							selector: (ASTBinarySelector new selector: (self createSymbol: (parts at: i)));
							argument: (parts at: i + 1). ].
					result ]).
	self injectBinaryObjectDescription.
	^ self binaryExpression