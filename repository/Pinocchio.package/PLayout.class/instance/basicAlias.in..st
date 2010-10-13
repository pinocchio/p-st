aliasing
basicAlias: anObject in: aContext
	^ PAllocationAlias new
		value: anObject;
		context: aContext