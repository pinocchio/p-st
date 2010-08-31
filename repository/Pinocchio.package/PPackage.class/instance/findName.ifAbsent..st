accessing
findName: aName ifAbsent: block
	self at: aName ifPresent: [ :value | ^ value ].
	name = aName
		ifTrue: [ ^ self ].
	^ parent findName: aName ifAbsent: block