expression
injectCascadedMessageExpression
	^ self cascadedMessageExpression
		<= (self messageExpression
			& (';' asPEG
				& (self keywordMessageExpression
					| self binaryMessageExpression
					<= self unaryMessageExpression)) plus)