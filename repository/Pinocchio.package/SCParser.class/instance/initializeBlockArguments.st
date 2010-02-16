block
initializeBlockArguments
	^ PEGParser
		named: 'BLOCK-ARGUMENTS'
		parsing: ((':' asPEG omit: true) & self identifier) plus
		semantics: [ :result |
			result collect: [ :variable | self createVariable: variable ]
		]