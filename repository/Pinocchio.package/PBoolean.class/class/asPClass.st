pharo-exporting
asPClass
	<preventExport>
	self = PBoolean ifFalse: [ ^ super asPClass ].
	^ Boolean asPClass.