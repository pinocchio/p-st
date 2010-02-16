method
createNonReturningMethodBodyFor: aMethod
	| statements |
	statements := aMethod statements.
	statements add: ASTSelf new.
	^ (self acceptOnCollection: statements) asPArray