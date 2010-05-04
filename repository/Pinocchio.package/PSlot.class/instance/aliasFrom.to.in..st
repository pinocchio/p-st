aliasing
aliasFrom: anObject to: anotherObject in: aContext
	| value alias |
	value := self readFrom: anObject.
	alias := value asAllocationAlias: aContext.
	^ self assign: alias on: anotherObject.