exporting
asPClass
	<preventExport>
	self = PObject ifFalse: [ ^ super asPClass ].
	^  PInternalClass newWith: self
		uid: 'Type_Object_Class'.