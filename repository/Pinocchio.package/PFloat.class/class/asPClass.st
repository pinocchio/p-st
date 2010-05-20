exporting
asPClass
	<preventExport>
	self = PFloat
		ifFalse: [ ^ super asPClass ].
	^ (PInternalClass newWith: self)
			customLayout: true