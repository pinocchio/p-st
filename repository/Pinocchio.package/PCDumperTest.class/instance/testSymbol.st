running
testSymbol
	| symbol result |
	symbol := ASTSymbol new symbol: 'notAnInternalSymbol:at:'.
	result := visitor visit: symbol.
	dumper visit: result.
	dumper printString withBlanksTrimmed should
		=
			('Object ' , result constant uid , ' = (Optr)new_Type_Symbol_cached(L"notAnInternalSymbol:at:");' , String cr
				, 'Object ' , result uid , ' = (Optr)new_Constant((Optr)' , result constant uid , ');')