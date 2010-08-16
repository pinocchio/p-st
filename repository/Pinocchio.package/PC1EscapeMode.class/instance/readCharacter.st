handling
readCharacter
	| character |
	character := readline readCharacter.
	character = $[ ifTrue: [ ^ csi readCharacter ].
	character = $O ifTrue: [ ^ ss3 readCharacter ].
	self accept: character
	