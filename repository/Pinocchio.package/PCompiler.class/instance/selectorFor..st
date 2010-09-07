scope
selectorFor: aMethod
	<preventExport>
	aMethod annotations
		do: [ :s | s selector == #renameExport: ifTrue: [ ^ s arguments first asSymbol ] ].
	^ self visit: aMethod message