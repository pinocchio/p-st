expression
initializeKeywordExpression
	^ PEGMultiParser
		named: 'KEYWORD-EXPRESSION'
		parsing: self binaryObjectDescription & (self keywordMessageExpression)
		semantics: [ :parts | (parts at: 2) receiver: parts first ]
	"^ PEGMultiParser
		named: 'KEYWORD-EXPRESSION'
		parsing: self binaryObjectDescription & (self keywordMessageExpression | self bracketIndexExpression)
		semantics: [ :parts | (parts at: 2) receiver: parts first ]"