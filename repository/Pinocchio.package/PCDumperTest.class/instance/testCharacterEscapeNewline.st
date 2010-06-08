running
testCharacterEscapeNewline
	| character result |
	character := ASTCharacter new char: Character lf.
	result := visitor visit: character.
	dumper visit: result.
	dumper printString withBlanksTrimmed should
		=
			('Object ' , result constant uid , ' = (Optr)new_Type_Character(L''\n'');' , String cr , 'Object ' , result uid
				, ' = (Optr)new_Constant((Optr)' , result constant uid , ');')