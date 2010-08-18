tests
testArray
	| parser string result |
	parser := scparser array.
	string := PEGStringScanner on: '()'.
	result := parser match: string.
	result class should = ASTArray.
	result literals asArray should = Array new.
	string := PEGStringScanner on: '(1 a #a ''b'' (4)))'.
	result := parser match: string.
	result class should = ASTArray.
	result literals size should = 5.
	result literals first class should = ASTNumber.
	result literals first number should = '1'.
	(result literals at: 2) class should = ASTSymbol.
	(result literals at: 2) symbol should = 'a'.
	(result literals at: 3) class should = ASTSymbol.
	(result literals at: 3) symbol should = 'a'.
	(result literals at: 4) class should = ASTString.
	(result literals at: 4) string should = 'b'.
	(result literals at: 5) class should = ASTArray