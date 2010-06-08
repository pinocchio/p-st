running
testString
	| string result |
	string := ASTString new string: 'abc'.
	result := visitor visit: string.
	dumper visit: result.
	dumper printString withBlanksTrimmed should
		=
			('Object ' , result constant uid , ' = (Optr)new_Type_String(L"abc");' , String cr , 'Object ' , result uid
				, ' = (Optr)new_Constant((Optr)' , result constant uid , ');')