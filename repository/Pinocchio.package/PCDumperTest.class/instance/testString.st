running
testString
	| string result |
	string := ASTString new string: 'abc'.
	result := visitor visit: string.
	dumper visit: result.
	dumper printString withBlanksTrimmed should = ('Object ' , result constant uid , ' = (Object)new_Type_String(L"abc");' , String cr , 
			'Object ' , result uid , ' = (Object)new_AST_Constant((Object)' , result constant uid , ');')