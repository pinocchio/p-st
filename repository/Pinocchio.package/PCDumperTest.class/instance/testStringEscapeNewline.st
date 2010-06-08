running
testStringEscapeNewline
	| string result |
	result := visitor visit: (ASTString new string: String cr).
	dumper visit: result.
	dumper printString withBlanksTrimmed should
		=
			('Object ' , result constant uid , ' = (Optr)new_Type_String(L"\n");' , String cr , 'Object ' , result uid
				, ' = (Optr)new_Constant((Optr)' , result constant uid , ');')