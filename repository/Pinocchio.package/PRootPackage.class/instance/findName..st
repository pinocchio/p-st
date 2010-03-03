accessing
findName: aName
	PFile stderr writeAll: 'Finding ', aName, ' in rootpackage'; cr.
	(self packageName = aName) ifTrue: [ PFile stderr writeAll: 'Found rootpackage'; cr. ^self ].
	members at: aName ifPresent: [:value | ^ value ].
	^ nil