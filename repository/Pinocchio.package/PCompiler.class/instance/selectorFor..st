visitor
selectorFor: aMethod
	aMethod annotations do: [ :s |
		(s selectorName = #renameExport:)
			ifTrue: [ ^ s arguments first asSymbol asPObject ]
	].
	^ self visit: aMethod message