exporting
asPClass
	<preventExport>
	self = PSlot
		ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: self