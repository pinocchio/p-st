aliasing
aliasChildrenFrom: anObject to: anotherObject in: aContext
	self do: [ :instVariable |
		instVariable aliasFrom: anObject to: anotherObject in: aContext
	]