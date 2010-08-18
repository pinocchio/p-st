accessing
lookupIn: aCollection at: index
	| subPackage first |
	index > aCollection size
		ifTrue: [ ^ self ].
	subPackage := self at: (aCollection at: index) asSymbol.
	subPackage ifNil: [ ^ self flagUndefinedPath: aCollection at: index ].
	^ subPackage lookupIn: aCollection at: index + 1