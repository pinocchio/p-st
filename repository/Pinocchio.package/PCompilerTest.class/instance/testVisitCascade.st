running
testVisitCascade
	| ast |
	parser := scparser cascadedMessageExpression.
	ast := self ast: 'true a: 2; b: 1 c: 1; a.'