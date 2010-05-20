pharo-exporting
asPClass
	<preventExport>
	self = PString
		ifFalse: [ ^ super asPClass ].
	^ (PInternalClass newWith: self)
			customLayout: true