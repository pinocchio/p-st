exporting
asPClass
	<preventExport>
	self = PObjectLayout
		ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: self