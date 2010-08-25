accessing
findPackageName: aName
	self packageName = aName
		ifTrue: [ ^ self ].
	^ nil