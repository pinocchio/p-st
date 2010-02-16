running
testStringEscapeSingleQuote
	| string result |
	result := visitor visit: (ASTString new string: '''').
	dumper visit: result.
	dumper printString withBlanksTrimmed should = ('Object ' , result constant uid , ' = (Object)new_Type_String(L"\''");' , String cr , 
		'Object ' , result uid , ' = (Object)new_AST_Constant((Object)' , result constant uid , ');')