accessing
lookUpIn: aCollection at: index
	| subPackage first |
	index > aCollection size ifTrue: [ ^self ].
	subPackage := self at: (aCollection at: index).
	subPackage ifNil: [
		first := aCollection removeFirst.
		self error: 'Unfound identifier: ', (aCollection inject: first into: [ :c :e | c, '.', e ]).  ].
	^ subPackage lookUpIn: aCollection at: index + 1
	
	