tests
testRadix

	| parser string result |
	parser := scparser radix.
	string := '10r4'.
	result := parser parse: string.
	result class should = ASTNumber.
	result number should = '4'.
	result base should = '10'.
	
	string := '16r4F'.
	result := parser parse: string.
	result class should = ASTNumber.
	result number should = '4F'.
	result base should = '16'.
	
	string := '-16r4F'.
	result := parser parse: string.
	result class should = ASTNumber.
	result number should = '4F'.
	result base should = '-16'.
	
	string := '16r-4F'.
	result := parser parse: string.
	result class should = ASTNumber.
	result number should = '-4F'.
	result base should = '16'.
	
	string := '-16r-4F'.
	result := parser parse: string.
	result class should = ASTNumber.
	result number should = '-4F'.
	result base should = '-16'.