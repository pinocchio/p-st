accessing
findName: aName
	PFile stderr writeAll: 'Finding ', aName, ' in rootpackage'; cr.
	(self packageName = aName) ifTrue: [ ^self ].
	members at: aName ifPresent: [:value | ^ value ].
	^ nil