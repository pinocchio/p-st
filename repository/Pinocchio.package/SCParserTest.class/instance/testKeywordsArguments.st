tests
testKeywordsArguments
	| parser string result |
	parser := scparser keywordsArguments.
	string := PEGStringScanner on: 'test: ab'.
	result := parser match: string.
	result class should = ASTKeywordMessageDefinition.
	result keywords should = (OrderedCollection with: 'test').
	result parameters size should = 1.
	result parameters first should = (ASTVariable new name: 'ab').
	string position should = 8.
	string := PEGStringScanner on: 'bla a'.
	(parser match: string) should be isNil.
	string position should = 0.
	string := PEGStringScanner on: 'test: d bla: c boe'.
	result := parser match: string.
	result class should = ASTKeywordMessageDefinition.
	result keywords should = (OrderedCollection with: 'test' with: 'bla').
	result parameters size should = 2.
	result parameters first should = (ASTVariable new name: 'd').
	result parameters second should = (ASTVariable new name: 'c').
	string position should = 15