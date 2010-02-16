accessing
lookUpIn: aCollection at: index
	| subPackage |
	index = aCollection size ifTrue: [
		^ self at: (aCollection at: index).
	].
	subPackage := self at: (aCollection at: index).
	^ subPackage lookUpIn: aCollection at: index + 1
	
	