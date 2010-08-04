accessing
locallyChangedClasses
	^ self gofer localChanges operations
		collect: [ :operation | operation targetClass ifNil: [ false ] ifNotNilDo: [ :cls | cls instanceSide ] ]