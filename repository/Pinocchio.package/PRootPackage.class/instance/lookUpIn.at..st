accessing
lookUpIn: aCollection at: index
	| subPackage first |
	index > aCollection size
		ifTrue: [ ^ self ].
	subPackage := self at: (aCollection at: index) asSymbol.
	subPackage ifNil: [ self error: 'Identifier not found: ' , ('.' join: aCollection) ].
	^ subPackage lookUpIn: aCollection at: index + 1