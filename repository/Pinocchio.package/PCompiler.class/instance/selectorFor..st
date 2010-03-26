visitor
selectorFor: aMethod
	aMethod annotations
		do: [ :s | s selectorSymbol = #renameExport: ifTrue: [ ^ s arguments first asSymbol ] ].
	^ self visit: aMethod message