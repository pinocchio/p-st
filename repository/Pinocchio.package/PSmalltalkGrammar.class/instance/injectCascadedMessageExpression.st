expression
injectCascadedMessageExpression
	^ self cascadedMessageExpression
		<= (self messageExpression
			& (';' asParser
				& (self keywordMessageExpression
					| self binaryMessageExpression
					<= self unaryMessageExpression)) plus)