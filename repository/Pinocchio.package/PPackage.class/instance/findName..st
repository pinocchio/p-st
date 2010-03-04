accessing
findName: aName
	members at: aName ifPresent: [:value | ^ value ].
	(self packageName = aName) ifTrue: [ ^self ].
	^ parent findName: aName