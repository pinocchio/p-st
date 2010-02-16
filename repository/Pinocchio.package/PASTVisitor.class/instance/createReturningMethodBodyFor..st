method
createReturningMethodBodyFor: aMethod
	| body callec |
	"TODO copy here?"
	body := aMethod statements.
	body last isReturnExpression ifFalse: [
		body add: ASTSelf new.
	] ifTrue: [
		body at: body size put: body last expression.
		body hasReturnExpression ifFalse: [
			^ (self acceptOnCollection: body) asPArray
		]
	].
	
	"Now wrap all in a callec"
	callec := PSend new
			receiver: (PInternalVariable named: 'AST_Callec_Reference');
			message: #on: asPSymbol;
			arguments: (self createCallecBodyFor: aMethod) asPArray.
	
	^  callec asPArray.