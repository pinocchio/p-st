visitor
visitMessageCascadeExpression: anASTMessageCascadeExpression 
	"TODO: Maybe optimize by adding a tmp to the current block"
	| receiver block send |
	receiver := ASTVariable new name: 'receiver'.
	anASTMessageCascadeExpression cascades do: [ :message |
			message receiver: receiver.
	].
	block := ASTBlock new
		parameters: (OrderedCollection with: receiver);
		statements: anASTMessageCascadeExpression cascades.
	
	send := ASTMessageExpression new
			receiver: block;
			arguments: (OrderedCollection with: anASTMessageCascadeExpression receiver);
			selector: (ASTKeywordSelector new
							keywords: (OrderedCollection with: #value)).
	^ self visit: send.