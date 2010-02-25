accessing
lookUpIn: aCollection at: index
	| subPackage |
	index > aCollection size ifTrue: [ ^self ].
	subPackage := self at: (aCollection at: index).
	^ subPackage lookUpIn: aCollection at: index + 1
	
	