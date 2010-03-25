exporting
asPClass
	<preventExport>
	self = PContext
		ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: self