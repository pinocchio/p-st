exporting
asPClass
	<preventExport>
	self = PUIntSlot
		ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: self