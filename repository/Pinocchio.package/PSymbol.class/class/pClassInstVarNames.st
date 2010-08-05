pharo-exporting
pClassInstVarNames
	<preventExport>
	self == PSymbol ifFalse: [ ^ super pInstVarNames ].
	^ {}