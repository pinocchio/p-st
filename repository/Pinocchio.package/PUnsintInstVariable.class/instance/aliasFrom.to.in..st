aliasing
aliasFrom: anObject to: anotherObject in: aContext
	^ self assign: (self readFrom: anObject) on: anotherObject