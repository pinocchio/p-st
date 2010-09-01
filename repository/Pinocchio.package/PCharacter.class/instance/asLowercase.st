converting
asLowercase
	"If the receiver is uppercase, answer its matching lowercase Character."
	"A tentative implementation.  Eventually this should consult the Unicode table."

	| v |
	v := self charCode.
	(((65 <= v and: [v <= 90]) or: [192 <= v and: [v <= 214]]) or: [216 <= v and: [v <= 222]])
		ifTrue: [ ^ (32 + self asSmallInt) asCharacter ]
		ifFalse: [^ self]