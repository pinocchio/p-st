exporting
asPClass
	<preventExport>
	self = PObject ifFalse: [ ^ super asPClass ].
	^ Object asPClass.