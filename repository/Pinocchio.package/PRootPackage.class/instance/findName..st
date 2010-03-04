accessing
findName: aName
	(self packageName = aName) ifTrue: [ ^self ].
	members at: aName ifPresent: [:value | ^ value ].
	^ nil