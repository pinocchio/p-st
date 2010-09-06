accessing
findName: aName ifAbsent: block
	self shortName == aName ifTrue: [ ^ self ].
	self at: aName ifPresent: [ :value | ^ value ].
	^ block value