running
testCharacterEscapeNewline
	| character result |
	character := ASTCharacter new char: Character cr.
	result := visitor visit: character.
	dumper visit: result.
	dumper printString withBlanksTrimmed should = ('Object ' , result constant uid , ' = (Object)new_Type_Character(L''\n'');' , String cr , 'Object ' , result uid , ' = (Object)new_AST_Constant((Object)' , result constant uid , ');')