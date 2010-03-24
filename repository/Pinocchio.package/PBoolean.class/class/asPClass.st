pharo-exporting
asPClass
	<preventExport>
	self = PBoolean ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: self