visitor
selectorFor: aMethod was: selector
	<preventExport>
	aMethod annotations do: [ :s |
		s selector = #renameExport:
			ifTrue: [ ^ s at: 1 ]].
	^ selector