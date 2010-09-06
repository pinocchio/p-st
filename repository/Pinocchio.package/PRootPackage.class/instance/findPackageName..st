accessing
findPackageName: aName
	self shortName == aName ifTrue: [ ^ self ].
	^ nil