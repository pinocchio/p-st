expression
preStoreCascadedMessageExpression
	^ super preStoreCascadedMessageExpression
		semantics: [ :parts | 
				(ASTMessageCascadeExpression new)
					receiver: parts first receiver;
					cascades: parts asArray ]