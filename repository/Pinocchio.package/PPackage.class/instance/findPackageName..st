accessing
findPackageName: aName
	name = aName
		ifTrue: [ ^ self ].
	^ parent findPackageName: aName