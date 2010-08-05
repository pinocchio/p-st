exporting
asPClass
	<preventExport>
	self = PWordsLayout
		ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: self