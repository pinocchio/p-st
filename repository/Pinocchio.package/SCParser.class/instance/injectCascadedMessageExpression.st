expression
injectCascadedMessageExpression
	^ self cascadedMessageExpression
		<= (self messageExpression &
			((';' asPEG omit: true) & 
				((self keywordMessageExpression
					| self binaryMessageExpression)
					<= self unaryMessageExpression)) plus);
					
		semantics: [:parts |
			(parts at: 2) addFirst: parts first.
			ASTMessageCascadeExpression new
				receiver: (parts first) receiver;
				cascades: (parts at: 2)
		]