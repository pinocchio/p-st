exporting
asPClass
	<preventExport>
	self = PInlineCache
		ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: self