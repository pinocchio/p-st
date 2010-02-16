pharo-exporting
asPClass
	<preventExport>
	self = PClass ifFalse: [ ^ super asPClass ].
	^ Class asPClass.