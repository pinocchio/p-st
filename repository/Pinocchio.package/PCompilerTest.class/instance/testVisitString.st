running
testVisitString
	| string result |
	string := ASTString new string: 'My funky test string.'.
	result := visitor visit: string.
	result should beKindOf: PConstant.
	result constant should = 'My funky test string.'