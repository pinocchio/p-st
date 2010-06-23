expression
injectMessageExpression
	^ self messageExpression <= (( self keywordExpression | self bracketIndexExpression | self binaryExpression ) <= self unaryExpression)