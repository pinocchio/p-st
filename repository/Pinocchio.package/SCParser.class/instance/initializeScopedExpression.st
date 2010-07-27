basic-block
initializeScopedExpression
	^ PEGParser
		named: 'SCOPED-EXPRESSION'
		parsing: (('(' asPEG omit) & self expression) <& (')' asPEG omit)
		semantics: [ :result | 
			result scoped.
			result ]