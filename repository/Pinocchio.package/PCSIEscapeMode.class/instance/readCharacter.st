as yet unclassified
readCharacter
	| character memo |
	
	character := readline readCharacter.
	($0 <= character and: [ character <= $9 ]) ifTrue: [
		memo := character asInteger - $0 asInteger.
		[ character := readline readCharacter.
			$0 <= character and: [ character <= $9 ]] whileTrue: [
			memo := memo * 10 + (character asInteger - $0 asInteger) ].
		^ character = $~
			ifTrue: [ self accept: memo ]
			ifFalse: [ character asInteger inputError ]].
	
	self accept: character