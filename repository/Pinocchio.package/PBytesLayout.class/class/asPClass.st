exporting
asPClass
	<preventExport>
	self = PBytesLayout
		ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: self uid: 'BytesLayout'