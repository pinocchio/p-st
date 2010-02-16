expression
injectMessageExpression
	^ self messageExpression
		<= (self keywordExpression | self binaryExpression <= self unaryExpression)