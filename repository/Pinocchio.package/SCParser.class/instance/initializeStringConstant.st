literal
initializeStringConstant
	^ PEGParser
		named: 'STRING-CONSTANT'
		parsing: self string
		semantics: [:result |
			ASTString new string: result
		]