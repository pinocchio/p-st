visitor
selectorFor: aMethod was: selector
	aMethod annotations do: [ :s |
		(s selector = #renameExport:)
			ifTrue: [ ^ s arguments first constant ]
	].
	^ selector