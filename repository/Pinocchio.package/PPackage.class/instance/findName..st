accessing
findName: aName
	PFile stderr writeAll: 'Finding ', aName, ' in package ', self packageName; cr.
	members at: aName ifPresent: [:value | ^ value ].
	(self packageName = aName) ifTrue: [ ^self ].
	^ parent findName: aName