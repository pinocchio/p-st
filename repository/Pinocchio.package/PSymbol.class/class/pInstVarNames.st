pharo-exporting
pInstVarNames
	<preventExport>
	self == PSymbol ifFalse: [ ^ super pInstVarNames ].
	^ {}