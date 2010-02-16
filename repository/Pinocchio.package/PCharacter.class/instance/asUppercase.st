converting
asUppercase
	"If the receiver is lowercase, answer its matching uppercase Character."
	"A tentative implementation.  Eventually this should consult the Unicode table."	

	| v |
	v := self charCode.
	(((97 <= v and: [v <= 122]) or: [224 <= v and: [v <= 246]]) or: [248 <= v and: [v <= 254]])
		ifTrue: [^ (0 - 32 + self asSmallInt) asCharacter ]
		ifFalse: [^ self]