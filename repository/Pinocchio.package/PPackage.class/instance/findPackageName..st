accessing
findPackageName: aName
	self packageName = aName
		ifTrue: [ ^ self ].
	^ parent findPackageName: aName