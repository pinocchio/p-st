expression
injectCascadedMessageExpression
	^ (self cascadedMessageExpression)
		<= (self messageExpression
			& ((';' asPEG omit)
			& ((self keywordMessageExpression
				| self binaryMessageExpression)
				<= self unaryMessageExpression)) plus);
		semantics: [ :parts | 
				(ASTMessageCascadeExpression new)
					receiver: parts first receiver;
					cascades: parts asArray ]