pharo-exporting
asPClass
	<preventExport>
	self = PBoolean ifFalse: [ ^ super asPClass ].
	^ PInternalClass newWith: self
		uid: 'Type_Boolean_Class'.