visitor
selectorFor: aMethod
	aMethod annotations do: [ :s |
		(s selectorName = #renameExport:)
			ifTrue: [ ^ s arguments first asPSymbol ]
	].
	^ self visit: aMethod message