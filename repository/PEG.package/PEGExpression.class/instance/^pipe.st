logical operations
| expression
	('New ordered expression: ', self printString, ' ', expression printString) stdout; cr.
	^ PEGOrderedChoiceExpression new <= self <= expression