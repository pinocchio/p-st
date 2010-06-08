running
testVisit
	| symbol result |
	symbol := ASTSymbol new symbol: 'at:put:'.
	result := visitor visit: symbol.
	dumper visit: result.
	dumper printString withBlanksTrimmed should
		= ('Object ' , result uid , ' = (Optr)new_Constant((Optr)SMB_at_put_);').
	dumper visit: result.
	dumper printString withBlanksTrimmed should
		= ('Object ' , result uid , ' = (Optr)new_Constant((Optr)SMB_at_put_);')