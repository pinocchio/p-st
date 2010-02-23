as yet unclassified
locallyChangedClasses
	^ self gofer localChanges operations collect: [ :operation|
		operation targetClass instanceSide
	].