pharo-exporting
asPClass
	<preventExport>
	self = PMetaclass ifFalse: [ ^ super asPClass ].
	^ Metaclass  asPClass.