basic-block
initializeScopedExpression
	^ PEGParser
			named: 'SCOPED-EXPRESSION'
			parsing: (('(' asPEG omit: true) & self expression <& (')' asPEG omit: true))
			semantics: [ :result | result scoped. result ]