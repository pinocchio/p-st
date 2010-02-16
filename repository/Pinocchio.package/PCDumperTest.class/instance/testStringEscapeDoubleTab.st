running
testStringEscapeDoubleTab
	| string result |
	result := visitor visit: (ASTString new string: String tab).
	dumper visit: result.
	dumper printString withBlanksTrimmed should = ('Object ' , result constant uid , ' = (Object)new_Type_String(L"\t");' , String cr , 
		'Object ' , result uid , ' = (Object)new_AST_Constant((Object)' , result constant uid , ');')