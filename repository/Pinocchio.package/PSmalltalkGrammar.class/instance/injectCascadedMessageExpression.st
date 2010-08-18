expression
injectCascadedMessageExpression
	^ self cascadedMessageExpression
		<= (self messageExpression
			& (';' asPEG omit
				& (self keywordMessageExpression
					| self binaryMessageExpression
					<= self unaryMessageExpression)) plus)