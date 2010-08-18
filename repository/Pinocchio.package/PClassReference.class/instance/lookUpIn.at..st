accessing
lookupIn: aCollection at: index
	index > aCollection size
		ifFalse: [ ^ PNestedClassException new
							path: aCollection;
							index: index;
							signal ]
	"^ self."