visitor
visitSuper: aPinocchioSuper
	| message |
	message := aPinocchioSuper message asPObject.
	self visit: message.
	self visitCollection: aPinocchioSuper arguments.
	self
		put: aPinocchioSuper
		with: 'new_AST_Super((Object)' , message uid , ', ' , (self multiArgFor: aPinocchioSuper arguments) , ')'