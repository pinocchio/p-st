running
testStringEscapeDoubleTab
	| string result |
	result := visitor visit: (ASTString new string: String tab).
	dumper visit: result.
	dumper printString withBlanksTrimmed should
		=
			('Object ' , result constant uid , ' = (Optr)new_Type_String(L"\t");' , String cr , 'Object ' , result uid
				, ' = (Optr)new_Constant((Optr)' , result constant uid , ');')