tests
testCascadedMessageExpression
	| parser string result expression |
	parser := scparser cascadedMessageExpression.
	string := PEGStringScanner on: '2+4; x: 3 b; d: 3 c: 4; x '.
	result := parser match: string.
	result class should = ASTMessageCascadeExpression.
	result receiver class should = ASTNumber.
	result cascades size should = 4.
	expression := result cascades at: 1.
	expression class should = ASTBinaryExpression.
	expression := result cascades at: 2.
	expression class should = ASTMessageExpression.
	expression := result cascades at: 3.
	expression class should = ASTMessageExpression.
	expression := result cascades at: 4.
	expression class should = ASTUnaryExpression