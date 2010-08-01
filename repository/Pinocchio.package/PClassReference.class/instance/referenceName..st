accessing
referenceName: anObject
	"self haltIf: anObject = #Object.
	self haltIf: anObject = 'Object'.
	self haltIf: anObject asString = 'Object'."
	referenceName := anObject asSymbol