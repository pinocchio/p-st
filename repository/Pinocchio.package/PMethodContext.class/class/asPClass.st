exporting
asPClass
	<preventExport>
	self = PMethodContext
		ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: self