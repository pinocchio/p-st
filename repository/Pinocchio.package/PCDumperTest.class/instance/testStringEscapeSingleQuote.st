running
testStringEscapeSingleQuote
	| string result |
	result := visitor visit: (ASTString new string: '''').
	dumper visit: result.
	dumper printString withBlanksTrimmed should
		=
			('Object ' , result constant uid , ' = (Optr)new_Type_String(L"\''");' , String cr , 'Object ' , result uid
				, ' = (Optr)new_Constant((Optr)' , result constant uid , ');')