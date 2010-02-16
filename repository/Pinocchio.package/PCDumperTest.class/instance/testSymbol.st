running
testSymbol
	| symbol result |
	symbol := ASTSymbol new symbol: 'notAnInternalSymbol:at:'.
	result := visitor visit: symbol.
	dumper visit: result.
	dumper printString withBlanksTrimmed should = ('Object ' , result constant uid , ' = (Object)new_Type_Symbol_cached(L"notAnInternalSymbol:at:");' , String cr , 
		'Object ' , result uid , ' = (Object)new_AST_Constant((Object)' , result constant uid , ');')