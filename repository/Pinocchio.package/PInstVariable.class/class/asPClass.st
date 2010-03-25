exporting
asPClass
	<preventExport>
	self = PInstVariable
		ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: self